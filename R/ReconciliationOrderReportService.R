#' ReconciliationOrderReportService
#' 
#' Provides methods for retrieving, reconciling, and reverting
#' ReconciliationOrderReport objects.
#' 
#' getReconciliationOrderReportsByStatement
#' 
#' Gets an ReconciliationOrderReportPage of ReconciliationOrderReport objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{reconciliationReportId}
#'   \item{id}
#'   \item{orderId}
#'   \item{proposalId}
#'   \item{status}
#'   \item{submissionDateTime}
#'   \item{submitterId}
#' }
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ReconciliationOrderReportService#getReconciliationOrderReportsByStatement}{Google Documentation for getReconciliationOrderReportsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getReconciliationOrderReportsByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getReconciliationOrderReportsByStatement(dat)
#' }
#' @export
dfp_getReconciliationOrderReportsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ReconciliationOrderReportService', root_name='getReconciliationOrderReportsByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getReconciliationOrderReportsByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performReconciliationOrderReportAction
#' 
#' Performs actions on the ReconciliationOrderReport objects that match the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{orderId}
#'   \item{proposalId}
#'   \item{reconciliationReportId}
#' }
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ReconciliationOrderReportService#performReconciliationOrderReportAction}{Google Documentation for performReconciliationOrderReportAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performReconciliationOrderReportActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performReconciliationOrderReportAction(request_data)
#' }
#' @export
dfp_performReconciliationOrderReportAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ReconciliationOrderReportService', root_name='performReconciliationOrderReportAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performReconciliationOrderReportActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updateReconciliationOrderReports
#' 
#' Updates a list of ReconciliationOrderReport reconciliation order reports which belong to a ReconciliationReport.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ReconciliationOrderReportService#updateReconciliationOrderReports}{Google Documentation for updateReconciliationOrderReports}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateReconciliationOrderReportsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateReconciliationOrderReports(request_data)
#' }
#' @export
dfp_updateReconciliationOrderReports <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ReconciliationOrderReportService', root_name='updateReconciliationOrderReports', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateReconciliationOrderReportsResponse', as_df=as_df)
  return(result)
}
#' 
