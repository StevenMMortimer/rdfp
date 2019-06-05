#' CmsMetadataService
#' 
#' Provides methods for querying CMS metadata keys and values.
#' A CMS
#' metadata value corresponds to one key value pair ingested from a
#' publisher's CMS and is used to target all the content with which it is
#' associated in the CMS.
#' 
#' getCmsMetadataKeysByStatement
#' 
#' Returns a page of CmsMetadataKeys matching the specified Statement. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{cmsKey}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/CmsMetadataService#getCmsMetadataKeysByStatement}{Google Documentation for getCmsMetadataKeysByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getCmsMetadataKeysByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getCmsMetadataKeysByStatement(dat)
#' }

#' @export
dfp_getCmsMetadataKeysByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CmsMetadataService', root_name='getCmsMetadataKeysByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getCmsMetadataKeysByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' getCmsMetadataValuesByStatement
#' 
#' Returns a page of CmsMetadataValues matching the specified Statement. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{cmsValue}
#'   \item{cmsKey}
#'   \item{keyValueMemberContent}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/CmsMetadataService#getCmsMetadataValuesByStatement}{Google Documentation for getCmsMetadataValuesByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getCmsMetadataValuesByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getCmsMetadataValuesByStatement(dat)
#' }

#' @export
dfp_getCmsMetadataValuesByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CmsMetadataService', root_name='getCmsMetadataValuesByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getCmsMetadataValuesByStatementResponse', as_df=as_df)
  return(result)
}
#' 
