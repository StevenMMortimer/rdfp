#' @examples
#' \donttest{
#' filter <- "WHERE Status='DELIVERING' LIMIT 1"
#' one_li <- dfp_getLineItemsByStatement(list(filterStatement=list(query=filter)))[[1]]
#' hypothetical_line_item <- list(lineItem=
#'                                list(id=one_li$id,
#'                                     startDateTime=one_li$startDateTime,
#'                                     endDateTime=dfp_date_to_list(Sys.Date()+100),
#'                                     lineItemType=one_li$lineItemType,
#'                                     costType=one_li$costType, 
#'                                     primaryGoal=one_li$primaryGoal, 
#'                                     targeting=one_li$targeting))
#' request_data <- list(lineItems=hypothetical_line_item,
#'                      forecastOptions=list(ignoredLineItemIds=NULL))
#' dfp_getDeliveryForecast_result <- dfp_getDeliveryForecast(request_data)
#' }