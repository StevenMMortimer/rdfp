context("CreativeWrapperService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createCreativeWrappers", {

#  dfp_createCreativeWrappers_result <- dfp_createCreativeWrappers()

#  expect_is(dfp_createCreativeWrappers_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getCreativeWrappersByStatement", {

   request_data <- list('filterStatement'=list('query'="WHERE status='ACTIVE'"))

   dfp_getCreativeWrappersByStatement_result <- dfp_getCreativeWrappersByStatement(request_data)

   expect_is(dfp_getCreativeWrappersByStatement_result, "list")

})

test_that("dfp_performCreativeWrapperAction", {

#  dfp_performCreativeWrapperAction_result <- dfp_performCreativeWrapperAction()

#  expect_is(dfp_performCreativeWrapperAction_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateCreativeWrappers", {

#  dfp_updateCreativeWrappers_result <- dfp_updateCreativeWrappers()

#  expect_is(dfp_updateCreativeWrappers_result, "list")
  expect_true(TRUE)

})

