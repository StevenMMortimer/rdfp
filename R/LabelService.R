#' LabelService
#' 
#' Provides methods for the creation and management of Labels.
#' 
#' createLabels
#' 
#' Creates new Label objects.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/LabelService#createLabels}{Google Documentation for createLabels}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createLabelsResponse 
#' @examples
#' \dontrun{
#' request_data <- data.frame(name="Auto - Competitive Exclusion",
#'                            description=paste0("A label to prevent two different car ",
#'                                               "companies from showing ads together"),
#'                            types='COMPETITIVE_EXCLUSION')
#' request_data <- list('labels'=hypothetical_label)
#' result <- dfp_createLabels(request_data)
#' }
#' @export
dfp_createLabels <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='LabelService', root_name='createLabels', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createLabelsResponse', as_df=as_df)
  return(result)
}
#' 
#' getLabelsByStatement
#' 
#' Gets a LabelPage of Label objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{type}
#'   \item{name}
#'   \item{description}
#'   \item{isActive}
#' }
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/LabelService#getLabelsByStatement}{Google Documentation for getLabelsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getLabelsByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getLabelsByStatement(dat)
#' }
#' @export
dfp_getLabelsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='LabelService', root_name='getLabelsByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getLabelsByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performLabelAction
#' 
#' Performs actions on Label objects that match the given Statement query.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/LabelService#performLabelAction}{Google Documentation for performLabelAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performLabelActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performLabelAction(request_data)
#' }
#' @export
dfp_performLabelAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='LabelService', root_name='performLabelAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performLabelActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updateLabels
#' 
#' Updates the specified Label objects.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/LabelService#updateLabels}{Google Documentation for updateLabels}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateLabelsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateLabels(request_data)
#' }
#' @export
dfp_updateLabels <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='LabelService', root_name='updateLabels', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateLabelsResponse', as_df=as_df)
  return(result)
}
#' 
