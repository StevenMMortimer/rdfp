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
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ReconciliationReportRowService#getReconciliationReportRowsByStatement}{Google Documentation for getReconciliationReportRowsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getReconciliationReportRowsByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getReconciliationReportRowsByStatement(dat)
#' }
#' @export
dfp_getReconciliationReportRowsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ReconciliationReportRowService', root_name='getReconciliationReportRowsByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getReconciliationReportRowsByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' updateReconciliationReportRows
#' 
#' Updates a list of ReconciliationReportRow which belong to same ReconciliationReport.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ReconciliationReportRowService#updateReconciliationReportRows}{Google Documentation for updateReconciliationReportRows}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateReconciliationReportRowsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateReconciliationReportRows(request_data)
#' }
#' @export
dfp_updateReconciliationReportRows <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ReconciliationReportRowService', root_name='updateReconciliationReportRows', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateReconciliationReportRowsResponse', as_df=as_df)
  return(result)
}
#' 
