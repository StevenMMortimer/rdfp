#' @examples
#' \dontrun{
#' filter <- "WHERE Status='DELIVERING' LIMIT 1"
#' one_li <- dfp_getLineItemsByStatement(list(filterStatement=list(query=filter)))[[1]]
#' 
#' # not specifying forecastOptions brings up NotNullError.ARG2_NULL, so send, but keep null
#' request_data <- list(lineItemIds=one_li$id,
#'                      forecastOptions=list(ignoredLineItemIds=NULL))
#' result <- dfp_getDeliveryForecastByIds(request_data)
#' }
