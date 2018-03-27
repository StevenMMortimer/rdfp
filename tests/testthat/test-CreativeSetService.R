context("CreativeSetService")

skip("Reduce Total Test Runtime")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createCreativeSet", {

#  dfp_createCreativeSet_result <- dfp_createCreativeSet()

#  expect_is(dfp_createCreativeSet_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getCreativeSetsByStatement", {

   request_data <- list('statement'=list('query'="WHERE name='Test'"))

   dfp_getCreativeSetsByStatement_result <- dfp_getCreativeSetsByStatement(request_data)

   expect_is(dfp_getCreativeSetsByStatement_result, "data.frame")

})

test_that("dfp_updateCreativeSet", {

#  dfp_updateCreativeSet_result <- dfp_updateCreativeSet()

#  expect_is(dfp_updateCreativeSet_result, "list")
  expect_true(TRUE)

})

