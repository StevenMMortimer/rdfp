library(XML)
library(curl)
library(httr)
library(plyr)
library(readr)
options(stringsAsFactors=F, scipen=999)

source('./R/dfp_service_endpoints.R')

# #pull down all the service WSDLs
version_to_add <- "v201905"
service_map <- service_map[version_to_add]
for (v in names(service_map)){
  this_services <- service_map[[v]]
  for (s in this_services){
    message(s)
    url <- sprintf('https://ads.google.com/apis/ads/publisher/%s/%s?wsdl', v, s)
    #    response <- GET(url)
    #    result <- xmlInternalTreeParse(content(response, 'text'))
    #    con = textConnection(object=paste0('C:/Users/steven.mortimer/Documents/personal-github/rdfp/services/',v,'/',s,'.xml'), open="w")
    #    saveXML(result, sprintf('C:/Users/steven.mortimer/Documents/personal-github/rdfp/services/%s/%s.xml', v, s))
    #    close(con)
    #    write.table('',file=sprintf('C:/Users/steven.mortimer/Documents/personal-github/rdfp/services/%s/%s.xml', v, s))
    #    download.file(url, destfile=sprintf('C:/Users/steven.mortimer/Documents/personal-github/rdfp/services/%s/%s.xml', v, s))
    #   file.create(sprintf('C:/Users/steven.mortimer/Documents/personal-/rdfp/services/%s/%s.xml', v, s))
    curl_download(url, destfile=sprintf('~/github/rdfp/services/%s/%s.xml', v, s))
  }
}

trim <- function( x ) {
  gsub("(^[[:space:]]+|[[:space:]]+$)", "", x)
}
documentation_cleaner <- function( x ) {
  y <- strsplit(trim(gsub('\n', '', x)), ' ')[[1]]
  enumeration_documentation <- paste0(y[y!=''], collapse=" ") 
  enumeration_documentation <- gsub('(\\{@[a-zA-Z]+ )(.*?)(\\})', '\\2', enumeration_documentation)
  enumeration_documentation <- gsub('\\}', '\\\\}', gsub('\\{', '\\\\{', enumeration_documentation))
  enumeration_documentation <- gsub('@', '@@', enumeration_documentation)
  enumeration_documentation <- gsub('&lt;a href="https://admanager.google.com"&gt;DoubleClick for Publishers (DFP)&lt;/a&gt;', 
                                    '\\href{https://admanager.google.com}{DoubleClick for Publishers (DFP)}', enumeration_documentation, fixed=TRUE)  
  enumeration_documentation <- gsub('<a href="https://admanager.google.com">DoubleClick for Publishers (DFP)</a>', 
                                    '\\href{https://admanager.google.com}{DoubleClick for Publishers (DFP)}', enumeration_documentation, fixed=TRUE)
  return(enumeration_documentation)
}

# sample documentation links
# https://developers.google.com/doubleclick-publishers/docs/reference/v201608/UserService.UserRecord

# for complex types provide two types of links
# link to the enherited (extends) type
# link directly to the type

all_services <- list()

v <- 'v201905'
services <- service_map[[v]] #c('UserService', 'ActivityService', 'ReportService', 'InventoryService')
#services <- c('ContentService')
for (s in services){
  message(s)
  destfile <- sprintf('~/github/rdfp/services/%s/%s.xml', v, s)
  doc  <- xmlTreeParse(destfile)
  # pulling complex types
  top <- xmlRoot(doc)
  n1 <- lapply(getNodeSet(top, "//xsd:schema/xsd:complexType"), FUN=function(nn){
    name='';documentation='';extends='';seq=NULL;
    name <- xmlGetAttr(nn, 'name')
    #cat(name)
    first_level <- xmlChildren(nn)
    if(!is.null(first_level$annotation)){
      documentation <- documentation_cleaner(xmlToList(first_level$annotation)$documentation)
    }
    if('sequence' %in% names(first_level)){
      seq <- xmlChildren(xmlChildren(nn)$sequence)
    } else {
      extends <- xmlGetAttr(xmlChildren(first_level$complexContent)$extension, 'base')
      seq <- xmlChildren(xmlChildren(first_level$complexContent)$extension)$sequence
    }
    if (length(seq)>0){
      elements <- lapply(seq.int(length(seq)), FUN=function(x){
        q <- seq[[x]]
        if (is.null(q)){
          return(NULL)
        } else {
          d <- data.frame(t(xmlAttrs(q)))
          docu <- xmlValue(xmlChildren(q)$annotation)
          d$documentation <- documentation_cleaner(docu)
          return(d)
        }
      })
      d <- ldply(elements)
      if(nrow(d)>0){
        d$type_name <- name
        d$type_documentation <- documentation
        d$type_extends <- extends
      } else {
        d <- data.frame(type_name=name, 
                        type_documentation=documentation, 
                        type_extends=extends)
      }
    } else {
      d <- data.frame(type_name=name, 
                      type_documentation=documentation, 
                      type_extends=extends)
    }
    return(d)
  })
  complex_types <- ldply(n1)
  
  # pulling simple types
  # link directly to the type
  # only one type of documentation link, directly to the title
  # the documentation page will list all of the enumerated options
  
  doc  <- xmlInternalTreeParse(destfile)
  n2 <- xpathApply(doc, "//xsd:schema/xsd:simpleType", fun=function(nn){
    title='';description='';return_type='';this_df=NULL;
    pp <- xmlToList(nn)
    this_df <- data.frame(enumeration_value=character(0), 
                          enumeration_documentation=character(0))
    try(title <- unname(pp$.attrs))
    try(description <- documentation_cleaner(pp$annotation$documentation), silent = T)
    if (description==''){
      description <- title
    }
    try(return_type <- gsub('xsd:', '', unname(pp$restriction$.attrs)))
    for (e in head(pp$restriction,-1)){
      if(!('base' %in% names(e))){
        enumeration_documentation='';
        if (is.list(e)){
          enumeration_value <- unname(e$.attrs)
          try(enumeration_documentation <- documentation_cleaner(e$annotation$documentation), silent = T)
          this_df <- rbind(this_df, data.frame(enumeration_value=enumeration_value, 
                                               enumeration_documentation=enumeration_documentation))
        } else {
          enumeration_value <- unname(e['value'])
          this_df <- rbind(this_df, data.frame(enumeration_value=enumeration_value, 
                                               enumeration_documentation=enumeration_documentation))
        }
      }
    }
    if (is.null(this_df)){
      final <- data.frame(title=title, description=description, return_type=return_type)
    } else {
      final <- this_df
      final$title <- title
      final$description <- description
      final$return_type <- return_type
    }
    return(final)
  })
  simple_types <- ldply(n2)
  
  # pulling operations
  doc  <- xmlInternalTreeParse(destfile)
  n3 <- xpathApply(doc, "//wsdl:portType/wsdl:operation", fun=function(nn){
    title='';description='';documentation='';
    pp <- xmlToList(nn)
    try(title <- unname(pp$.attrs))
    try(description <- documentation_cleaner(pp$annotation$documentation), silent = T)
    if (description==''){
      description <- title
    }
    
    #     # for debugging
    #     destfile <- sprintf('C:/Users/steven.mortimer/Documents/github-personal/rdfp/services/%s/%s.xml', v, s)
    #     doc  <- xmlTreeParse(destfile)
    #     # pulling complex types
    #     top <- xmlRoot(doc)
    #     d <- getNodeSet(top, "//wsdl:portType/wsdl:operation")
    #     nn <- d[[2]]
    #     pp <- xmlToList(nn)
    #     x <- pp$`wsdl:documentation`
    
    x <- pp$`documentation`
    x <- paste(gsub('(.*)(@param.*)(@return.*)', '\\1', x), 
               gsub('\n', ' ', gsub('(.*)(@param.*)(@return.*)', '\\2', x)), 
               paste('\n', gsub('\n', ' ', gsub('(.*)(@param.*)(@return.*)', '\\3', x))))
    x <- strsplit(x, '\n')[[1]]
    x <- sapply(x, documentation_cleaner, USE.NAMES = F)
    x <- x[x!='']
    x <- gsub('#', ' ', x)
    description <- gsub('#', ' ', paste0(x[!grepl('^@',x)], collapse=' '))
    if(title == 'getAvailabilityForecast'){
      description <- "Gets the availability forecast for a ProspectiveLineItem. 
      #' An availability forecast reports the maximum number of available 
      #' units that the line item can book, and the total number of units 
      #' matching the line item's targeting."
      documentation <- ''
    }
    if(title == 'getBaseRatesByStatement'){
      description <- paste0(description, '</table>')
    }
    if(grepl('</table>', description)){
      list <- suppressWarnings(readHTMLTable(description)[[1]])[,1]
      l <- paste0("\n#' \\itemize{\n", paste0(sapply(list, FUN=function(x){paste0("#'   \\item{",x,"}\n")}, USE.NAMES = F), collapse=''), "#' }")
      description <- gsub('<table>.*</table>', '', description)
      description <- gsub('(<p>|</p>|<b>|</b>|<code>|</code>|<ul>|</ul>|<li>|</li>|<ol>|</ol>|<br/>)', '', description)
      description <- paste(description, l)
    } else {
      description <- gsub('[[:space:]]*</p>[[:space:]]*', '', gsub('[[:space:]]*<p>[[:space:]]*', "\n#' ", description))
      description <- gsub('[[:space:]]*</li>[[:space:]]*', "}\n", gsub('[[:space:]]*<li>[[:space:]]*', "\n#'   \\\\item{", description))
      description <- gsub('[[:space:]]*</ul>[[:space:]]*', "\n#' } ", gsub('[[:space:]]*<ul>[[:space:]]*', "\n#' \\\\itemize{\n", description))
    }
    
    documentation <- paste0(x[grepl('^@param|^@return|^@throws',x)], collapse="\n#' ")
    usage_parms <- paste0(sapply(x[grepl('^@param',x)], FUN=function(x){strsplit(x, ' ')[[1]][2]}, USE.NAMES = F), collapse=", ")
    description <- gsub("(.*The following fields are required:)(.*)(\n#' \\\\itemize.*)", '\\1 \\3', description)
    description <- gsub("(.*The following fields are supported for filtering:)(.*)(\n#' \\\\itemize.*)", '\\1 \\3', description)
    description <- gsub('(.*For example, to find all Content that is"genre=comedy", you would:)(.*)(\n#\' \\\\itemize.*)', '\\1 \\3', description)
    description <- gsub("(.*Follow the steps outlined below:)(.*)(#' \\\\itemize.*)", '\\1\n\\3', description)
    description <- gsub("corresponding to \"genre\"", "corresponding to \"genre\"\\n#'", description)
    
    this_df <- data.frame(title=title, 
                          description=description,
                          documentation=documentation, 
                          usage_parms=usage_parms)
    return(this_df)
  })
  operations <- rbind.fill(n3)
  
  complex_types$documentation <- ifelse(is.na(complex_types$documentation), '', gsub('#', ' ',complex_types$documentation))
  complex_types$documentation <- gsub('%%', '',complex_types$documentation)
  complex_types$documentation <- gsub('%', '\\\\%',complex_types$documentation)
  complex_types$documentation <- gsub('(<p>|</p>|<b>|</b>|<code>|</code>|<ul>|</ul>|<li>|</li>|<ol>|</ol>|<br/>)', '', complex_types$documentation)
  complex_types$documentation <- gsub('<table>.*</table>', '', complex_types$documentation)
  complex_types$documentation <- gsub('<img>.*</img>', '', complex_types$documentation) 
  complex_types$documentation <- gsub('<img.*/>', '', complex_types$documentation)
  complex_types$documentation <- ifelse((complex_types$type_name=='Statement' & complex_types$name=='query'), 'Holds the query in PQL syntax. See link for how to form PQL.', complex_types$documentation)
  complex_types$documentation <- sapply(complex_types$documentation, FUN=function(x){paste0(strwrap(x, 80, prefix="#' "), collapse='\n')})
  complex_types$documentation <- sub("#' ", '', complex_types$documentation)
  complex_types$documentation <- ifelse(is.na(complex_types$documentation), '', paste0(' ', complex_types$documentation))
  complex_types$documentation <- ifelse(grepl("^ NA$", complex_types$documentation), '', complex_types$documentation)
  
  complex_types$type_documentation <- ifelse(is.na(complex_types$type_documentation), '', gsub('#', ' ',complex_types$type_documentation))
  complex_types$type_documentation <- gsub('%%', '',complex_types$type_documentation)
  complex_types$type_documentation <- gsub('%', '\\\\%',complex_types$type_documentation)
  complex_types$type_documentation <- gsub('(<p>|</p>|<b>|</b>|<code>|</code>|<ul>|</ul>|<li>|</li>|<ol>|</ol>|<br/>)', '', complex_types$type_documentation)
  complex_types$type_documentation <- gsub('<table>.*</table>', '', complex_types$type_documentation)
  complex_types$type_documentation <- gsub('<img>.*</img>', '', complex_types$type_documentation) 
  complex_types$type_documentation <- gsub('<img.*/>', '', complex_types$type_documentation)
  complex_types$type_documentation <- ifelse((complex_types$type_name=='Statement' & complex_types$name=='query'), 'Holds the query in PQL syntax. See link for how to form PQL.', complex_types$type_documentation)
  complex_types$type_documentation <- sapply(complex_types$type_documentation, FUN=function(x){paste0(strwrap(x, 80, prefix="#' "), collapse='\n')})
  complex_types$type_documentation <- sub("#' ", '', complex_types$type_documentation)
  complex_types$type_documentation <- ifelse(grepl("^ NA$", complex_types$type_documentation), '', complex_types$type_documentation)
  
  simple_types$enumeration_documentation <- ifelse(is.na(simple_types$enumeration_documentation), '', gsub('#', ' ',simple_types$enumeration_documentation))
  simple_types$enumeration_documentation <- gsub('%%', '',simple_types$enumeration_documentation)
  simple_types$enumeration_documentation <- gsub('%', '\\\\%',simple_types$enumeration_documentation)
  simple_types$enumeration_documentation <- gsub('(<p>|</p>|<b>|</b>|<code>|</code>|<ul>|</ul>|<li>|</li>|<ol>|</ol>|<br/>)', '', simple_types$enumeration_documentation)
  simple_types$enumeration_documentation <- sapply(simple_types$enumeration_documentation, FUN=function(x){paste0(strwrap(x, 80, prefix="#' "), collapse='\n')})
  simple_types$enumeration_documentation <- sub("#' ", '', simple_types$enumeration_documentation)
  
  complex_types$type <- ifelse(complex_types$type=='xsd:int', 'integer', complex_types$type)
  complex_types$type <- ifelse(complex_types$type=='xsd:long', 'integer', complex_types$type)
  complex_types$type <- ifelse(complex_types$type=='xsd:string', 'character', complex_types$type)
  
  service_desc <- xmlValue(xmlChildren(getNodeSet(doc, "//wsdl:portType")[[1]])$documentation)
  
  if(s == 'PublisherQueryLanguageService'){
    front <- substring(service_desc, 1, regexec('The following tables are supported:', service_desc)[[1]]+36)
    front <- gsub('[[:space:]]*</p>[[:space:]]*', '', 
                  gsub('[[:space:]]*<p>[[:space:]]*', "\n#' ",
                       sub("\n#' ", '', 
                           paste0(strwrap(documentation_cleaner(front), 80, prefix="\n#' "), collapse='')
                       )
                  )
    )
    back <- substring(service_desc, regexec('The following tables are supported:', service_desc)[[1]]+36, nchar(service_desc))
    back_html <- htmlParse(back)
    d <- xpathApply(back_html, "//h2", xmlValue)
    l <- paste0("\n#' \\itemize{\n", paste0(sapply(d, FUN=function(x){paste0("#'   \\item{",x,"}\n")}, USE.NAMES = F), collapse=''), "#' }")
    service_desc <- paste0(front, l, "\n#'\n#' Visit the See Also section below to proceed to Google and view columns in each of these tables.")
  } else {
    service_desc <- gsub('[[:space:]]*</p>[[:space:]]*', '', gsub('[[:space:]]*<p>[[:space:]]*', "\n#' ", 
                                                                  sub("\n#' ", '', paste0(strwrap(documentation_cleaner(service_desc), 80, prefix="\n#' "), collapse=''))))
  }
  
  service_desc <- gsub("steps outlined below:#'", "steps outlined below:", service_desc)
  service_desc <- gsub("#' #'", "#'\n#'", service_desc)
  service_desc <- gsub("#'#'", "#'\n#'", service_desc)
  service_desc <- gsub('[[:space:]]*</li>[[:space:]]*', "}\n", gsub('[[:space:]]*<li>[[:space:]]*', "\n#'   \\\\item{", service_desc))
  service_desc <- gsub('[[:space:]]*</ul>[[:space:]]*', "\n#' } ", gsub('[[:space:]]*<ul>[[:space:]]*', "\n#' \\\\itemize{\n", service_desc))
  service_desc <- gsub(" <h4>Test network
                       #' behavior</h4>", "
                       #' 
                       #' Test Network Behavior
                       #' ", service_desc)
  
  if(s == 'ForecastService'){
    service_desc <- "Provides methods for estimating traffic (clicks/impressions) for line
    #' items. Forecasts can be provided for LineItem objects that exist in the
    #' system or which have not had an ID set yet.
    #' 
    #' Test Network Behavior
    #' 
    #' Test networks are unable to provide forecasts that would be comparable 
    #' to the production environment because forecasts require traffic history. 
    #' Visit the See Also section below to proceed to Google and review the details.'"
  }
  
  if(s == 'LineItemService'){
    service_desc <- "#' Provides methods for creating, updating and retrieving LineItem objects.
    #'
    #' Line items define the campaign. For example, line items define:
    #' \\itemize{
    #'   \\item{a budget}
    #'   \\item{a span of time to run}
    #'   \\item{ad unit targeting}
    #' }
    #' In short, line items connect all of the elements of an ad campaign.
    #' Line items and creatives can be associated with each other through
    #' LineItemCreativeAssociation objects. An ad unit will host a creative
    #' through both this association and the LineItem#targeting to it."
  }
  
  all_services[[s]] <- list(service_desc=service_desc, complex_types=complex_types, simple_types=simple_types, operations=operations)
}

object_type_writer <- function(complex_types, simple_types, name, service){
  extends=NULL;accepted_parms=NULL
  all_rows <- complex_types[complex_types$type_name==name,]
  extends <- all_rows[1,'type_extends']
  cat(paste0("#' \\strong{", name, '}\n'))
  cat("#' \n")
  additional_action_documentation <- ''
  if (grepl('[a-zA-Z]+Action$|^action$', name)){
    additional_action_documentation <- ' May take one of the actions listed below.'
  }
  cat(paste0("#' ", all_rows[1,'type_documentation'], additional_action_documentation, '\n'))
  cat(paste0("#' \\href{https://developers.google.com/ad-manager/api/reference/", v, "/", service, '.', name, "}{Google Documentation for ", name, "}\n"))
  cat("#' \\describe{\n")
  # add extensions first
  if(length(extends)>0 && extends!=''){
    if(extends %in% c('tns:ApiError', 'tns:Value')){
      cat(paste0("#'  \\item{extends ", gsub('(tns:|xsd:)', '', extends),"}{see documentation for ", gsub('(tns:|xsd:)', '', extends), "}\n"))
    } else {
      # find where and record it's documentation
      r <- complex_types[complex_types$type_name==gsub('(tns:|xsd:)', '', extends),]
      if (nrow(r)>0){
        if(all(is.na(r$name))){
          cat(paste0("#'  \\item{extends ", r$type_name[1], "}{see documentation for ", r$type_name[1], "}\n"))
        } else {
          for(i in 1:nrow(r)){
            if (!is.na(r$name[i])){
              accepted_parms <- c(accepted_parms, r$name[i])
              cat(paste0("#'  \\item{", r$name[i], '}{a ', gsub('(tns:|xsd:)', '', r$type[i]), ' (inherited from ', trimws(r$type_name[i], 'right'), ') - ', trimws(r$documentation[i], 'left'), '}\n'))			
            }
          }
        }
      } else {
        r <- simple_types[simple_types$title==gsub('(tns:|xsd:)', '', extends),]
        if (nrow(r)>0){
          for(i in 1:nrow(r)){
            accepted_parms <- c(accepted_parms, r$name[i])
            cat(paste0("#'   \\item{", r$name[i], '}{a ', gsub('(tns:|xsd:)', '', trimws(r$type[i], 'right')), ' -', trimws(r$documentation[i], 'left'), '}\n'))
          }
        }
      }
    }
  }
  for(i in 1:nrow(all_rows)){
    if (is.na(all_rows$type[i])){
      # don't bother
      # cat(paste0("#'  \\item{NA}{No Documentation provided for this}\n"))
    } 
    if(grepl('[a-zA-Z]+Action$|^action$', name)){
      r <- complex_types[gsub('(tns:|xsd:)', '', complex_types$type_extends)==name,]
      if (nrow(r)>0){
        for(i in 1:nrow(r)){
          if (!is.na(r$type_name[i])){
            cat(paste0("#'  \\item{", r$type_name[i], '}{', r$type_documentation[i], '}\n'))
          }
        }
      }
    } 
    if (!is.na(all_rows$type[i])) {
      related_type <- simple_types[simple_types$title==gsub('(tns:|xsd:)', '', all_rows$type[i]),]
      accepted_parms <- c(accepted_parms, all_rows$name[i])
      if (nrow(related_type)>0){
        cat(paste0("#'  \\item{", all_rows$name[i], '}{a ', gsub('(tns:|xsd:)', '', trimws(all_rows$type[i], 'right')), ' -', 
                   if(trimws(all_rows$documentation[i], 'left')!='') paste0(' ', trimws(all_rows$documentation[i], 'left')) else '', ' This can take one of the following values: \n'))
        cat(paste0("#'    \\itemize{\n"))
        for(j in 1:nrow(related_type)){
          enum_doc <- ifelse(related_type$enumeration_documentation[j]=='', '', paste0(" - ", trimws(related_type$enumeration_documentation[j], 'left')))
          cat(paste0("#'      \\item{", trimws(related_type$enumeration_value[j], 'right'), enum_doc, '}\n'))
        }
        cat("#'    }\n")
        cat("#'   }\n")
      } else {
        all_doc <- ifelse(all_rows$documentation[i]=='', '', paste0(" - ", trimws(all_rows$documentation[i], 'left')))
        cat(paste0("#'  \\item{", all_rows$name[i], '}{a ', gsub('(tns:|xsd:)', '', trimws(all_rows$type[i], 'right')), all_doc, '}\n'))
      }
    }
  }
  cat("#' }\n")
  return(accepted_parms)
}

# one R file for each service
# cat to file
for (s in services){
  f <- sprintf("./R/%s.R", s)
  file.remove(f)
  sink(f)
  cat(paste0("#' ", s))
  cat("\n#' \n#' ")
  cat(all_services[[s]]$service_desc) 
  cat("\n#' \n")
  #   cat(paste0("#' ", s, " Object Factory"))
  #   cat("\n#' \n")
  #   cat(paste0("#' A function to create a variety of objects that are part of the ", s))
  #   cat('\n')
  #   cat("#' Note: not all objects here are inputs to the functions of this service so ")
  #   cat('\n')
  #   cat("#' please consult each function for the required inputs")
  #   cat("\n#' \n")
  #   cat("#' Below is a list of objects and their required components to be created with this function:")
  #   cat("\n#' \n")
  #   # add the type stuff here
  #   unique_objs <- sort(unique(all_services[[s]]$complex_types$type_name))
  #   all_accepted_parms <- list()
  #   for (o in unique_objs){
  # 	accepted_parms <- object_type_writer(complex_types = all_services[[s]]$complex_types, 
  # 							simple_types = all_services[[s]]$simple_types,
  # 							name = o, service = s)
  # 	all_accepted_parms[[o]] <- accepted_parms
  #     cat("#' \n")
  #   }
  #   cat("#' ")
  #   cat("\n#' \n")
  #   cat(paste0("#' @usage dfp_", s, '_object_factory(obj_type, obj_data)'))
  #   cat("\n#' \n")
  #   cat("#' @param obj_type a string from one of the object types described above")
  #   cat("\n")
  #   cat("#' @param obj_data a \\code{list} of \\code{lists} or a \\code{data.frame} with the required components to create")
  #   cat("\n")
  #   cat("#' the obj_type specified. All input names must match the expected attributes for the object.")
  #   cat("\n")
  #   cat("#' If submitting a list of attributes to create 1 object make sure to nest it inside top-level list, so that")
  #   cat("\n")
  #   cat("#' it is a list of length 1 with 1 list of attributes to create the object.")
  #   cat("\n")
  #   cat("#' @return a string of formatted XML that can be inserted into a SOAP request body to the APT")
  #   cat("\n")
  #   cat("#' @export")
  #   cat("\n")
  #   cat(paste0('dfp_', s, '_object_factory', " <- function(obj_type, obj_data){\n"))
  #   cat(' if(is.data.frame(obj_data)){\n')
  #   cat(' sampled_names <- names(obj_data)')
  #   cat(' } else if(is.list(obj_data)){\n')
  #   cat(' sampled_names <- names(obj_data[[1]])\n')
  #   cat(' } else {')
  #   cat(' stop("obj_data must be a list or data.frame")\n')
  #   cat(' }\n')
  #   cat('\n')
  #   # insert parm checking logic
  #   for (i in 1:length(all_accepted_parms)){
  #     if(!is.null(all_accepted_parms[[i]]) & !grepl('Error$|Page$|Result$', names(all_accepted_parms)[i])){
  #      if(!(names(all_accepted_parms)[i]) %in% c('ApiError', 'ApiException', 'ApiVersionError',
  #                               'ApplicationException', 'AuthenticationError',
  #                               'BooleanValue', 'CollectionSizeError', 'CommonError',
  #                               'DateTime', 'DateTimeValue', 'DateValue', 'FeatureError', 'ForecastError',
  #                               'InternalApiError', 'NotNullError', 'ObjectValue', 'NumberValue',
  #                               'ParseError', 'PermissionError', 'PublisherQueryLanguageContedError',
  #                               'PublisherQueryLanguageSyntaxError', 'QuotaError', 'RequiredError', 'RequiredNumberError',
  #                               'ServerError', 'SetValue', 'SoapRequestHeader', 'SoapResponseHeader', 'Statement',
  #                               'StatementError', 'String_ValueMapEntry', 'StringLengthError', 'TextValue', 'UniqueError')){
  #      cat(paste0(" if(obj_type=='", names(all_accepted_parms)[i], "'){\n"))
  #      cat(paste0(" stopifnot(all(sampled_names %in% c('", paste0(all_accepted_parms[[i]], collapse="', '"), "')))\n"))
  #      cat(" }\n")
  # 	 cat('\n')
  # 	 }
  # 	}
  #   }
  #   cat("}")
  #   cat('\n')
  #   cat("#' ")
  #   cat('\n')
  #   
  p <- all_services[[s]]$operations
  for (i in 1:nrow(p)){
    cat(paste0("#' ", p$title[i], '\n'))
    cat("#' \n")
    cat(paste0("#' ", p$description[i], '\n'))
    cat("#' \n")
    cat(paste0("#' @seealso \\href{https://developers.google.com/ad-manager/api/reference/", v, "/", s, '#', p$title[i], "}{Google Documentation for ", p$title[i], "}\n"))
    cat("#' \n")
    if((p$usage_parms[i]=='') & (grepl('ByStatement$|^select|^create|^update|^action|^getCustom|get.*Forecast|^getReport|^runReport|Action$', p$title[i]))){
      p$usage_parms[i] <- 'request_data'
    }
    # let R write the usage documentation itself so that it wraps nicely
    if (p$title[i] %in% c('getAdUnitsByStatement', 'getLineItemsByStatement' ,'getCreativeTemplatesByStatement', 'select')){
      #  	  cat(paste0("#' @usage dfp_", p$title[i], '(', p$usage_parms[i], if(p$usage_parms[i]=='') '' else ', ', 'as_df=FALSE, verbose=FALSE)\n'))
    } else {
      #  	  cat(paste0("#' @usage dfp_", p$title[i], '(', p$usage_parms[i], if(p$usage_parms[i]=='') '' else ', ', 'as_df=TRUE, verbose=FALSE)\n'))
    }
    if (p$documentation[i]==''){
      if(grepl('ByStatement$|^select|^create|^update|^action|^getCustom|get.*Forecast|^getReport|^runReport|Action$', p$title[i])){
        cat("#' @param request_data a \\code{list} or \\code{data.frame} of data elements\n")
        cat("#' to be formatted for a SOAP\n")
        cat("#' request (XML format, but passed as character string)\n")
      }
      if(p$title[i] != "select"){
        cat("#' @param as_df a boolean indicating whether to attempt to parse the result into\n")
        cat("#' a \\code{data.frame}\n")        
      }
      cat("#' @param verbose a boolean indicating whether to print the service URL and POSTed XML\n")
      cat(paste0("#' @return a \\code{data.frame} or \\code{list} containing all the elements of a ", p$title[i], "Response \n"))
    } else {
      cat(paste0("#' ", p$documentation[i], '\n'))
    }
    o <- paste0("dfp_", p$title[i])
    example_file_name <- sprintf("./examples/examples-%s.R", o)
    example_string <- read_file(example_file_name)
    cat(paste0(example_string, '\n'))
    cat("#' @export\n")
    if (p$title[i] %in% c('getAdUnitsByStatement', 'getLineItemsByStatement' ,'getCreativeTemplatesByStatement', 'getReportJobStatus', 'getReportDownloadURL', 'runReportJob_result', 'getSavedQueriesByStatement', 'getReportDownloadUrlWithOptions')){
      cat(paste0("dfp_", p$title[i], " <- function(", p$usage_parms[i], if(p$usage_parms[i]=='') '' else ', ', 'as_df=FALSE, verbose=FALSE){\n'))
    } else if(p$title == "select"){
      # dont include as_df argument. it should always be tabular
      cat(paste0("dfp_", p$title[i], " <- function(", p$usage_parms[i], if(p$usage_parms[i]=='') '' else ', ', 'verbose=FALSE){\n'))
    } else {
      cat(paste0("dfp_", p$title[i], " <- function(", p$usage_parms[i], if(p$usage_parms[i]=='') '' else ', ', 'as_df=TRUE, verbose=FALSE){\n'))
    }
    if(p$usage_parms[i]=='request_data'){
      cat(paste0("  request_body <- form_request_body(service='", s, "', root_name='", p$title[i], "', data=request_data)\n"))
    } else if (p$usage_parms[i]==''){
      cat(paste0("  request_body <- form_request_body(service='", s, "', root_name='", p$title[i], "', data=NULL)\n"))
    } else {
      cat(paste0("  request_body <- paste0(\"<", p$title[i], " xmlns='https://www.google.com/apis/ads/publisher/", v, "'> \",\n\n"))
      cat(paste0("            \"</", p$title[i], ">\")\n"))
    }
    cat("  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)\n")
    if(p$title[i] == "select"){
      cat(paste0("  result <- parse_soap_response(httr_response=httr_response, resp_element='", p$title[i], "Response', as_df=FALSE)\n"))
      cat(paste0("  result <- dfp_select_parse(result)\n"))
    } else {
      cat(paste0("  result <- parse_soap_response(httr_response=httr_response, resp_element='", p$title[i], "Response', as_df=as_df)\n"))  
    }
    cat("  return(result)\n")
    cat("}")
    cat('\n')
    cat("#' ")
    cat('\n')
  }  
  sink()
  
  # create tests file
  f <- sprintf("./tests/testthat/test-%s.R", s)
  if(!file.exists(f)){
    sink(f, append=F)
    cat(paste0('context("', s, '")\n'))
    cat('\n')
    cat('rdfp_options <- readRDS("rdfp_options.rds")\n')
    cat('options(rdfp.network_code = rdfp_options$network_code)\n')
    cat('options(rdfp.httr_oauth_cache = FALSE)\n')
    cat('options(rdfp.application_name = rdfp_options$application_name)\n')
    cat('options(rdfp.client_id = rdfp_options$client_id)\n')
    cat('options(rdfp.client_secret = rdfp_options$client_secret)\n')
    cat('\n')
    cat('dfp_auth(token = "rdfp token.rds")\n')
    cat('\n')
    
    p <- all_services[[s]]$operations
    for (i in 1:nrow(p)){
      cat(paste0('test_that("dfp_', p$title[[i]], '", {\n'))
      cat(' \n')
      if(grepl('ByStatement$', p$title[[i]])){
        cat(" request_data <- list(filterStatement=list('query'=\"WHERE status='ACTIVE'\")) \n")
        cat(paste0('  dfp_', p$title[[i]], '_result <- dfp_', p$title[i], '(request_data)\n'))
        cat('\n') 
        cat(paste0(' expect_is(dfp_', p$title[[i]], '_result, "list")\n'))
      } else {
        cat(paste0(' dfp_', p$title[[i]], '_result <- dfp_', p$title[i], '(', p$usage_parms[i], ')\n'))
        cat('\n')
        cat(paste0('# expect_is(dfp_', p$title[[i]], '_result, "list")\n'))
        cat(paste0(' expect_true(TRUE)\n'))
      }
      cat('\n')
      cat('})\n')
    }
    sink()
  } else {
    #nothing right now
  }
}

# create an example file
# these files are not to be changed after modified, just like tests
# we will only add new files when Google adds new methods
for(s in services){
  # create examples file for this operation
  p <- all_services[[s]]$operations
  for (i in 1:nrow(p)){
    o <- paste0("dfp_", p$title[i])
    e <- sprintf("./examples/examples-%s.R", o)
    if((p$usage_parms[i]=='') & (grepl('ByStatement$|^select|^create|^update|^action|^getCustom|get.*Forecast|^getReport|^runReport|Action$', p$title[i]))){
      p$usage_parms[i] <- 'request_data'
    }    
    if(!file.exists(e)){
      sink(e, append=F)
      cat("#' @examples\n")
      cat(paste0("#' \\donttest{\n"))
      if(grepl('ByStatement$', p$title[[i]])){
        cat("#'  dat <- list(filterStatement=list('query'=\"WHERE status='ACTIVE'\")) \n")
        cat(paste0("#'  res <- dfp_", p$title[i], "(dat)\n"))
      } else {
        cat(paste0("#'  res <- dfp_", p$title[i], "(", p$usage_parms[i], ")\n"))
      }
      cat("#' }")    
      sink()
    }
  }
}