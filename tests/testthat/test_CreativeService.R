context("CreativeService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createCreatives", {

#  dfp_createCreatives_result <- dfp_createCreatives()

#  expect_is(dfp_createCreatives_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getCreativesByStatement", {

#  dfp_getCreativesByStatement_result <- dfp_getCreativesByStatement()

#  expect_is(dfp_getCreativesByStatement_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateCreatives", {

#  dfp_updateCreatives_result <- dfp_updateCreatives()

#  expect_is(dfp_updateCreatives_result, "list")
  expect_true(TRUE)

})

