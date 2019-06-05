#' ReconciliationLineItemReportService
#' 
#' Provides methods for retrieving and updating ReconciliationLineItemReport
#' objects.
#' 
#' getReconciliationLineItemReportsByStatement
#' 
#' Gets a ReconciliationLineItemReportPage of ReconciliationLineItemReport objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{reconciliationReportId}
#'   \item{orderId}
#'   \item{proposalId}
#'   \item{lineItemId}
#'   \item{proposalLineItemId}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/ReconciliationLineItemReportService#getReconciliationLineItemReportsByStatement}{Google Documentation for getReconciliationLineItemReportsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getReconciliationLineItemReportsByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getReconciliationLineItemReportsByStatement(dat)
#' }

#' @export
dfp_getReconciliationLineItemReportsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ReconciliationLineItemReportService', root_name='getReconciliationLineItemReportsByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getReconciliationLineItemReportsByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' updateReconciliationLineItemReports
#' 
#' Updates a list of ReconciliationLineItemReport objects which belong to same ReconciliationReport.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/ReconciliationLineItemReportService#updateReconciliationLineItemReports}{Google Documentation for updateReconciliationLineItemReports}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateReconciliationLineItemReportsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateReconciliationLineItemReports(request_data)
#' }

#' @export
dfp_updateReconciliationLineItemReports <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ReconciliationLineItemReportService', root_name='updateReconciliationLineItemReports', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateReconciliationLineItemReportsResponse', as_df=as_df)
  return(result)
}
#' 
