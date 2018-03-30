context("ReportService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

report_request_data <- list(reportJob=
                              list(reportQuery=
                                     list(dimensions='MONTH_AND_YEAR', 
                                          dimensions='AD_UNIT_ID',
                                          adUnitView='FLAT',
                                          columns='TOTAL_INVENTORY_LEVEL_IMPRESSIONS', 
                                          dateRangeType='LAST_MONTH')))

# run report
dfp_runReportJob_result <- dfp_runReportJob(report_request_data)

# check status
status_request_data <- list(reportJobId=dfp_runReportJob_result$id)
dfp_getReportJobStatus_result <- dfp_getReportJobStatus(status_request_data, as_df=FALSE)

# continually check status until complete
counter <- 0
while(dfp_getReportJobStatus_result[[1]] != 'COMPLETED' & counter < 20){
  dfp_getReportJobStatus_result <- dfp_getReportJobStatus(status_request_data, as_df=FALSE)
  Sys.sleep(3)
  counter <- counter + 1
}

# get report URL
url_request_data <- list(reportJobId=dfp_runReportJob_result$id, exportFormat='CSV_DUMP')
dfp_getReportDownloadURL_result <- dfp_getReportDownloadURL(url_request_data, as_df=FALSE)

test_that("dfp_runReportJob", {
  
  expect_is(dfp_runReportJob_result, "data.frame")
  expect_true(all(c('id') %in% names(dfp_runReportJob_result)))
  
})

test_that("dfp_getReportJobStatus", {
  expect_equal(dfp_getReportJobStatus_result[[1]], "COMPLETED")
})

test_that("dfp_getReportDownloadURL", {
  
  expect_is(dfp_getReportDownloadURL_result[[1]], "character")
  expect_true(grepl('^https://storage.googleapis.com/dfp-report-export/', dfp_getReportDownloadURL_result[[1]]))
  
  report_dat <- dfp_report_url_to_dataframe(report_url=dfp_getReportDownloadURL_result[[1]])
  expect_is(report_dat, "data.frame")
  expect_equal(names(report_dat), c("Dimension.MONTH_AND_YEAR", 
                                    "Dimension.AD_UNIT_ID", 
                                    "Dimension.AD_UNIT_NAME", 
                                    "Column.TOTAL_INVENTORY_LEVEL_IMPRESSIONS"))
})

test_that("dfp_getReportDownloadUrlWithOptions", {
  
  request_data <- list(reportJobId=dfp_runReportJob_result$id, 
                       reportDownloadOptions=list(exportFormat='TSV', 
                                                  includeTotalsRow='true'))
  dfp_getReportDownloadUrlWithOptions_result <- dfp_getReportDownloadUrlWithOptions(request_data)
  
  expect_is(dfp_getReportDownloadUrlWithOptions_result[[1]], "character")
  expect_true(grepl('^https://storage.googleapis.com/dfp-report-export/', dfp_getReportDownloadUrlWithOptions_result[[1]]))
  
  report_dat <- dfp_report_url_to_dataframe(report_url=dfp_getReportDownloadUrlWithOptions_result[[1]], 
                                            exportFormat='TSV')
  expect_is(report_dat, "tbl_df")
  expect_equal(names(report_dat), c("Month and year", 
                                    "Ad unit ID", 
                                    "Ad unit", 
                                    "Total impressions"))
  
  request_data <- list(reportJobId=dfp_runReportJob_result$id, 
                       reportDownloadOptions=list(exportFormat='CSV_DUMP', 
                                                  includeTotalsRow='true'))
  dfp_getReportDownloadUrlWithOptions_result <- dfp_getReportDownloadUrlWithOptions(request_data)
  
  expect_is(dfp_getReportDownloadUrlWithOptions_result[[1]], "character")
  expect_true(grepl('^https://storage.googleapis.com/dfp-report-export/', dfp_getReportDownloadUrlWithOptions_result[[1]]))
  
  report_dat <- dfp_report_url_to_dataframe(report_url=dfp_getReportDownloadUrlWithOptions_result[[1]], 
                                            exportFormat='CSV_DUMP')
  expect_is(report_dat, "tbl_df")
  expect_equal(names(report_dat), c("Dimension.MONTH_AND_YEAR", 
                                    "Dimension.AD_UNIT_ID", 
                                    "Dimension.AD_UNIT_NAME", 
                                    "Column.TOTAL_INVENTORY_LEVEL_IMPRESSIONS"))
  expect_equal(sum(report_dat$Dimension.MONTH_AND_YEAR=='Total'), 1)
})

test_that("dfp_full_report_wrapper", {
  
  report_dat <- dfp_full_report_wrapper(report_request_data)
  
  expect_is(report_dat, "tbl_df")
  expect_equal(names(report_dat), c("Dimension.MONTH_AND_YEAR", 
                                    "Dimension.AD_UNIT_ID", 
                                    "Dimension.AD_UNIT_NAME", 
                                    "Column.TOTAL_INVENTORY_LEVEL_IMPRESSIONS"))
})