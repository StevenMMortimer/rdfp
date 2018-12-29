#' ReportService
#' 
#' Provides methods for executing a ReportJob and retrieving performance and
#' statistics about ad campaigns, networks, inventory and sales.
#' Follow the
#' steps outlined below:
#' \itemize{
#'   \item{Create the ReportJob object by
#' invoking ReportService#runReportJob.}
#'   \item{Poll the ReportJob object
#' using ReportService#getReportJob.}
#'   \item{Continue to poll the ReportJob
#' object until the ReportJob#reportJobStatus field is equal to
#' ReportJobStatus#COMPLETED or ReportJobStatus#FAILED.}
#'   \item{If
#' successful, fetch the URL for downloading the report by invoking
#' ReportService#getReportDownloadURL.}
#' } <h4>Test network
#' behavior</h4>
#' The networks created using NetworkService#makeTestNetwork
#' are unable to provide reports that would be comparable to the production
#' environment because reports require traffic history. In the test networks,
#' reports will consistently return no data for all reports.
#' 
#' getReportDownloadURL
#' 
#' Returns the URL at which the report file can be downloaded.
#' The report will be generated as a gzip archive, containing the report file itself.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/ReportService#getReportDownloadURL}{Google Documentation for getReportDownloadURL}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getReportDownloadURLResponse 
#' @examples
#' \dontrun{
#' request_data <- list(reportJob=
#'                        list(reportQuery=
#'                               list(dimensions='MONTH_AND_YEAR', 
#'                                    dimensions='AD_UNIT_ID',
#'                                    adUnitView='FLAT',
#'                                    columns='AD_SERVER_CLICKS', 
#'                                    dateRangeType='LAST_WEEK')))
#' 
#' # the result is a list and most importantly the ID is included for checking its status
#' dfp_runReportJob_result <- dfp_runReportJob(request_data)
#'
#' # only run after the status is "COMPLETED"
#' request_data <- list(reportJobId=dfp_runReportJob_result$id, exportFormat='CSV_DUMP')
#' dfp_getReportDownloadURL_result <- dfp_getReportDownloadURL(request_data)
#' }
#' @export
dfp_getReportDownloadURL <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ReportService', root_name='getReportDownloadURL', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getReportDownloadURLResponse', as_df=as_df)
  return(result)
}
#' 
#' getReportDownloadUrlWithOptions
#' 
#' Returns the URL at which the report file can be downloaded, and allows for customization of the downloaded report.
#' By default, the report will be generated as a gzip archive, containing the report file itself. This can be changed by setting ReportDownloadOptions useGzipCompression to false.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/ReportService#getReportDownloadUrlWithOptions}{Google Documentation for getReportDownloadUrlWithOptions}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getReportDownloadUrlWithOptionsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_getReportDownloadUrlWithOptions(request_data)
#' }
#' @export
dfp_getReportDownloadUrlWithOptions <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ReportService', root_name='getReportDownloadUrlWithOptions', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getReportDownloadUrlWithOptionsResponse', as_df=as_df)
  return(result)
}
#' 
#' getReportJobStatus
#' 
#' Returns the ReportJobStatus of the report job with the specified ID. Returns the ReportJobStatus of the report job with the specified ID. Returns the ReportJobStatus of the report job with the specified ID.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/ReportService#getReportJobStatus}{Google Documentation for getReportJobStatus}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getReportJobStatusResponse 
#' @examples
#' \dontrun{
#' request_data <- list(reportJob=
#'                        list(reportQuery=
#'                               list(dimensions='MONTH_AND_YEAR', 
#'                                    dimensions='AD_UNIT_ID',
#'                                    adUnitView='FLAT',
#'                                    columns='AD_SERVER_CLICKS', 
#'                                    dateRangeType='LAST_WEEK')))
#' 
#' # the result is a list and most importantly the ID is included for checking its status
#' dfp_runReportJob_result <- dfp_runReportJob(request_data)
#' 
#' request_data <- list(reportJobId=dfp_runReportJob_result$id)
#' dfp_getReportJobStatus_result <- dfp_getReportJobStatus(request_data)
#' dfp_getReportJobStatus_result
#' 
#' # a simple while loop can keep checking a long running request until ready
#' counter <- 0
#' while(dfp_getReportJobStatus_result$V1 != 'COMPLETED' & counter < 10){
#'   dfp_getReportJobStatus_result <- dfp_getReportJobStatus(request_data)
#'   Sys.sleep(3)
#'   counter <- counter + 1
#' }
#' }
#' @export
dfp_getReportJobStatus <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ReportService', root_name='getReportJobStatus', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getReportJobStatusResponse', as_df=as_df)
  return(result)
}
#' 
#' getSavedQueriesByStatement
#' 
#' Retrieves a page of the saved queries either created by or shared with the current user. Each SavedQuery in the page, if it is compatible with the current API version, will contain a ReportQuery object which can be optionally modified and used to create a ReportJob. This can then be passed to ReportService runReportJob. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{name}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/ReportService#getSavedQueriesByStatement}{Google Documentation for getSavedQueriesByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getSavedQueriesByStatementResponse 
#' @examples
#' \dontrun{
#' request_data <- list(filterStatement=list(query="WHERE id = 936165016"))
#' this_result <- dfp_getSavedQueriesByStatement(request_data, as_df=FALSE)
#' this_report_query <- this_result[[1]]$reportQuery
#' 
#' # resubmit the report job with the saved query
#' report_data <- list(reportJob=list(reportQuery = this_report_query))
#' report_data <- dfp_full_report_wrapper(report_data)
#' }
#' @export
dfp_getSavedQueriesByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ReportService', root_name='getSavedQueriesByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getSavedQueriesByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' runReportJob
#' 
#' Initiates the execution of a ReportQuery on the server.
#' The following fields are required: 
#' \itemize{
#'   \item{ReportJob reportQuery}
#' } 
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/ReportService#runReportJob}{Google Documentation for runReportJob}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a runReportJobResponse 
#' @examples
#' \dontrun{
#' request_data <- list(reportJob=
#'                        list(reportQuery=
#'                               list(dimensions='MONTH_AND_YEAR', 
#'                                    dimensions='AD_UNIT_ID',
#'                                    adUnitView='FLAT',
#'                                    columns='AD_SERVER_CLICKS', 
#'                                    dateRangeType='LAST_WEEK')))
#' 
#' # the result is a list and most importantly the ID is included for checking its status
#' dfp_runReportJob_result <- dfp_runReportJob(request_data)
#' dfp_runReportJob_result$id
#' }
#' @export
dfp_runReportJob <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ReportService', root_name='runReportJob', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='runReportJobResponse', as_df=as_df)
  return(result)
}
#' 
