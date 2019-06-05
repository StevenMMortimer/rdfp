#' CdnConfigurationService
#' 
#' Provides methods for creating, updating and retrieving CdnConfiguration
#' objects.
#' 
#' createCdnConfigurations
#' 
#' Creates new CdnConfiguration objects. Creates new CdnConfiguration objects. Creates new CdnConfiguration objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/CdnConfigurationService#createCdnConfigurations}{Google Documentation for createCdnConfigurations}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createCdnConfigurationsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_createCdnConfigurations(request_data)
#' }

#' @export
dfp_createCdnConfigurations <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CdnConfigurationService', root_name='createCdnConfigurations', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createCdnConfigurationsResponse', as_df=as_df)
  return(result)
}
#' 
#' getCdnConfigurationsByStatement
#' 
#' Gets a CdnConfigurationPage of CdnConfiguration objects that satisfy the given Statement query. Currently only CDN Configurations of type \{@@link CdnConfigurationType LIVE_STREAM_SOURCE_CONTENT\} will be returned. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{name}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/CdnConfigurationService#getCdnConfigurationsByStatement}{Google Documentation for getCdnConfigurationsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getCdnConfigurationsByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getCdnConfigurationsByStatement(dat)
#' }

#' @export
dfp_getCdnConfigurationsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CdnConfigurationService', root_name='getCdnConfigurationsByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getCdnConfigurationsByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performCdnConfigurationAction
#' 
#' Performs actions on CdnConfiguration objects that match the given \{@@link Statement query\}.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/CdnConfigurationService#performCdnConfigurationAction}{Google Documentation for performCdnConfigurationAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performCdnConfigurationActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performCdnConfigurationAction(request_data)
#' }

#' @export
dfp_performCdnConfigurationAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CdnConfigurationService', root_name='performCdnConfigurationAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performCdnConfigurationActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updateCdnConfigurations
#' 
#' Updates the specified CdnConfiguration objects. Updates the specified CdnConfiguration objects. Updates the specified CdnConfiguration objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/CdnConfigurationService#updateCdnConfigurations}{Google Documentation for updateCdnConfigurations}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateCdnConfigurationsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateCdnConfigurations(request_data)
#' }

#' @export
dfp_updateCdnConfigurations <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CdnConfigurationService', root_name='updateCdnConfigurations', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateCdnConfigurationsResponse', as_df=as_df)
  return(result)
}
#' 
