context("ReportService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
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
                                          startDate=list(year=2015, month=10, day=1),
                                          endDate=list(year=2015, month=10, day=31),
                                          dateRangeType='CUSTOM_DATE')))
# run report
dfp_runReportJob_result <- dfp_runReportJob(report_request_data)

# check status
status_request_data <- list(reportJobId=dfp_runReportJob_result$id)
dfp_getReportJobStatus_result <- dfp_getReportJobStatus(status_request_data, as_df=F)$rval

# continually check status until complete
counter <- 0
while(dfp_getReportJobStatus_result!='COMPLETED' & counter < 10){
  dfp_getReportJobStatus_result <- dfp_getReportJobStatus(status_request_data, as_df=F)$rval
  Sys.sleep(3)
  counter <- counter + 1
}

# get report URL
url_request_data <- list(reportJobId=dfp_runReportJob_result$id, exportFormat='CSV_DUMP')
dfp_getReportDownloadURL_result <- dfp_getReportDownloadURL(url_request_data, as_df=F)$rval



test_that("dfp_runReportJob", {
  
  expect_is(dfp_runReportJob_result, "list")
  expect_true(all(c('id', 'reportQuery', 'reportJobStatus') %in% names(dfp_runReportJob_result)))
  
})

test_that("dfp_getReportJobStatus", {
  
  expect_is(dfp_getReportJobStatus_result, "character")
  
})

test_that("dfp_getReportDownloadURL", {
  
  expect_is(dfp_getReportDownloadURL_result, "character")
  expect_true(grepl('^https://storage.googleapis.com/dfp-report-export/', dfp_getReportDownloadURL_result))
  
  report_dat <- dfp_report_url_to_dataframe(report_url=dfp_getReportDownloadURL_result)
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
  dfp_getReportDownloadUrlWithOptions_result <- dfp_getReportDownloadUrlWithOptions(request_data, as_df=F)$rval
  
  expect_is(dfp_getReportDownloadUrlWithOptions_result, "character")
  expect_true(grepl('^https://storage.googleapis.com/dfp-report-export/', dfp_getReportDownloadUrlWithOptions_result))
  
  report_dat <- dfp_report_url_to_dataframe(report_url=dfp_getReportDownloadUrlWithOptions_result, 
                                            exportFormat='TSV')
  expect_is(report_dat, "data.frame")
  expect_equal(names(report_dat), c("Month.and.year", 
                                    "Ad.unit.ID", 
                                    "Ad.unit", 
                                    "Total.impressions"))
  
  
  request_data <- list(reportJobId=dfp_runReportJob_result$id, 
                       reportDownloadOptions=list(exportFormat='CSV_EXCEL', 
                                                  includeTotalsRow='true'))
  dfp_getReportDownloadUrlWithOptions_result <- dfp_getReportDownloadUrlWithOptions(request_data)
  
  expect_is(dfp_getReportDownloadUrlWithOptions_result, "character")
  expect_true(grepl('^https://storage.googleapis.com/dfp-report-export/', dfp_getReportDownloadUrlWithOptions_result))
  
  report_dat <- dfp_report_url_to_dataframe(report_url=dfp_getReportDownloadUrlWithOptions_result, 
                                            exportFormat='CSV_EXCEL')
  expect_is(report_dat, "data.frame")
  expect_equal(names(report_dat), c("Month.and.year", 
                                    "Ad.unit.ID", 
                                    "Ad.unit", 
                                    "Total.impressions"))
  
  request_data <- list(reportJobId=dfp_runReportJob_result$id, 
                       reportDownloadOptions=list(exportFormat='CSV_DUMP', 
                                                  includeTotalsRow='true'))
  dfp_getReportDownloadUrlWithOptions_result <- dfp_getReportDownloadUrlWithOptions(request_data)
  
  expect_is(dfp_getReportDownloadUrlWithOptions_result, "character")
  expect_true(grepl('^https://storage.googleapis.com/dfp-report-export/', dfp_getReportDownloadUrlWithOptions_result))
  
  report_dat <- dfp_report_url_to_dataframe(report_url=dfp_getReportDownloadUrlWithOptions_result, 
                                            exportFormat='CSV_DUMP')
  expect_is(report_dat, "data.frame")
  expect_equal(names(report_dat), c("Dimension.MONTH_AND_YEAR", 
                                    "Dimension.AD_UNIT_ID", 
                                    "Dimension.AD_UNIT_NAME", 
                                    "Column.TOTAL_INVENTORY_LEVEL_IMPRESSIONS"))
  expect_equal(sum(report_dat$Dimension.MONTH_AND_YEAR=='Total'), 1)
  
})

test_that("dfp_full_report_wrapper", {
  
  report_dat <- dfp_full_report_wrapper(report_request_data)
  
  expect_is(report_dat, "data.frame")
  expect_equal(names(report_dat), c("Dimension.MONTH_AND_YEAR", 
                                    "Dimension.AD_UNIT_ID", 
                                    "Dimension.AD_UNIT_NAME", 
                                    "Column.TOTAL_INVENTORY_LEVEL_IMPRESSIONS"))
})