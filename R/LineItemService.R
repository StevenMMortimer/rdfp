#' LineItemService
#' 
#' #' Provides methods for creating, updating and retrieving LineItem objects.
    #'
    #' Line items define the campaign. For example, line items define:
    #' \itemize{
    #'   \item{a budget}
    #'   \item{a span of time to run}
    #'   \item{ad unit targeting}
    #' }
    #' In short, line items connect all of the elements of an ad campaign.
    #' Line items and creatives can be associated with each other through
    #' LineItemCreativeAssociation objects. An ad unit will host a creative
    #' through both this association and the LineItem#targeting to it.
#' 
#' createLineItems
#' 
#' Creates new LineItem objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/LineItemService#createLineItems}{Google Documentation for createLineItems}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createLineItemsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_createLineItems(request_data)
#' }

#' @export
dfp_createLineItems <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='LineItemService', root_name='createLineItems', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createLineItemsResponse', as_df=as_df)
  return(result)
}
#' 
#' getLineItemsByStatement
#' 
#' Gets a LineItemPage of LineItem objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{CostType}
#'   \item{CreationDateTime}
#'   \item{DeliveryRateType}
#'   \item{EndDateTime}
#'   \item{ExternalId}
#'   \item{Id}
#'   \item{IsMissingCreatives}
#'   \item{IsSetTopBoxEnabled}
#'   \item{LastModifiedDateTime}
#'   \item{LineItemType}
#'   \item{Name}
#'   \item{OrderId}
#'   \item{StartDateTime}
#'   \item{Status}
#'   \item{Targeting}
#'   \item{UnitsBought}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/LineItemService#getLineItemsByStatement}{Google Documentation for getLineItemsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getLineItemsByStatementResponse 
#' @examples
#' \dontrun{
#' filter <- "WHERE LineItemType='STANDARD' and Status='DELIVERING' LIMIT 10"
#' result <- dfp_getLineItemsByStatement(list(filterStatement=list(query=filter)))
#' }

#' @export
dfp_getLineItemsByStatement <- function(request_data, as_df=FALSE, verbose=FALSE){
  request_body <- form_request_body(service='LineItemService', root_name='getLineItemsByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getLineItemsByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' hasCustomPacingCurve
#' 
#' Returns whether a custom pacing curve has been uploaded to Google Cloud Storage for a line item. Returns whether a custom pacing curve has been uploaded to Google Cloud Storage for a line item. @@param lineItemId the ID of the line item Returns whether a custom pacing curve has been uploaded to Google Cloud Storage for a line item. @@param lineItemId the ID of the line item
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/LineItemService#hasCustomPacingCurve}{Google Documentation for hasCustomPacingCurve}
#' 
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a hasCustomPacingCurveResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_hasCustomPacingCurve()
#' }

#' @export
dfp_hasCustomPacingCurve <- function(as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='LineItemService', root_name='hasCustomPacingCurve', data=NULL)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='hasCustomPacingCurveResponse', as_df=as_df)
  return(result)
}
#' 
#' performLineItemAction
#' 
#' Performs actions on LineItem objects that match the given Statement query.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/LineItemService#performLineItemAction}{Google Documentation for performLineItemAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performLineItemActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performLineItemAction(request_data)
#' }

#' @export
dfp_performLineItemAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='LineItemService', root_name='performLineItemAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performLineItemActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updateLineItems
#' 
#' Updates the specified LineItem objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/LineItemService#updateLineItems}{Google Documentation for updateLineItems}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateLineItemsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateLineItems(request_data)
#' }

#' @export
dfp_updateLineItems <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='LineItemService', root_name='updateLineItems', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateLineItemsResponse', as_df=as_df)
  return(result)
}
#' 
