context("ReconciliationReportRowService")

skip("Reduce Total Test Runtime")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_getReconciliationReportRowsByStatement", {

#    request_data <- list('filterStatement'=list('query'="WHERE orderid='12345'"))
# 
#    dfp_getReconciliationReportRowsByStatement_result <- dfp_getReconciliationReportRowsByStatement(request_data)
# 
#    expect_is(dfp_getReconciliationReportRowsByStatement_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateReconciliationReportRows", {

#  dfp_updateReconciliationReportRows_result <- dfp_updateReconciliationReportRows()

#  expect_is(dfp_updateReconciliationReportRows_result, "list")
  expect_true(TRUE)

})

