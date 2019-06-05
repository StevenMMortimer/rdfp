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
#' 
#' request_data <- list(reportJobId=dfp_runReportJob_result$id)
#' dfp_getReportJobStatus_result <- dfp_getReportJobStatus(request_data)
#' dfp_getReportJobStatus_result
#' 
#' # a simple while loop can keep checking a long running request until ready
#' counter <- 0
#' while(dfp_getReportJobStatus_result != 'COMPLETED' & counter < 10){
#'   dfp_getReportJobStatus_result <- dfp_getReportJobStatus(request_data)
#'   Sys.sleep(3)
#'   counter <- counter + 1
#' }
#' }
