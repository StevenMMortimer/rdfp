#' @examples
#' \donttest{
#' request_data <- list('filterStatement'=list('query'="WHERE name = 'TestCompany1'"))
#' dfp_getCompaniesByStatement_result <- dfp_getCompaniesByStatement(request_data) 
#' 
#' request_data <- list(list(name='TestOrder', 
#'                           startDateTime=list(date=list(year=2018, month=12, day=1), 
#'                                              hour=0,
#'                                              minute=0,
#'                                              second=0,
#'                                              timeZoneID='America/New_York'),
#'                           endDateTime=list(date=list(year=2018, month=12, day=31), 
#'                                            hour=23,
#'                                            minute=59,
#'                                            second=59,
#'                                            timeZoneID='America/New_York'), 
#'                           notes='API Test Order', 
#'                           externalOrderId=99999, 
#'                           advertiserId=dfp_getCompaniesByStatement_result$id, 
#'                           traffickerId=dfp_getCurrentUser()$id))
#' dfp_createOrders_result <- dfp_createOrders(request_data)
#' }