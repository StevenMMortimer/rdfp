#' AdRuleService
#' 
#' Provides methods for creating, updating and retrieving AdRule objects.
#'
#' Ad rules contain data that the ad server uses to generate a playlist of
#' video ads.
#' 
#' createAdRules
#' 
#' Creates new AdRule objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/AdRuleService#createAdRules}{Google Documentation for createAdRules}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createAdRulesResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_createAdRules(request_data)
#' }

#' @export
dfp_createAdRules <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='AdRuleService', root_name='createAdRules', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createAdRulesResponse', as_df=as_df)
  return(result)
}
#' 
#' getAdRulesByStatement
#' 
#' Gets an AdRulePage of AdRule objects that satisfy the given \{@@link Statement query\}. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{name}
#'   \item{priority}
#'   \item{status}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/AdRuleService#getAdRulesByStatement}{Google Documentation for getAdRulesByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getAdRulesByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getAdRulesByStatement(dat)
#' }

#' @export
dfp_getAdRulesByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='AdRuleService', root_name='getAdRulesByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getAdRulesByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' getAdSpotsByStatement
#' 
#' Gets a AdSpotPage of AdSpot objects that satisfy the given \{@@link Statement query\}.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/AdRuleService#getAdSpotsByStatement}{Google Documentation for getAdSpotsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getAdSpotsByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getAdSpotsByStatement(dat)
#' }

#' @export
dfp_getAdSpotsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='AdRuleService', root_name='getAdSpotsByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getAdSpotsByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performAdRuleAction
#' 
#' Performs actions on AdRule objects that match the given Statement query.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/AdRuleService#performAdRuleAction}{Google Documentation for performAdRuleAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performAdRuleActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performAdRuleAction(request_data)
#' }

#' @export
dfp_performAdRuleAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='AdRuleService', root_name='performAdRuleAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performAdRuleActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updateAdRules
#' 
#' Updates the specified AdRule objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/AdRuleService#updateAdRules}{Google Documentation for updateAdRules}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateAdRulesResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateAdRules(request_data)
#' }

#' @export
dfp_updateAdRules <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='AdRuleService', root_name='updateAdRules', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateAdRulesResponse', as_df=as_df)
  return(result)
}
#' 
