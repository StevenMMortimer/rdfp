context("RateCardService")

skip("Reduce Total Test Runtime")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createRateCards", {

#  dfp_createRateCards_result <- dfp_createRateCards()

#  expect_is(dfp_createRateCards_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getRateCardsByStatement", {

   request_data <- list('filterStatement'=list('query'="WHERE status='ACTIVE'"))

   dfp_getRateCardsByStatement_result <- dfp_getRateCardsByStatement(request_data)
   expect_is(dfp_getRateCardsByStatement_result, "data.frame")
})

test_that("dfp_performRateCardAction", {

#  dfp_performRateCardAction_result <- dfp_performRateCardAction()

#  expect_is(dfp_performRateCardAction_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateRateCards", {

#  dfp_updateRateCards_result <- dfp_updateRateCards()

#  expect_is(dfp_updateRateCards_result, "list")
  expect_true(TRUE)

})

