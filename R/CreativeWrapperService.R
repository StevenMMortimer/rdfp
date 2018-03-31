#' CreativeWrapperService
#' 
#' Provides methods for the creation and management of creative wrappers.
#' CreativeWrapper CreativeWrappers allow HTML snippets to be served along
#' with creatives.
#' Creative wrappers must be associated with a
#' LabelType#CREATIVE_WRAPPER label and applied to ad units by
#' AdUnit#appliedLabels.
#' 
#' createCreativeWrappers
#' 
#' Creates a new CreativeWrapper objects. The following fields are required: 
#' \itemize{
#'   \item{CreativeWrapper labelId}
#'   \item{CreativeWrapper ordering}
#'   \item{CreativeWrapper header or CreativeWrapper footer}
#' } 
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CreativeWrapperService#createCreativeWrappers}{Google Documentation for createCreativeWrappers}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createCreativeWrappersResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_createCreativeWrappers(request_data)
#' }
#' @export
dfp_createCreativeWrappers <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CreativeWrapperService', root_name='createCreativeWrappers', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createCreativeWrappersResponse', as_df=as_df)
  return(result)
}
#' 
#' getCreativeWrappersByStatement
#' 
#' Gets a CreativeWrapperPage of CreativeWrapper objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{labelId}
#'   \item{status}
#'   \item{ordering}
#' }
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CreativeWrapperService#getCreativeWrappersByStatement}{Google Documentation for getCreativeWrappersByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getCreativeWrappersByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getCreativeWrappersByStatement(dat)
#' }
#' @export
dfp_getCreativeWrappersByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CreativeWrapperService', root_name='getCreativeWrappersByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getCreativeWrappersByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performCreativeWrapperAction
#' 
#' Performs actions on CreativeWrapper objects that match the given Statement query.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CreativeWrapperService#performCreativeWrapperAction}{Google Documentation for performCreativeWrapperAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performCreativeWrapperActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performCreativeWrapperAction(request_data)
#' }
#' @export
dfp_performCreativeWrapperAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CreativeWrapperService', root_name='performCreativeWrapperAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performCreativeWrapperActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updateCreativeWrappers
#' 
#' Updates the specified CreativeWrapper objects.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/CreativeWrapperService#updateCreativeWrappers}{Google Documentation for updateCreativeWrappers}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateCreativeWrappersResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateCreativeWrappers(request_data)
#' }
#' @export
dfp_updateCreativeWrappers <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CreativeWrapperService', root_name='updateCreativeWrappers', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateCreativeWrappersResponse', as_df=as_df)
  return(result)
}
#' 
