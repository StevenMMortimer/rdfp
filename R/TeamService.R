#' TeamService
#' 
#' Provides methods for creating, updating, and retrieving Team objects.
#'
#' Teams are used to group users in order to define access to entities such as
#' companies, inventory and orders.
#' 
#' createTeams
#' 
#' Creates new Team objects. The following fields are required: 
#' \itemize{
#'   \item{Team name}
#' } 
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/TeamService#createTeams}{Google Documentation for createTeams}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createTeamsResponse 
#' @examples
#' \dontrun{
#' request_data <- list(teams=list(name="TestTeam1", 
#'                                 description='API Test Team 1', 
#'                                 hasAllCompanies='true', 
#'                                 hasAllInventory='true',
#'                                 teamAccessType='READ_WRITE'))
#' result <- dfp_createTeams(request_data)
#' }
#' @export
dfp_createTeams <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='TeamService', root_name='createTeams', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createTeamsResponse', as_df=as_df)
  return(result)
}
#' 
#' getTeamsByStatement
#' 
#' Gets a TeamPage of Team objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{name}
#'   \item{description}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/TeamService#getTeamsByStatement}{Google Documentation for getTeamsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getTeamsByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getTeamsByStatement(dat)
#' }
#' @export
dfp_getTeamsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='TeamService', root_name='getTeamsByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getTeamsByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performTeamAction
#' 
#' Performs actions on Team objects that match the given Statement query.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/TeamService#performTeamAction}{Google Documentation for performTeamAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performTeamActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performTeamAction(request_data)
#' }
#' @export
dfp_performTeamAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='TeamService', root_name='performTeamAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performTeamActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updateTeams
#' 
#' Updates the specified Team objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/TeamService#updateTeams}{Google Documentation for updateTeams}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateTeamsResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateTeams(request_data)
#' }
#' @export
dfp_updateTeams <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='TeamService', root_name='updateTeams', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateTeamsResponse', as_df=as_df)
  return(result)
}
#' 
