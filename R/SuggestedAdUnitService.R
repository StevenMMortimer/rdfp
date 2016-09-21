#' SuggestedAdUnitService
#' 
#' This service provides operations for retrieving and approving
#' SuggestedAdUnit objects.
#' Publishers may create ad tags that lack a
#' corresponding ad unit defined in DFP, in order to gather information about
#' potential ads without needing to create dummy ad units and make them
#' available for targeting in line items. Any undefined ad unit to receive
#' more than ten serving requests in the past week is treated as a 'suggested
#' ad unit'. These can be queried by the client and selectively approved.
#' Approval causes a new ad unit to be created based on the suggested ad unit.
#' Unapproved suggested ad units cease to exist whenever their corresponding
#' ad tag has been served fewer than ten times in the past seven days.
#' This
#' service is only available to Premium publishers. Before use, suggested ad
#' units must be enabled for the client's network. This can be done in the UI:
#' in the Inventory tab, click "Network settings" in the left-hand panel, then
#' enable the checkbox "Get suggestions for new ad units." If suggested ad
#' units are not enabled, then #getSuggestedAdUnitsByStatement will always
#' return an empty page.
#' 
#' getSuggestedAdUnitsByStatement
#' 
#' Gets a SuggestedAdUnitPage of SuggestedAdUnit objects that satisfy the filter query. There is a system-enforced limit of 1000 on the number of suggested ad units that are suggested at any one time.  <strong>Note:</strong> After API version 201311, the id field will only be numerical. a set of suggested ad units 
#' \itemize{
#'   \item{id}
#'   \item{numRequests}
#' }
#' 
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201608/SuggestedAdUnitService#getSuggestedAdUnitsByStatement}{Google Documentation for getSuggestedAdUnitsByStatement}
#' 
#' @usage dfp_getSuggestedAdUnitsByStatement(request_data, as_df=TRUE, verbose=FALSE)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getSuggestedAdUnitsByStatementResponse 
#' @export
dfp_getSuggestedAdUnitsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='SuggestedAdUnitService', root_name='getSuggestedAdUnitsByStatement', data=request_data)
  request <- build_soap_request(body = request_body, verbose=verbose)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getSuggestedAdUnitsByStatementResponse']])
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
#' performSuggestedAdUnitAction
#' 
#' Performs actions on SuggestedAdUnit objects that match the given Statement query. The following fields are supported for filtering:  a set of suggested ad units 
#' \itemize{
#'   \item{id}
#'   \item{numRequests}
#' }
#' 
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201608/SuggestedAdUnitService#performSuggestedAdUnitAction}{Google Documentation for performSuggestedAdUnitAction}
#' 
#' @usage dfp_performSuggestedAdUnitAction(request_data, as_df=TRUE, verbose=FALSE)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performSuggestedAdUnitActionResponse 
#' @export
dfp_performSuggestedAdUnitAction <- function(request_data, as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='SuggestedAdUnitService', root_name='performSuggestedAdUnitAction', data=request_data)
  request <- build_soap_request(body = request_body, verbose=verbose)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['performSuggestedAdUnitActionResponse']])
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
