context("ExchangeRateService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createExchangeRates", {

#  dfp_createExchangeRates_result <- dfp_createExchangeRates()

#  expect_is(dfp_createExchangeRates_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getExchangeRatesByStatement", {

#  dfp_getExchangeRatesByStatement_result <- dfp_getExchangeRatesByStatement()

#  expect_is(dfp_getExchangeRatesByStatement_result, "list")
  expect_true(TRUE)

})

test_that("dfp_performExchangeRateAction", {

#  dfp_performExchangeRateAction_result <- dfp_performExchangeRateAction()

#  expect_is(dfp_performExchangeRateAction_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateExchangeRates", {

#  dfp_updateExchangeRates_result <- dfp_updateExchangeRates()

#  expect_is(dfp_updateExchangeRates_result, "list")
  expect_true(TRUE)

})

