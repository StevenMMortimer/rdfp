#' UserTeamAssociationService
#' 
#' Provides methods for creating, updating, and retrieving UserTeamAssociation
#' objects.
#' UserTeamAssociation objects are used to add users to teams in
#' order to define access to entities such as companies, inventory and orders
#' and to override the team's access type to orders for a user.
#' 
#' createUserTeamAssociations
#' 
#' Creates new UserTeamAssociation objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/UserTeamAssociationService#createUserTeamAssociations}{Google Documentation for createUserTeamAssociations}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createUserTeamAssociationsResponse 
#' @examples
#' \dontrun{
#' request_data <- data.frame(teamid=rep(dfp_createTeams_result$id, 3),
#'                            userid=dfp_createUsers_result$id)
#' result <- dfp_createUserTeamAssociations(request_data)
#' }
#' @export
dfp_createUserTeamAssociations <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='UserTeamAssociationService', root_name='createUserTeamAssociations', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createUserTeamAssociationsResponse', as_df=as_df)
  return(result)
}
#' 
#' getUserTeamAssociationsByStatement
#' 
#' Gets a UserTeamAssociationPage of UserTeamAssociation objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{userId}
#'   \item{teamId}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/UserTeamAssociationService#getUserTeamAssociationsByStatement}{Google Documentation for getUserTeamAssociationsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getUserTeamAssociationsByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getUserTeamAssociationsByStatement(dat)
#' }
#' @export
dfp_getUserTeamAssociationsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='UserTeamAssociationService', root_name='getUserTeamAssociationsByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getUserTeamAssociationsByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performUserTeamAssociationAction
#' 
#' Performs actions on UserTeamAssociation objects that match the given Statement query.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/UserTeamAssociationService#performUserTeamAssociationAction}{Google Documentation for performUserTeamAssociationAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performUserTeamAssociationActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performUserTeamAssociationAction(request_data)
#' }
#' @export
dfp_performUserTeamAssociationAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='UserTeamAssociationService', root_name='performUserTeamAssociationAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performUserTeamAssociationActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updateUserTeamAssociations
#' 
#' Updates the specified UserTeamAssociation objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/UserTeamAssociationService#updateUserTeamAssociations}{Google Documentation for updateUserTeamAssociations}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateUserTeamAssociationsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateUserTeamAssociations(request_data)
#' }
#' @export
dfp_updateUserTeamAssociations <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='UserTeamAssociationService', root_name='updateUserTeamAssociations', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateUserTeamAssociationsResponse', as_df=as_df)
  return(result)
}
#' 
