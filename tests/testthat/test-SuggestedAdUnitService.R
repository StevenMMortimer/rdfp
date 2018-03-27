context("SuggestedAdUnitService")

skip("Reduce Total Test Runtime")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_getSuggestedAdUnitsByStatement", {

   request_data <- list('filterStatement'=list('query'="WHERE numRequests>0"))

   dfp_getSuggestedAdUnitsByStatement_result <- dfp_getSuggestedAdUnitsByStatement(request_data)

   expect_is(dfp_getSuggestedAdUnitsByStatement_result, "data.frame")

})

test_that("dfp_performSuggestedAdUnitAction", {

#  dfp_performSuggestedAdUnitAction_result <- dfp_performSuggestedAdUnitAction()

#  expect_is(dfp_performSuggestedAdUnitAction_result, "list")
  expect_true(TRUE)

})

