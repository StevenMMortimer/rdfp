#' ForecastService
#' 
#' Provides methods for estimating traffic (clicks/impressions) for line
#' items. Forecasts can be provided for LineItem objects that exist in the
#' system or which have not had an ID set yet. <h4>Test network behavior</h4>
#'
#' Test networks are unable to provide forecasts that would be comparable
#' to the production environment because forecasts require traffic history.
#' For test networks, a consistent behavior can be expected for forecast
#' requests, according to the following rules: <table> <tr> <th
#' colspan="2">Inputs<br/>(LineItem Fields)</th> <th
#' colspan="4">Outputs<br/>(Forecast Fields)</th> </tr> <tr>
#' <th>LineItem#lineItemType lineItemType</th> <th>LineItem#unitsBought
#' unitsBought</th> <th>Forecast#availableUnits availableUnits</th>
#' <th>Forecast#forecastUnits forecastUnits (matchedUnits)</th>
#' <th>Forecast#deliveredUnits deliveredUnits</th> <th>Exception</td> </tr>
#' <tr> <td>Sponsorship</td> <td>13</td> <td>&ndash;&ndash;</td>
#' <td>&ndash;&ndash;</td> <td>&ndash;&ndash;</td> <td>
#' ForecastError.Reason#NO_FORECAST_YET NO_FORECAST_YET </td> </tr> <tr>
#' <td>Sponsorship</td> <td>20</td> <td>&ndash;&ndash;</td>
#' <td>&ndash;&ndash;</td> <td>&ndash;&ndash;</td> <td>
#' ForecastError.Reason#SERVER_NOT_AVAILABLE SERVER_NOT_AVAILABLE </td> </tr>
#' <tr> <td>Sponsorship</td> <td>50</td> <td>1,200,000</td> <td>6,000,000</td>
#' <td>600,000<br/>For prospective: 0</td> <td>&ndash;&ndash;</td> </tr> <tr>
#' <td>Sponsorship</td> <td>!= 20 and <br/> != 50</td> <td>1,200,000</td>
#' <td>1,200,000</td> <td>600,000<br/>For prospective: 0</td>
#' <td>&ndash;&ndash;</td> </tr> <tr> <td>Not Sponsorship</td> <td>&lt;=
#' 500,000</td> <td>3 * unitsBought / 2</td> <td>unitsBought * 6</td>
#' <td>600,000<br/>For prospective: 0</td> <td>&ndash;&ndash;</td> </tr> <tr>
#' <td>Not Sponsorship</td> <td>&gt; 500,000 and &lt;= 1,000,000</td>
#' <td>unitsBought / 2</td> <td>unitsBought * 6</td> <td>600,000<br/>For
#' prospective: 0</td> <td>&ndash;&ndash;</td> </tr> <tr> <td>Not
#' Sponsorship</td> <td>&gt; 1,000,000 and &lt;= 1,500,000</td>
#' <td>unitsBought / 2</td> <td>3 * unitsBought / 2</td> <td>600,000<br/>For
#' prospective: 0</td> <td>&ndash;&ndash;</td> </tr> <tr> <td>Not
#' Sponsorship</td> <td>&gt; 1,500,000</td> <td>unitsBought / 4</td> <td>3 *
#' unitsBought / 2</td> <td>600,000<br/>For prospective: 0</td>
#' <td>&ndash;&ndash;</td> </tr> </table>
#' 
#' getAvailabilityForecast
#' 
#' Gets the availability forecast for a ProspectiveLineItem. An availability forecast reports the maximum number of available units that the line item can book, and the total number of units matching the line item's targeting. <p>Note: Beginning in v201502, this replaces the previous getForecast method.
#' 
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201608/ForecastService#getAvailabilityForecast}{Google Documentation for getAvailabilityForecast}
#' 
#' @usage dfp_getAvailabilityForecast(request_data, as_df=TRUE, verbose=FALSE)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getAvailabilityForecastResponse 
#' @export
dfp_getAvailabilityForecast <- function(request_data, as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='ForecastService', root_name='getAvailabilityForecast', data=request_data)
  request <- build_soap_request(body = request_body, verbose=verbose)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getAvailabilityForecastResponse']])
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
#' getAvailabilityForecastById
#' 
#' Gets an AvailabilityForecast for an existing LineItem object. An availability forecast reports the maximum number of available units that the line item can be booked with, and also the total number of units matching the line item's targeting. <p>Only line items having type LineItemType SPONSORSHIP or LineItemType STANDARD are valid. Other types will result in ReservationDetailsError.Reason LINE_ITEM_TYPE_NOT_ALLOWED. <p>Note: Beginning in v201502, this replaces the previous getForecastById method.
#' 
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201608/ForecastService#getAvailabilityForecastById}{Google Documentation for getAvailabilityForecastById}
#' 
#' @usage dfp_getAvailabilityForecastById(request_data, as_df=TRUE, verbose=FALSE)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getAvailabilityForecastByIdResponse 
#' @export
dfp_getAvailabilityForecastById <- function(request_data, as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='ForecastService', root_name='getAvailabilityForecastById', data=request_data)
  request <- build_soap_request(body = request_body, verbose=verbose)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getAvailabilityForecastByIdResponse']])
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
#' getDeliveryForecast
#' 
#' Gets the delivery forecast for a list of ProspectiveLineItem objects in a single delivery simulation with line items potentially contending with each other. A delivery forecast reports the number of units that will be delivered to each line item given the line item goals and contentions from other line items.
#' 
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201608/ForecastService#getDeliveryForecast}{Google Documentation for getDeliveryForecast}
#' 
#' @usage dfp_getDeliveryForecast(request_data, as_df=TRUE, verbose=FALSE)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getDeliveryForecastResponse 
#' @export
dfp_getDeliveryForecast <- function(request_data, as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='ForecastService', root_name='getDeliveryForecast', data=request_data)
  request <- build_soap_request(body = request_body, verbose=verbose)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getDeliveryForecastResponse']])
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
#' getDeliveryForecastByIds
#' 
#' Gets the delivery forecast for a list of existing LineItem objects in a single delivery simulation with line items potentially contending with each other. A delivery forecast reports the number of units that will be delivered to each line item given the line item goals and contentions from other line items.
#' 
#' @importFrom plyr llply ldply
#' @importFrom utils tail
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201608/ForecastService#getDeliveryForecastByIds}{Google Documentation for getDeliveryForecastByIds}
#' 
#' @usage dfp_getDeliveryForecastByIds(request_data, as_df=TRUE, verbose=FALSE)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getDeliveryForecastByIdsResponse 
#' @export
dfp_getDeliveryForecastByIds <- function(request_data, as_df=TRUE, verbose=FALSE){
 request_body <- make_request_body(service='ForecastService', root_name='getDeliveryForecastByIds', data=request_data)
  request <- build_soap_request(body = request_body, verbose=verbose)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getDeliveryForecastByIdsResponse']])
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
