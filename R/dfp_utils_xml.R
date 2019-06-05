#' Build XML Request Body
#' 
#' Parse data into XML format
#' 
#' @importFrom XML newXMLNode xmlValue<-
#' @param list a \code{list} of data to fill the XML body
#' @param root_name a character string to be put in the 
#' topmost level of the created XML hierarchy
#' @param root a XML node to be placed as root 
#' in the returned XML document
#' @param version a character string indicating the version of the DFP API 
#' that is to be used in the SOAP request
#' @return a XML document
#' @note This function is meant to be used internally. Only use when debugging.
#' @keywords internal
#' @export
build_xml_from_list <- function(list, root_name=NULL, 
                                root=NULL, version=getOption("rdfp.version")){

  if (is.null(root))
    root <- newXMLNode(root_name, 
                       namespaceDefinitions = 
                         c(paste0("https://www.google.com/apis/ads/publisher/", 
                                  version)))
  
  if(length(list)>0){

    for (i in 1:length(list)){
      
      if('.attrs' %in% names(list[[i]])){
        incl_type <- list[[i]][['.attrs']]
        names(incl_type) <- 'xsi:type'
        list[[i]][['.attrs']] <- NULL
      } else if (grepl('[a-zA-Z]+Action$|^action$', names(list)[i])) {
        incl_type <- list[[i]]
        names(incl_type) <- 'xsi:type'
        list[[i]] <- ''
      } else {
        incl_type <- NULL
      }
      
      if (typeof(list[[i]]) == "list") {
        this <- newXMLNode(names(list)[i], 
                           attrs=incl_type, 
                           parent=root,
                           suppressNamespaceWarning=T)
        build_xml_from_list(list=list[[i]], root=this)
      }
      else {
        if (!is.null(list[[i]])){
          this <- newXMLNode(names(list)[i], 
                             attrs=incl_type, 
                             parent=root,
                             suppressNamespaceWarning=T)
          xmlValue(this) <- list[[i]]
        }
      }
    }
  }
  
  return(root)
}


#' Format SOAP Request Body
#' 
#' Receive data for a service and build the Body of text 
#' to include in a SOAP request.
#' 
#' @importFrom plyr alply
#' @importFrom methods as
#' @param service a character string matching one of the API
#' services
#' @param root_name a character string to be put in the 
#' topmost level of the created XML hierarchy
#' @param data a \code{list} or \code{data.frame} to create
#' XML in the request
#' @return a character string of XML with service name
#' as an attribute
#' @note This function is meant to be used internally. Only use when debugging.
#' @keywords internal
#' @export
form_request_body <- function(service, root_name, data=NULL){

  if(!is.null(data)){
    if(is.data.frame(data)){
      data <- alply(data, 1, function(x){as.list(data.frame(x))})
      attributes(data) <- NULL
    } else if(!is.list(data)){
      stop('data must be a list or data.frame')
    }
  }
  
  if (grepl('^create|^update', root_name)){
    record_names <- gsub('CustomTargeting', '', gsub('create|update', '', root_name))
    names(data) <- rep(gsub("(^[[:alpha:]])", "\\L\\1", record_names, perl=TRUE), length(data))
  }
  if (root_name=='getCustomFieldOption'){
    data <- as.list(data.frame(data))
    names(data) <- rep('customFieldOptionId', length(data))
  }
  
  xml_body <- build_xml_from_list(data, root_name=root_name)
  request_body <- as(xml_body, 'character')
  attributes(request_body) <- list('service'=service)
  
  return(request_body)
}

#' Parse SOAP Response Body
#' 
#' Parse the returned XML in the SOAP Response Body.
#' 
#' @importFrom readr type_convert cols
#' @importFrom httr content
#' @importFrom purrr map
#' @importFrom dplyr as_tibble
#' @importFrom data.table rbindlist
#' @importFrom XML xmlToList
#' @importFrom xml2 xml_ns_strip xml_find_all xml_find_first xml_length
#' @param httr_response an httr response from a POST to the API
#' @param resp_element character; the name of the response body element
#' @param as_df logical; indicating whether the results should be a list or data.frame
#' @return a \code{list} or \code{data.frame}
#' @note This function is meant to be used internally. Only use when debugging.
#' @keywords internal
#' @export
parse_soap_response <- function(httr_response, resp_element, as_df){
  
  httr_response_parsed <- content(httr_response, as="parsed", encoding="UTF-8")
  xml_parsed <- httr_response_parsed %>%
    xml_ns_strip() %>%
    xml_find_first(sprintf(".//%s", resp_element)) %>%
    xml_find_all(".//rval")
  
  if(length(xml_parsed) > 1){
    # we have multiple rvals proceed as you normally would
  } else {
    if((xml_length(xml_find_first(xml_parsed, ".//totalResultSetSize"), only_elements = FALSE) == 1) & 
       (xml_length(xml_find_first(xml_parsed, ".//startIndex"), only_elements = FALSE) == 1)){
      xml_parsed <- xml_parsed %>% 
        xml_find_all(".//results")
    }
  }

  if (as_df){
    result <- xml_parsed %>%
      map(xml_nodeset_to_df) %>% 
      rbindlist(use.names=TRUE, fill=TRUE, idcol=NULL) %>%
      as_tibble(.name_repair = "minimal") %>%
      type_convert(col_types = cols())
  } else {
    # we must use XML because character elements are not automatically unboxed
    # see https://github.com/r-lib/xml2/issues/215
    result <- xml_parsed %>%
      map(.f=function(x){
        xmlToList(xmlParse(as(object=x, Class="character")))
      })
    if(is.list(result) & length(result) == 1){
      result <- result[[1]]
    }
  }
  return(result)
}


#' xmlToList2
#' 
#' This function is an early and simple approach to converting an 
#' XML node or document into a more typical R list containing the data values. 
#' It differs from xmlToList by not including attributes at all in the output.
#' 
#' @importFrom XML xmlApply xmlSApply xmlValue xmlAttrs xmlParse xmlSize xmlRoot
#' @param node the XML node or document to be converted to an R list
#' @return \code{list} parsed from the supplied node
#' @note This function is meant to be used internally. Only use when debugging.
#' @keywords internal
#' @export
xmlToList2 <- function(node){
  if (is.character(node)) {
    node <- xmlParse(node)
  }
  if (inherits(node, "XMLAbstractDocument")) {
    node <- xmlRoot(node)
  }
  if (any(inherits(node, c("XMLTextNode", "XMLInternalTextNode")))) {
    xmlValue(node)
  } else if (xmlSize(node) == 0) {
    xmlAttrs(node)
  } else {
    if (is.list(node)) {
      tmp = vals = xmlSApply(node, xmlToList2)
      tt = xmlSApply(node, inherits, c("XMLTextNode", "XMLInternalTextNode"))
    }
    else {
      tmp = vals = xmlApply(node, xmlToList2)
      tt = xmlSApply(node, inherits, c("XMLTextNode", "XMLInternalTextNode"))
    }
    vals[tt] = lapply(vals[tt], function(x) x[[1]])
    if (any(tt) && length(vals) == 1) {
      vals[[1]]
    } else {
      vals
    }
  }
}

#' xml_nodeset_to_df
#' 
#' A function specifically for parsing an XML node into a \code{data.frame}
#' 
#' @importFrom dplyr as_tibble
#' @importFrom purrr modify_if
#' @importFrom utils capture.output
#' @param this_node \code{xml_node}; to be parsed out
#' @return \code{data.frame} parsed from the supplied xml
#' @note This function is meant to be used internally. Only use when debugging.
#' @keywords internal
#' @export
xml_nodeset_to_df <- function(this_node){
  # capture any xmlToList grumblings about Namespace prefix
  invisible(capture.output(node_vals <- xmlToList2(as.character(this_node))))
  # replace any NULL list elements with NA so it can be turned into a tbl_df
  node_vals[sapply(node_vals, is.null)] <- NA
  # make things tidy so if it's a nested list then that is one row still
  # suppressWarning about tibble::enframe
  suppressWarnings(res <- as_tibble(modify_if(node_vals, ~(length(.x) > 1 | is.list(.x)), list), 
                                    .name_repair = "minimal"))
  return(res)
}
