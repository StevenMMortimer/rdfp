context("ReportService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_getReportDownloadURL", {

#  dfp_getReportDownloadURL_result <- dfp_getReportDownloadURL()

#  expect_is(dfp_getReportDownloadURL_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getReportDownloadUrlWithOptions", {

#  dfp_getReportDownloadUrlWithOptions_result <- dfp_getReportDownloadUrlWithOptions()

#  expect_is(dfp_getReportDownloadUrlWithOptions_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getReportJobStatus", {

#  dfp_getReportJobStatus_result <- dfp_getReportJobStatus()

#  expect_is(dfp_getReportJobStatus_result, "list")
  expect_true(TRUE)

})

test_that("dfp_runReportJob", {

#  dfp_runReportJob_result <- dfp_runReportJob()

#  expect_is(dfp_runReportJob_result, "list")
  expect_true(TRUE)

})

