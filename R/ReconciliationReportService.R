#' ReconciliationReportService
#' 
#' Provides methods for retrieving, submitting and reverting the
#' ReconciliationReport objects.
#' A ReconciliationReport is a group of
#' ReconciliationReportRow objects.
#' 
#' getReconciliationReportsByStatement
#' 
#' Gets an ReconciliationReportPage of ReconciliationReport objects that satisfy the given Statement query. The following fields are supported for filtering.  
#' \itemize{
#'   \item{id}
#'   \item{status}
#'   \item{startDate}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/ReconciliationReportService#getReconciliationReportsByStatement}{Google Documentation for getReconciliationReportsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getReconciliationReportsByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getReconciliationReportsByStatement(dat)
#' }
#' @export
dfp_getReconciliationReportsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ReconciliationReportService', root_name='getReconciliationReportsByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getReconciliationReportsByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' updateReconciliationReports
#' 
#' Updates the specified ReconciliationReport objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/ReconciliationReportService#updateReconciliationReports}{Google Documentation for updateReconciliationReports}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateReconciliationReportsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateReconciliationReports(request_data)
#' }
#' @export
dfp_updateReconciliationReports <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ReconciliationReportService', root_name='updateReconciliationReports', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateReconciliationReportsResponse', as_df=as_df)
  return(result)
}
#' 
