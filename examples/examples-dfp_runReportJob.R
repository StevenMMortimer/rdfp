#' @examples
#' \dontrun{
#' request_data <- list(reportJob=
#'                        list(reportQuery=
#'                               list(dimensions='MONTH_AND_YEAR', 
#'                                    dimensions='AD_UNIT_ID',
#'                                    adUnitView='FLAT',
#'                                    columns='AD_SERVER_CLICKS', 
#'                                    dateRangeType='LAST_WEEK')))
#' 
#' # the result is a list and most importantly the ID is included for checking its status
#' dfp_runReportJob_result <- dfp_runReportJob(request_data)
#' dfp_runReportJob_result$id
#' }
