#' PlacementService
#' 
#' Provides methods for creating, updating and retrieving Placement objects.
#'
#' You can use a placement to group ad units. For example, you might have a
#' placement that focuses on sports sites, which may be spread across
#' different branches of your inventory. You might also have a "fire sale"
#' placement that includes ad units that have not been selling and are
#' consequently priced very attractively.
#' 
#' createPlacements
#' 
#' Creates new Placement objects.
#' 
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201711/PlacementService#createPlacements}{Google Documentation for createPlacements}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createPlacementsResponse 
#' @export
dfp_createPlacements <- function(request_data, as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='PlacementService', root_name='createPlacements', data=request_data)
  request <- build_soap_request(body = request_body, verbose=verbose)

  null_root <- is.null(request)
  response <- NULL
  response <- try(xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['createPlacementsResponse']]), silent=T)
  result <- if(null_root | is.null(response)){
    NULL
  } else if(is.null(response$rval)){
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
#' getPlacementsByStatement
#' 
#' Gets a PlacementPage of Placement objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{description}
#'   \item{id}
#'   \item{isAdSenseTargetingEnabled}
#'   \item{name}
#'   \item{placementCode}
#'   \item{status}
#'   \item{lastModifiedDateTime}
#' }
#' 
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201711/PlacementService#getPlacementsByStatement}{Google Documentation for getPlacementsByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getPlacementsByStatementResponse 
#' @export
dfp_getPlacementsByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='PlacementService', root_name='getPlacementsByStatement', data=request_data)
  request <- build_soap_request(body = request_body, verbose=verbose)

  null_root <- is.null(request)
  response <- NULL
  response <- try(xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getPlacementsByStatementResponse']]), silent=T)
  result <- if(null_root | is.null(response)){
    NULL
  } else if(is.null(response$rval)){
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
#' performPlacementAction
#' 
#' Performs actions on Placement objects that match the given Statement query.
#' 
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201711/PlacementService#performPlacementAction}{Google Documentation for performPlacementAction}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a performPlacementActionResponse 
#' @export
dfp_performPlacementAction <- function(request_data, as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='PlacementService', root_name='performPlacementAction', data=request_data)
  request <- build_soap_request(body = request_body, verbose=verbose)

  null_root <- is.null(request)
  response <- NULL
  response <- try(xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['performPlacementActionResponse']]), silent=T)
  result <- if(null_root | is.null(response)){
    NULL
  } else if(is.null(response$rval)){
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
#' updatePlacements
#' 
#' Updates the specified Placement objects.
#' 
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201711/PlacementService#updatePlacements}{Google Documentation for updatePlacements}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updatePlacementsResponse 
#' @export
dfp_updatePlacements <- function(request_data, as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='PlacementService', root_name='updatePlacements', data=request_data)
  request <- build_soap_request(body = request_body, verbose=verbose)

  null_root <- is.null(request)
  response <- NULL
  response <- try(xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['updatePlacementsResponse']]), silent=T)
  result <- if(null_root | is.null(response)){
    NULL
  } else if(is.null(response$rval)){
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

