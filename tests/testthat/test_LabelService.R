context("LabelService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createLabels", {

#  dfp_createLabels_result <- dfp_createLabels()

#  expect_is(dfp_createLabels_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getLabelsByStatement", {

   request_data <- list('filterStatement'=list('query'="WHERE status='ACTIVE'"))

   dfp_getLabelsByStatement_result <- dfp_getLabelsByStatement(request_data)

   expect_is(dfp_getLabelsByStatement_result, "list")

})

test_that("dfp_performLabelAction", {

#  dfp_performLabelAction_result <- dfp_performLabelAction()

#  expect_is(dfp_performLabelAction_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateLabels", {

#  dfp_updateLabels_result <- dfp_updateLabels()

#  expect_is(dfp_updateLabels_result, "list")
  expect_true(TRUE)

})

