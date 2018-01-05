#' ReconciliationReportRowService
#' 
#' Provides methods for retrieving and updating the ReconciliationReportRow
#' objects.
#' 
#' getReconciliationReportRowsByStatement
#' 
#' Gets a ReconciliationReportRowPage of ReconciliationReportRow objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{reconciliationReportId}
#'   \item{advertiserId}
#'   \item{orderId}
#'   \item{lineItemId}
#'   \item{proposalLineItemId}
#'   \item{creativeId}
#'   \item{lineItemCostType}
#'   \item{dfpClicks}
#'   \item{dfpImpressions}
#'   \item{dfpLineItemDays}
#'   \item{thirdPartyClicks}
#'   \item{thirdPartyImpressions}
#'   \item{thirdPartyLineItemDays}
#'   \item{manualClicks}
#'   \item{manualImpressions}
#'   \item{manualLineItemDays}
#'   \item{reconciledClicks}
#'   \item{reconciledImpressions}
#'   \item{reconciledLineItemDays}
#' }
#' 
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201711/ReconciliationReportRowService#getReconciliationReportRowsByStatement}{Google Documentation for getReconciliationReportRowsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getReconciliationReportRowsByStatementResponse 
#' @export
dfp_getReconciliationReportRowsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='ReconciliationReportRowService', root_name='getReconciliationReportRowsByStatement', data=request_data)
  request <- build_soap_request(body = request_body, verbose=verbose)

  null_root <- is.null(request)
  response <- NULL
  response <- try(xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getReconciliationReportRowsByStatementResponse']]), silent=T)
  result <- if(null_root | is.null(response)){
    NULL
  } else if(is.null(response$rval)){
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
#' updateReconciliationReportRows
#' 
#' Updates a list of ReconciliationReportRow which belong to same ReconciliationReport.
#' 
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201711/ReconciliationReportRowService#updateReconciliationReportRows}{Google Documentation for updateReconciliationReportRows}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateReconciliationReportRowsResponse 
#' @export
dfp_updateReconciliationReportRows <- function(request_data, as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='ReconciliationReportRowService', root_name='updateReconciliationReportRows', data=request_data)
  request <- build_soap_request(body = request_body, verbose=verbose)

  null_root <- is.null(request)
  response <- NULL
  response <- try(xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['updateReconciliationReportRowsResponse']]), silent=T)
  result <- if(null_root | is.null(response)){
    NULL
  } else if(is.null(response$rval)){
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
