#' CustomFieldService
#' 
#' Provides methods for the creation and management of CustomField objects.
#' 
#' createCustomFieldOptions
#' 
#' Creates new CustomFieldOption objects. The following fields are required: 
#' \itemize{
#'   \item{CustomFieldOption displayName}
#'   \item{CustomFieldOption customFieldId}
#' } 
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/CustomFieldService#createCustomFieldOptions}{Google Documentation for createCustomFieldOptions}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createCustomFieldOptionsResponse 
#' @examples
#' \dontrun{
#' request_data <- data.frame(customFieldId=rep(dfp_createCustomFields_result$id, 3),
#'                            displayName=c('Morning', 'Afternoon', 'Evening'))
#' result <- dfp_createCustomFieldOptions(request_data)
#' }

#' @export
dfp_createCustomFieldOptions <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CustomFieldService', root_name='createCustomFieldOptions', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createCustomFieldOptionsResponse', as_df=as_df)
  return(result)
}
#' 
#' createCustomFields
#' 
#' Creates new CustomField objects. The following fields are required: 
#' \itemize{
#'   \item{CustomField name}
#'   \item{CustomField entityType}
#'   \item{CustomField dataType}
#'   \item{CustomField visibility}
#' } 
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/CustomFieldService#createCustomFields}{Google Documentation for createCustomFields}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createCustomFieldsResponse 
#' @examples
#' \dontrun{
#' request_data <- data.frame(name='Timing',
#'                            description='The time that this creative runs.', 
#'                            entityType='CREATIVE',
#'                            dataType='DROP_DOWN',
#'                            visibility='FULL')
#' result <- dfp_createCustomFields(request_data)
#' }

#' @export
dfp_createCustomFields <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CustomFieldService', root_name='createCustomFields', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createCustomFieldsResponse', as_df=as_df)
  return(result)
}
#' 
#' getCustomFieldOption
#' 
#' Returns the CustomFieldOption uniquely identified by the given ID.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/CustomFieldService#getCustomFieldOption}{Google Documentation for getCustomFieldOption}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getCustomFieldOptionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_getCustomFieldOption(request_data)
#' }

#' @export
dfp_getCustomFieldOption <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CustomFieldService', root_name='getCustomFieldOption', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getCustomFieldOptionResponse', as_df=as_df)
  return(result)
}
#' 
#' getCustomFieldsByStatement
#' 
#' Gets a CustomFieldPage of CustomField objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{entityType}
#'   \item{name}
#'   \item{isActive}
#'   \item{visibility}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/CustomFieldService#getCustomFieldsByStatement}{Google Documentation for getCustomFieldsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getCustomFieldsByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getCustomFieldsByStatement(dat)
#' }

#' @export
dfp_getCustomFieldsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CustomFieldService', root_name='getCustomFieldsByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getCustomFieldsByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performCustomFieldAction
#' 
#' Performs actions on CustomField objects that match the given Statement query.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/CustomFieldService#performCustomFieldAction}{Google Documentation for performCustomFieldAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performCustomFieldActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performCustomFieldAction(request_data)
#' }

#' @export
dfp_performCustomFieldAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CustomFieldService', root_name='performCustomFieldAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performCustomFieldActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updateCustomFieldOptions
#' 
#' Updates the specified CustomFieldOption objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/CustomFieldService#updateCustomFieldOptions}{Google Documentation for updateCustomFieldOptions}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateCustomFieldOptionsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateCustomFieldOptions(request_data)
#' }

#' @export
dfp_updateCustomFieldOptions <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CustomFieldService', root_name='updateCustomFieldOptions', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateCustomFieldOptionsResponse', as_df=as_df)
  return(result)
}
#' 
#' updateCustomFields
#' 
#' Updates the specified CustomField objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/CustomFieldService#updateCustomFields}{Google Documentation for updateCustomFields}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateCustomFieldsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateCustomFields(request_data)
#' }

#' @export
dfp_updateCustomFields <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='CustomFieldService', root_name='updateCustomFields', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateCustomFieldsResponse', as_df=as_df)
  return(result)
}
#' 
