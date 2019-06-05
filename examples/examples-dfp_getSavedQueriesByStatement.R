#' @examples
#' \dontrun{
#' request_data <- list(filterStatement=list(query="WHERE id = 936165016"))
#' this_result <- dfp_getSavedQueriesByStatement(request_data)
#' this_report_query <- this_result$reportQuery
#' 
#' # resubmit the report job with the saved query
#' report_data <- list(reportJob=list(reportQuery = this_report_query))
#' report_data <- dfp_full_report_wrapper(report_data)
#' }
