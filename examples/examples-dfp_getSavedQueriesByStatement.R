#' @examples
#' \donttest{
#' request_data <- list(filterStatement=list(query="WHERE id = 936165016"))
#' this_result <- dfp_getSavedQueriesByStatement(request_data, as_df=FALSE)
#' this_report_query <- this_result[[1]]$reportQuery
#' 
#' # resubmit the report job with the saved query
#' report_data <- list(reportJob=list(reportQuery = this_report_query))
#' report_data <- dfp_full_report_wrapper(report_data)
#' }