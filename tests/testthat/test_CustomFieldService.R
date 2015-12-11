context("CustomFieldService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createCustomFieldOptions", {

#  dfp_createCustomFieldOptions_result <- dfp_createCustomFieldOptions()

#  expect_is(dfp_createCustomFieldOptions_result, "list")
  expect_true(TRUE)

})

test_that("dfp_createCustomFields", {

#  dfp_createCustomFields_result <- dfp_createCustomFields()

#  expect_is(dfp_createCustomFields_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getCustomFieldOption", {

#  dfp_getCustomFieldOption_result <- dfp_getCustomFieldOption()

#  expect_is(dfp_getCustomFieldOption_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getCustomFieldsByStatement", {

   options(rdfp.network_code = rdfp_options$test_network_code)
   request_data <- list('filterStatement'=list('query'="WHERE isActive='TRUE'"))

   dfp_getCustomFieldsByStatement_result <- dfp_getCustomFieldsByStatement(request_data)

   expect_is(dfp_getCustomFieldsByStatement_result, "data.frame")
   options(rdfp.network_code = rdfp_options$network_code)

})

test_that("dfp_performCustomFieldAction", {

#  dfp_performCustomFieldAction_result <- dfp_performCustomFieldAction()

#  expect_is(dfp_performCustomFieldAction_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateCustomFieldOptions", {

#  dfp_updateCustomFieldOptions_result <- dfp_updateCustomFieldOptions()

#  expect_is(dfp_updateCustomFieldOptions_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateCustomFields", {

#  dfp_updateCustomFields_result <- dfp_updateCustomFields()

#  expect_is(dfp_updateCustomFields_result, "list")
  expect_true(TRUE)

})

