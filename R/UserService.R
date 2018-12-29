#' UserService
#' 
#' Provides operations for creating, updating and retrieving User objects.
#'
#' A user is assigned one of several different roles. Each Role type has a
#' unique ID that is used to identify that role in an organization. Role types
#' and their IDs can be retrieved by invoking #getAllRoles.
#' 
#' createUsers
#' 
#' Creates new User objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/UserService#createUsers}{Google Documentation for createUsers}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createUsersResponse 
#' @examples
#' \dontrun{
#' request_data <- data.frame(name = paste0("TestUser", 1:3),
#'                            email = paste0('testuser', 1:3, '@gmail.com'), 
#'                            roleId = rep(-1, 3))
#' result <- dfp_createUsers(request_data)
#' }
#' @export
dfp_createUsers <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='UserService', root_name='createUsers', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='createUsersResponse', as_df=as_df)
  return(result)
}
#' 
#' getAllRoles
#' 
#' Returns the Role objects that are defined for the users of the network. Returns the Role objects that are defined for the users of the network. @@return the roles defined for the user's network Returns the Role objects that are defined for the users of the network. @@return the roles defined for the user's network
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/UserService#getAllRoles}{Google Documentation for getAllRoles}
#' 
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getAllRolesResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_getAllRoles()
#' }
#' @export
dfp_getAllRoles <- function(as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='UserService', root_name='getAllRoles', data=NULL)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getAllRolesResponse', as_df=as_df)
  return(result)
}
#' 
#' getCurrentUser
#' 
#' Returns the current User. Returns the current User. @@return the current user Returns the current User. @@return the current user
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/UserService#getCurrentUser}{Google Documentation for getCurrentUser}
#' 
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getCurrentUserResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_getCurrentUser()
#' }
#' @export
dfp_getCurrentUser <- function(as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='UserService', root_name='getCurrentUser', data=NULL)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getCurrentUserResponse', as_df=as_df)
  return(result)
}
#' 
#' getUsersByStatement
#' 
#' Gets a UserPage of User objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{email}
#'   \item{id}
#'   \item{name}
#'   \item{roleId}
#'   \item{rolename}
#'   \item{status}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/UserService#getUsersByStatement}{Google Documentation for getUsersByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getUsersByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getUsersByStatement(dat)
#' }
#' @export
dfp_getUsersByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='UserService', root_name='getUsersByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getUsersByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' performUserAction
#' 
#' Performs actions on User objects that match the given Statement query.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/UserService#performUserAction}{Google Documentation for performUserAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performUserActionResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_performUserAction(request_data)
#' }
#' @export
dfp_performUserAction <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='UserService', root_name='performUserAction', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='performUserActionResponse', as_df=as_df)
  return(result)
}
#' 
#' updateUsers
#' 
#' Updates the specified User objects.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/UserService#updateUsers}{Google Documentation for updateUsers}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateUsersResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_updateUsers(request_data)
#' }
#' @export
dfp_updateUsers <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='UserService', root_name='updateUsers', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='updateUsersResponse', as_df=as_df)
  return(result)
}
#' 
