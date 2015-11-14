#' Transmit and Receive API SOAP Calls
#' 
#' Pull together SOAP Header and Body and 
#' make call to the appropriate API service, then 
#' parse the response.
#' 
#' @importFrom XML xmlTreeParse xmlToList xmlChildren xmlRoot
#' @importFrom httr POST content
#' @include dfp_auth.R
#' @param body a character string of XML with service name
#' as an attribute
#' @param service a character string matching one of the API
#' services
#' @param network_code a character string matching the code 
#' associated with the ad serving network
#' @param application_name a character string naming your
#' application so that it can be identified in API calls
#' @return a XML document if no error was returned
#' 
#' @keywords internal
build_soap_request <- function(body, service = NULL,
                               network_code=getOption("rdfp.network_code"), 
                               application_name=getOption("rdfp.application_name")){
  
  if (is.null(service)){
    service <- attributes(body)$service
  }

  header <- paste0('<?xml version="1.0" encoding="UTF-8"?>
                     <soapenv:Envelope 
                       xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
                       xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
                       <soapenv:Header>
                         <ns1:RequestHeader
                           soapenv:actor="http://schemas.xmlsoap.org/soap/actor/next"
                           soapenv:mustUnderstand="0"
                           xmlns:ns1="https://www.google.com/apis/ads/publisher/v201508">
                             <ns1:networkCode>', network_code, '</ns1:networkCode>
                             <ns1:applicationName>', application_name, '</ns1:applicationName>
                         </ns1:RequestHeader>
                       </soapenv:Header>')
  
  body <- paste0("<soapenv:Body>", 
                    body,
                 "</soapenv:Body>")
  
  env_close <- '</soapenv:Envelope>' 
  
  this_body <- paste0(header, body, env_close)
  
  url <- paste0('https://ads.google.com/apis/ads/publisher/v201508/', service)

#   if(verbose){
#     message(url)
#   }
  
  #use xml2 package ?
  req <- POST(url=url, config=get_google_token(), body=this_body)
  text_response <- xmlTreeParse(content(req, as = "text", encoding = "UTF-8"))
  
  # check for curl errors
  doc_error <- text_response$doc$children$Error
  if(!is.null(doc_error)){
    invisible(lapply(xmlToList(doc_error), function(x){message(x)}))
    stop("curl error", call. = FALSE)
  }

  # check for api fault errors
  api_fault <- xmlChildren(xmlChildren(xmlRoot(text_response))$Body)$Fault
  if(!is.null(api_fault)){
    invisible(lapply(xmlToList(api_fault), function(x){message(x)}))
    stop("api fault", call. = FALSE)
  }

  return(text_response)
}


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
#' @param version a character string matching a supported
#' API version
#' @return a XML document
#' 
#' @keywords internal
build_xml_from_list <- function(list, root_name=NULL, 
                                root=NULL, version="v201508"){
  
  if (is.null(root))
    root <- newXMLNode(root_name, 
                       namespaceDefinitions = 
                         c(paste0("https://www.google.com/apis/ads/publisher/", 
                                  version)))
  
  if(length(list)>0){
    for(i in 1:length(list)){
      this <- newXMLNode(names(list)[i], parent=root, 
                         suppressNamespaceWarning=T)
      if (typeof(list[[i]]) == "list"){
        build_xml_from_list(list=list[[i]], root=this)
      }
      else{
        xmlValue(this) <- list[[i]]
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
#' @param service a character string matching one of the API
#' services
#' @param root_name a character string to be put in the 
#' topmost level of the created XML hierarchy
#' @param data a \code{list} or \code{data.frame} to create
#' XML in the request
#' @return a character string of XML with service name
#' as an attribute
#' 
#' @keywords internal
make_request_body <- function(service, root_name, data=NULL){

  if(!is.null(data)){
    if(is.data.frame(data)){
      data <- alply(data, 1, function(x){as.list(data.frame(x))})
      attributes(data) <- NULL
    } else if(!is.list(data)){
      stop('data must be a list or data.frame')
    }
  }
  
  request_body <- as(build_xml_from_list(data, 
                                         root_name=root_name), 
                     'character')
  attributes(request_body) <- list('service'=service)
  
  return(request_body)
}
