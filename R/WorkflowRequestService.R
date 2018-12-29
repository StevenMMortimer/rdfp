#' WorkflowRequestService
#' 
#' Provides methods to retrieve and perform actions on WorkflowRequest objects
#'
#' To use this service, you need to have the new sales management solution
#' enabled on your network. If you do not see a "Sales" tab in
#' \href{https://www.google.com/dfp}{DoubleClick for Publishers (DFP)}, you
#' will not be able to use this service.
#' 
#' getWorkflowRequestsByStatement
#' 
#' Gets a list of WorkflowRequest objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{workflowRuleName}
#'   \item{entityType}
#'   \item{entityId}
#'   \item{approvalStatus}
#'   \item{conditionStatus}
#'   \item{type}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/WorkflowRequestService#getWorkflowRequestsByStatement}{Google Documentation for getWorkflowRequestsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getWorkflowRequestsByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getWorkflowRequestsByStatement(dat)
#' }
#' @export
dfp_getWorkflowRequestsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='WorkflowRequestService', root_name='getWorkflowRequestsByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getWorkflowRequestsByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performWorkflowRequestAction
#' 
#' Perform actions on WorkflowRequest objects that match the given Statement query.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/WorkflowRequestService#performWorkflowRequestAction}{Google Documentation for performWorkflowRequestAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performWorkflowRequestActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performWorkflowRequestAction(request_data)
#' }
#' @export
dfp_performWorkflowRequestAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='WorkflowRequestService', root_name='performWorkflowRequestAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performWorkflowRequestActionResponse', as_df=as_df)
  return(result)
}
#' 
