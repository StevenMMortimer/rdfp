#' CreativeService
#' 
#' Provides methods for adding, updating and retrieving Creative objects.
#'
#' For a creative to run, it must be associated with a LineItem managed by
#' the LineItemCreativeAssociationService.
#' 
#' createCreatives
#' 
#' Creates new Creative objects.
#' 
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201711/CreativeService#createCreatives}{Google Documentation for createCreatives}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a createCreativesResponse 
#' @export
dfp_createCreatives <- function(request_data, as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='CreativeService', root_name='createCreatives', data=request_data)
  request <- build_soap_request(body = request_body, verbose=verbose)

  null_root <- is.null(request)
  response <- NULL
  response <- try(xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['createCreativesResponse']]), silent=T)
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
#' getCreativesByStatement
#' 
#' Gets a CreativePage of Creative objects that satisfy the given Statement query. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{name}
#'   \item{advertiserId}
#'   \item{width}
#'   \item{height}
#'   \item{lastModifiedDateTime}
#' }
#' 
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201711/CreativeService#getCreativesByStatement}{Google Documentation for getCreativesByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getCreativesByStatementResponse 
#' @export
dfp_getCreativesByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='CreativeService', root_name='getCreativesByStatement', data=request_data)
  request <- build_soap_request(body = request_body, verbose=verbose)

  null_root <- is.null(request)
  response <- NULL
  response <- try(xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getCreativesByStatementResponse']]), silent=T)
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
#' updateCreatives
#' 
#' Updates the specified Creative objects.
#' 
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201711/CreativeService#updateCreatives}{Google Documentation for updateCreatives}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a updateCreativesResponse 
#' @export
dfp_updateCreatives <- function(request_data, as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='CreativeService', root_name='updateCreatives', data=request_data)
  request <- build_soap_request(body = request_body, verbose=verbose)

  null_root <- is.null(request)
  response <- NULL
  response <- try(xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['updateCreativesResponse']]), silent=T)
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
