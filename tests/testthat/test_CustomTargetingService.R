context("CustomTargetingService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createCustomTargetingKeys", {

#  dfp_createCustomTargetingKeys_result <- dfp_createCustomTargetingKeys()

#  expect_is(dfp_createCustomTargetingKeys_result, "list")
  expect_true(TRUE)

})

test_that("dfp_createCustomTargetingValues", {

#  dfp_createCustomTargetingValues_result <- dfp_createCustomTargetingValues()

#  expect_is(dfp_createCustomTargetingValues_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getCustomTargetingKeysByStatement", {

   request_data <- list('filterStatement'=list('query'="WHERE status='ACTIVE'"))

   dfp_getCustomTargetingKeysByStatement_result <- dfp_getCustomTargetingKeysByStatement(request_data)

   expect_is(dfp_getCustomTargetingKeysByStatement_result, "list")

})

test_that("dfp_getCustomTargetingValuesByStatement", {

   request_data <- list('filterStatement'=list('query'="WHERE status='ACTIVE'"))

   dfp_getCustomTargetingValuesByStatement_result <- dfp_getCustomTargetingValuesByStatement(request_data)

   expect_is(dfp_getCustomTargetingValuesByStatement_result, "list")

})

test_that("dfp_performCustomTargetingKeyAction", {

#  dfp_performCustomTargetingKeyAction_result <- dfp_performCustomTargetingKeyAction()

#  expect_is(dfp_performCustomTargetingKeyAction_result, "list")
  expect_true(TRUE)

})

test_that("dfp_performCustomTargetingValueAction", {

#  dfp_performCustomTargetingValueAction_result <- dfp_performCustomTargetingValueAction()

#  expect_is(dfp_performCustomTargetingValueAction_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateCustomTargetingKeys", {

#  dfp_updateCustomTargetingKeys_result <- dfp_updateCustomTargetingKeys()

#  expect_is(dfp_updateCustomTargetingKeys_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateCustomTargetingValues", {

#  dfp_updateCustomTargetingValues_result <- dfp_updateCustomTargetingValues()

#  expect_is(dfp_updateCustomTargetingValues_result, "list")
  expect_true(TRUE)

})

