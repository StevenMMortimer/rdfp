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
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201608/UserService#createUsers}{Google Documentation for createUsers}
#' 
#' @usage dfp_createUsers(request_data, as_df=TRUE, verbose=FALSE)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createUsersResponse 
#' @export
dfp_createUsers <- function(request_data, as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='UserService', root_name='createUsers', data=request_data)
  request <- build_soap_request(body = request_body, verbose=verbose)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['createUsersResponse']])
  result <- if(is.null(response$rval)){
    NULL
  } else if (as_df){
      if(length(response[grepl('rval', names(response))])==1 &
          names(response[grepl('rval', names(response))][[1]])[1]=='totalResultSetSize' &
           names(response[grepl('rval', names(response))][[1]])[2]=='startIndex'){
            ldply(tail(response[grepl('rval', names(response))]$rval, -2),
             .fun=function(x){
                 x <- xmlToList(x)
                 x[sapply(x, is.null)] <- NA
                 new_x <- as.data.frame(x, stringsAsFactors = F)
                 return(new_x)
             }, .id=NULL)
      } else {
      ldply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               x[sapply(x, is.null)] <- NA
               new_x <- as.data.frame(x, stringsAsFactors = F)
               return(new_x)
             }, .id=NULL)
      }
  } else {
      llply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               return(x)
             })
  }
  return(result)
}
#' 
#' getAllRoles
#' 
#' Returns the Role objects that are defined for the users of the network. Returns the Role objects that are defined for the users of the network. @@return the roles defined for the user's network Returns the Role objects that are defined for the users of the network. @@return the roles defined for the user's network
#' 
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201608/UserService#getAllRoles}{Google Documentation for getAllRoles}
#' 
#' @usage dfp_getAllRoles(as_df=TRUE, verbose=FALSE)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getAllRolesResponse 
#' @export
dfp_getAllRoles <- function(as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='UserService', root_name='getAllRoles', data=NULL)
  request <- build_soap_request(body = request_body, verbose=verbose)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getAllRolesResponse']])
  result <- if(is.null(response$rval)){
    NULL
  } else if (as_df){
      if(length(response[grepl('rval', names(response))])==1 &
          names(response[grepl('rval', names(response))][[1]])[1]=='totalResultSetSize' &
           names(response[grepl('rval', names(response))][[1]])[2]=='startIndex'){
            ldply(tail(response[grepl('rval', names(response))]$rval, -2),
             .fun=function(x){
                 x <- xmlToList(x)
                 x[sapply(x, is.null)] <- NA
                 new_x <- as.data.frame(x, stringsAsFactors = F)
                 return(new_x)
             }, .id=NULL)
      } else {
      ldply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               x[sapply(x, is.null)] <- NA
               new_x <- as.data.frame(x, stringsAsFactors = F)
               return(new_x)
             }, .id=NULL)
      }
  } else {
      llply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               return(x)
             })
  }
  return(result)
}
#' 
#' getCurrentUser
#' 
#' Returns the current User. Returns the current User. @@return the current user Returns the current User. @@return the current user
#' 
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201608/UserService#getCurrentUser}{Google Documentation for getCurrentUser}
#' 
#' @usage dfp_getCurrentUser(as_df=TRUE, verbose=FALSE)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getCurrentUserResponse 
#' @export
dfp_getCurrentUser <- function(as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='UserService', root_name='getCurrentUser', data=NULL)
  request <- build_soap_request(body = request_body, verbose=verbose)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getCurrentUserResponse']])
  result <- if(is.null(response$rval)){
    NULL
  } else if (as_df){
      if(length(response[grepl('rval', names(response))])==1 &
          names(response[grepl('rval', names(response))][[1]])[1]=='totalResultSetSize' &
           names(response[grepl('rval', names(response))][[1]])[2]=='startIndex'){
            ldply(tail(response[grepl('rval', names(response))]$rval, -2),
             .fun=function(x){
                 x <- xmlToList(x)
                 x[sapply(x, is.null)] <- NA
                 new_x <- as.data.frame(x, stringsAsFactors = F)
                 return(new_x)
             }, .id=NULL)
      } else {
      ldply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               x[sapply(x, is.null)] <- NA
               new_x <- as.data.frame(x, stringsAsFactors = F)
               return(new_x)
             }, .id=NULL)
      }
  } else {
      llply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               return(x)
             })
  }
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
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201608/UserService#getUsersByStatement}{Google Documentation for getUsersByStatement}
#' 
#' @usage dfp_getUsersByStatement(request_data, as_df=TRUE, verbose=FALSE)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getUsersByStatementResponse 
#' @export
dfp_getUsersByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='UserService', root_name='getUsersByStatement', data=request_data)
  request <- build_soap_request(body = request_body, verbose=verbose)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getUsersByStatementResponse']])
  result <- if(is.null(response$rval)){
    NULL
  } else if (as_df){
      if(length(response[grepl('rval', names(response))])==1 &
          names(response[grepl('rval', names(response))][[1]])[1]=='totalResultSetSize' &
           names(response[grepl('rval', names(response))][[1]])[2]=='startIndex'){
            ldply(tail(response[grepl('rval', names(response))]$rval, -2),
             .fun=function(x){
                 x <- xmlToList(x)
                 x[sapply(x, is.null)] <- NA
                 new_x <- as.data.frame(x, stringsAsFactors = F)
                 return(new_x)
             }, .id=NULL)
      } else {
      ldply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               x[sapply(x, is.null)] <- NA
               new_x <- as.data.frame(x, stringsAsFactors = F)
               return(new_x)
             }, .id=NULL)
      }
  } else {
      llply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               return(x)
             })
  }
  return(result)
}
#' 
#' performUserAction
#' 
#' Performs actions on User objects that match the given Statement query.
#' 
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201608/UserService#performUserAction}{Google Documentation for performUserAction}
#' 
#' @usage dfp_performUserAction(request_data, as_df=TRUE, verbose=FALSE)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performUserActionResponse 
#' @export
dfp_performUserAction <- function(request_data, as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='UserService', root_name='performUserAction', data=request_data)
  request <- build_soap_request(body = request_body, verbose=verbose)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['performUserActionResponse']])
  result <- if(is.null(response$rval)){
    NULL
  } else if (as_df){
      if(length(response[grepl('rval', names(response))])==1 &
          names(response[grepl('rval', names(response))][[1]])[1]=='totalResultSetSize' &
           names(response[grepl('rval', names(response))][[1]])[2]=='startIndex'){
            ldply(tail(response[grepl('rval', names(response))]$rval, -2),
             .fun=function(x){
                 x <- xmlToList(x)
                 x[sapply(x, is.null)] <- NA
                 new_x <- as.data.frame(x, stringsAsFactors = F)
                 return(new_x)
             }, .id=NULL)
      } else {
      ldply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               x[sapply(x, is.null)] <- NA
               new_x <- as.data.frame(x, stringsAsFactors = F)
               return(new_x)
             }, .id=NULL)
      }
  } else {
      llply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               return(x)
             })
  }
  return(result)
}
#' 
#' updateUsers
#' 
#' Updates the specified User objects.
#' 
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201608/UserService#updateUsers}{Google Documentation for updateUsers}
#' 
#' @usage dfp_updateUsers(request_data, as_df=TRUE, verbose=FALSE)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateUsersResponse 
#' @export
dfp_updateUsers <- function(request_data, as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='UserService', root_name='updateUsers', data=request_data)
  request <- build_soap_request(body = request_body, verbose=verbose)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['updateUsersResponse']])
  result <- if(is.null(response$rval)){
    NULL
  } else if (as_df){
      if(length(response[grepl('rval', names(response))])==1 &
          names(response[grepl('rval', names(response))][[1]])[1]=='totalResultSetSize' &
           names(response[grepl('rval', names(response))][[1]])[2]=='startIndex'){
            ldply(tail(response[grepl('rval', names(response))]$rval, -2),
             .fun=function(x){
                 x <- xmlToList(x)
                 x[sapply(x, is.null)] <- NA
                 new_x <- as.data.frame(x, stringsAsFactors = F)
                 return(new_x)
             }, .id=NULL)
      } else {
      ldply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               x[sapply(x, is.null)] <- NA
               new_x <- as.data.frame(x, stringsAsFactors = F)
               return(new_x)
             }, .id=NULL)
      }
  } else {
      llply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               return(x)
             })
  }
  return(result)
}
#' 
