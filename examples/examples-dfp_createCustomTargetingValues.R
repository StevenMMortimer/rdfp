#' @examples
#' \donttest{
#' request_data <- data.frame(customTargetingKeyId=rep(created_targeting_key$id,2),
#'                            name=c('TestValue1','TestValue2'), 
#'                            displayName=c('TestValue1','TestValue2'), 
#'                            matchType=rep('EXACT', 2))
#' result <- dfp_createCustomTargetingValues(request_data)
#' }