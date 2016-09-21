#' ContentService
#' 
#' Service for retrieving Content. Content entities can be targeted in video
#' LineItems. You can query for content that belongs to a particular category
#' or has assigned metadata. Categories and metadata for Content are stored in
#' DFP as CustomCriteria.
#' For example, to find all Content that is
#' "genre=comedy", you would: <ul> <li>Retrieve the custom targeting key
#' corresponding to "genre" using
#' CustomTargetingService#getCustomTargetingKeysByStatement</li> <li>Using the
#' CustomTargetingService#getCustomTargetingValuesByStatement method and a
#' filter like "WHERE customTargetingKeyId = :genreKeyId and name = 'comedy'",
#' retrieve the ID for the "comedy" custom targeting value.</li> <li>Call
#' #getContentByStatementAndCustomTargetingValue with a filter like "WHERE
#' status = 'ACTIVE'" and the ID of the custom targeting value from step
#' 2.</li> </ul>
#' 
#' getContentByStatement
#' 
#' Gets a ContentPage of Content objects that satisfy the given Statement query. The following fields are supported for filtering:  filter a set of content 
#' \itemize{
#'   \item{id}
#'   \item{status}
#'   \item{name}
#'   \item{lastModifiedDateTime}
#' }
#' 
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201608/ContentService#getContentByStatement}{Google Documentation for getContentByStatement}
#' 
#' @usage dfp_getContentByStatement(request_data, as_df=TRUE, verbose=FALSE)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getContentByStatementResponse 
#' @export
dfp_getContentByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='ContentService', root_name='getContentByStatement', data=request_data)
  request <- build_soap_request(body = request_body, verbose=verbose)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getContentByStatementResponse']])
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
#' getContentByStatementAndCustomTargetingValue
#' 
#' Gets a ContentPage of Content objects that satisfy the given Statement query. Additionally, filters on the given value ID and key ID that the value belongs to. The following fields are supported for filtering:  filter a set of content 
#' \itemize{
#'   \item{id}
#'   \item{status}
#'   \item{name}
#'   \item{lastModifiedDateTime}
#' }
#' 
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201608/ContentService#getContentByStatementAndCustomTargetingValue}{Google Documentation for getContentByStatementAndCustomTargetingValue}
#' 
#' @usage dfp_getContentByStatementAndCustomTargetingValue(as_df=TRUE, verbose=FALSE)
#' @param as_df a boolean indicating whether to attempt to parse the result into a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getContentByStatementAndCustomTargetingValueResponse 
#' @export
dfp_getContentByStatementAndCustomTargetingValue <- function(as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='ContentService', root_name='getContentByStatementAndCustomTargetingValue', data=NULL)
  request <- build_soap_request(body = request_body, verbose=verbose)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getContentByStatementAndCustomTargetingValueResponse']])
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
