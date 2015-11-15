context("BaseRateService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createBaseRates", {

#  dfp_createBaseRates_result <- dfp_createBaseRates()

#  expect_is(dfp_createBaseRates_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getBaseRatesByStatement", {

#  dfp_getBaseRatesByStatement_result <- dfp_getBaseRatesByStatement()

#  expect_is(dfp_getBaseRatesByStatement_result, "list")
  expect_true(TRUE)

})

test_that("dfp_performBaseRateAction", {

#  dfp_performBaseRateAction_result <- dfp_performBaseRateAction()

#  expect_is(dfp_performBaseRateAction_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateBaseRates", {

#  dfp_updateBaseRates_result <- dfp_updateBaseRates()

#  expect_is(dfp_updateBaseRates_result, "list")
  expect_true(TRUE)

})

