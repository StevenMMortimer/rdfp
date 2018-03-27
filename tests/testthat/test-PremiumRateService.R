context("PremiumRateService")

skip("Reduce Total Test Runtime")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createPremiumRates", {

#  dfp_createPremiumRates_result <- dfp_createPremiumRates()

#  expect_is(dfp_createPremiumRates_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getPremiumRatesByStatement", {

   request_data <- list('filterStatement'=list('query'="WHERE pricingMethod='ANY_VALUE'"))

   dfp_getPremiumRatesByStatement_result <- dfp_getPremiumRatesByStatement(request_data)

   expect_is(dfp_getPremiumRatesByStatement_result, "data.frame")

})

test_that("dfp_updatePremiumRates", {

#  dfp_updatePremiumRates_result <- dfp_updatePremiumRates()

#  expect_is(dfp_updatePremiumRates_result, "list")
  expect_true(TRUE)

})

