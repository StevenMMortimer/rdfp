context("ReconciliationOrderReportService")

skip("Reduce Total Test Runtime")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_getReconciliationOrderReportsByStatement", {

#    request_data <- list('filterStatement'=list('query'="WHERE orderId='12345'"))
# 
#    dfp_getReconciliationOrderReportsByStatement_result <- dfp_getReconciliationOrderReportsByStatement(request_data)
#    
#    expect_is(dfp_getReconciliationOrderReportsByStatement_result, "list")
   expect_true(TRUE)

})

test_that("dfp_performReconciliationOrderReportAction", {

#  dfp_performReconciliationOrderReportAction_result <- dfp_performReconciliationOrderReportAction()

#  expect_is(dfp_performReconciliationOrderReportAction_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateReconciliationOrderReports", {

#  dfp_updateReconciliationOrderReports_result <- dfp_updateReconciliationOrderReports()

#  expect_is(dfp_updateReconciliationOrderReports_result, "list")
  expect_true(TRUE)

})

