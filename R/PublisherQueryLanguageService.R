#' PublisherQueryLanguageService
#' 
#' Provides methods for executing a PQL Statement to retrieve information from
#' the system. In order to support the selection of columns of interest from
#' various tables, Statement objects support a "select" clause.
#' An example
#' query text might be "select CountryCode, Name from Geo_Target", where
#' CountryCode and Name are columns of interest and Geo_Target is the table.
#'
#' The following tables are supported:
#' \itemize{
#'   \item{Geo_Target}
#'   \item{Bandwidth_Group}
#'   \item{Browser}
#'   \item{Browser_Language}
#'   \item{Device_Capability}
#'   \item{Device_Category}
#'   \item{Device_Manufacturer}
#'   \item{Mobile_Carrier}
#'   \item{Mobile_Device}
#'   \item{Mobile_Device_Submodel}
#'   \item{Operating_System}
#'   \item{Operating_System_Version}
#'   \item{Third_Party_Company}
#'   \item{Line_Item}
#'   \item{Ad_Unit}
#'   \item{User}
#'   \item{Exchange_Rate}
#'   \item{Programmatic_Buyer}
#'   \item{Audience_Segment_Category}
#'   \item{Audience_Segment}
#'   \item{Proposal_Retraction_Reason}
#'   \item{Audience_Explorer}
#'   \item{Time_Zone}
#'   \item{Proposal_Terms_And_Conditions}
#' }
#'
#' Visit the See Also section below to proceed to Google and view columns in each of these tables.
#' 
#' select
#' 
#' Retrieves rows of data that satisfy the given Statement query from the system.
#' 
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201608/PublisherQueryLanguageService#select}{Google Documentation for select}
#' 
#' @usage dfp_select(request_data, as_df=FALSE, verbose=FALSE)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a selectResponse 
#' @export
dfp_select <- function(request_data, as_df=FALSE, verbose=FALSE){
 request_body <- make_request_body(service='PublisherQueryLanguageService', root_name='select', data=request_data)
  request <- build_soap_request(body = request_body, verbose=verbose)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['selectResponse']])
  result <- if(is.null(response$rval)){
    NULL
  } else if (as_df){
      if(length(response[grepl('rval', names(response))])==1 &
          names(response[grepl('rval', names(response))][[1]])[1]=='totalResultSetSize' &
           names(response[grepl('rval', names(response))][[1]])[2]=='startIndex'){
            ldply(tail(response[grepl('rval', names(response))]$rval, -2),
             .fun=function(x){
                 x <- xmlToList(x)
                 x[sapply(x, is.null)] <- NA
                 new_x <- as.data.frame(x, stringsAsFactors = F)
                 return(new_x)
             }, .id=NULL)
      } else {
      ldply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               x[sapply(x, is.null)] <- NA
               new_x <- as.data.frame(x, stringsAsFactors = F)
               return(new_x)
             }, .id=NULL)
      }
  } else {
      llply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               return(x)
             })
  }
  return(result)
}
#' 
