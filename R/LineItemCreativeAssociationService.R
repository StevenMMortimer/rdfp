#' LineItemCreativeAssociationService
#' 
#' Provides operations for creating, updating and retrieving
#' LineItemCreativeAssociation objects.
#' A line item creative association
#' (LICA) associates a Creative with a LineItem. When a line item is selected
#' to serve, the LICAs specify which creatives can appear for the ad units
#' that are targeted by the line item. In order to be associated with a line
#' item, the creative must have a size that exists within the attribute
#' LineItem#creativeSizes.#' Each LICA has a start and end date and
#' time that defines when the creative should be displayed.#' To read
#' more about associating creatives with line items, see this <a
#' href="https://support.google.com/dfp_premium/answer/3187916">DFP Help
#' Center</a> article.
#' 
#' createLineItemCreativeAssociations
#' 
#' Creates new LineItemCreativeAssociation objects
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/LineItemCreativeAssociationService#createLineItemCreativeAssociations}{Google Documentation for createLineItemCreativeAssociations}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createLineItemCreativeAssociationsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_createLineItemCreativeAssociations(request_data)
#' }
#' @export
dfp_createLineItemCreativeAssociations <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='LineItemCreativeAssociationService', root_name='createLineItemCreativeAssociations', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createLineItemCreativeAssociationsResponse', as_df=as_df)
  return(result)
}
#' 
#' getLineItemCreativeAssociationsByStatement
#' 
#' Gets a LineItemCreativeAssociationPage of LineItemCreativeAssociation objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{creativeId}
#'   \item{manualCreativeRotationWeight}
#'   \item{destinationUrl}
#'   \item{lineItemId}
#'   \item{status}
#'   \item{lastModifiedDateTime}
#' }
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/LineItemCreativeAssociationService#getLineItemCreativeAssociationsByStatement}{Google Documentation for getLineItemCreativeAssociationsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getLineItemCreativeAssociationsByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getLineItemCreativeAssociationsByStatement(dat)
#' }
#' @export
dfp_getLineItemCreativeAssociationsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='LineItemCreativeAssociationService', root_name='getLineItemCreativeAssociationsByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getLineItemCreativeAssociationsByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' getPreviewUrl
#' 
#' Returns an insite preview URL that references the specified site URL with the specified creative from the association served to it. For Creative Set previewing you may specify the master creative Id.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/LineItemCreativeAssociationService#getPreviewUrl}{Google Documentation for getPreviewUrl}
#' 
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getPreviewUrlResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_getPreviewUrl()
#' }
#' @export
dfp_getPreviewUrl <- function(as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='LineItemCreativeAssociationService', root_name='getPreviewUrl', data=NULL)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getPreviewUrlResponse', as_df=as_df)
  return(result)
}
#' 
#' getPreviewUrlsForNativeStyles
#' 
#' Returns a list of URLs that reference the specified site URL with the specified creative from the association served to it. For Creative Set previewing you may specify the master creative Id. Each URL corresponds to one available native style for previewing the specified creative. creative
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/LineItemCreativeAssociationService#getPreviewUrlsForNativeStyles}{Google Documentation for getPreviewUrlsForNativeStyles}
#' 
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getPreviewUrlsForNativeStylesResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_getPreviewUrlsForNativeStyles()
#' }
#' @export
dfp_getPreviewUrlsForNativeStyles <- function(as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='LineItemCreativeAssociationService', root_name='getPreviewUrlsForNativeStyles', data=NULL)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getPreviewUrlsForNativeStylesResponse', as_df=as_df)
  return(result)
}
#' 
#' performLineItemCreativeAssociationAction
#' 
#' Performs actions on LineItemCreativeAssociation objects that match the given Statement query.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/LineItemCreativeAssociationService#performLineItemCreativeAssociationAction}{Google Documentation for performLineItemCreativeAssociationAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performLineItemCreativeAssociationActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performLineItemCreativeAssociationAction(request_data)
#' }
#' @export
dfp_performLineItemCreativeAssociationAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='LineItemCreativeAssociationService', root_name='performLineItemCreativeAssociationAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performLineItemCreativeAssociationActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updateLineItemCreativeAssociations
#' 
#' Updates the specified LineItemCreativeAssociation objects
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201802/LineItemCreativeAssociationService#updateLineItemCreativeAssociations}{Google Documentation for updateLineItemCreativeAssociations}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateLineItemCreativeAssociationsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateLineItemCreativeAssociations(request_data)
#' }
#' @export
dfp_updateLineItemCreativeAssociations <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='LineItemCreativeAssociationService', root_name='updateLineItemCreativeAssociations', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateLineItemCreativeAssociationsResponse', as_df=as_df)
  return(result)
}
#' 
