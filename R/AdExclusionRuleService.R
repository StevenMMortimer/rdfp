#' AdExclusionRuleService
#' 
#' Provides methods for creating, updating and retrieving AdExclusionRule
#' objects.
#' An AdExclusionRule provides a way to block specified ads from
#' showing on portions of your site. Each rule specifies the inventory on
#' which the rule is in effect, and the labels to block on that inventory.
#' 
#' createAdExclusionRules
#' 
#' Creates new AdExclusionRule objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/AdExclusionRuleService#createAdExclusionRules}{Google Documentation for createAdExclusionRules}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createAdExclusionRulesResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_createAdExclusionRules(request_data)
#' }
#' @export
dfp_createAdExclusionRules <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='AdExclusionRuleService', root_name='createAdExclusionRules', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createAdExclusionRulesResponse', as_df=as_df)
  return(result)
}
#' 
#' getAdExclusionRulesByStatement
#' 
#' Gets a AdExclusionRulePage of AdExclusionRule objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{name}
#'   \item{status}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/AdExclusionRuleService#getAdExclusionRulesByStatement}{Google Documentation for getAdExclusionRulesByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getAdExclusionRulesByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getAdExclusionRulesByStatement(dat)
#' }
#' @export
dfp_getAdExclusionRulesByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='AdExclusionRuleService', root_name='getAdExclusionRulesByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getAdExclusionRulesByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performAdExclusionRuleAction
#' 
#' Performs action on AdExclusionRule objects that satisfy the given Statement query.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/AdExclusionRuleService#performAdExclusionRuleAction}{Google Documentation for performAdExclusionRuleAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performAdExclusionRuleActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performAdExclusionRuleAction(request_data)
#' }
#' @export
dfp_performAdExclusionRuleAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='AdExclusionRuleService', root_name='performAdExclusionRuleAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performAdExclusionRuleActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updateAdExclusionRules
#' 
#' Updates the specified AdExclusionRule objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/AdExclusionRuleService#updateAdExclusionRules}{Google Documentation for updateAdExclusionRules}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateAdExclusionRulesResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateAdExclusionRules(request_data)
#' }
#' @export
dfp_updateAdExclusionRules <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='AdExclusionRuleService', root_name='updateAdExclusionRules', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateAdExclusionRulesResponse', as_df=as_df)
  return(result)
}
#' 
