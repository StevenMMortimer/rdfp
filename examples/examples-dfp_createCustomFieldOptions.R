#' @examples
#' \dontrun{
#' request_data <- data.frame(customFieldId=rep(dfp_createCustomFields_result$id, 3),
#'                            displayName=c('Morning', 'Afternoon', 'Evening'))
#' result <- dfp_createCustomFieldOptions(request_data)
#' }