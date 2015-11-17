context("ProductTemplateService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createProductTemplates", {

#  dfp_createProductTemplates_result <- dfp_createProductTemplates()

#  expect_is(dfp_createProductTemplates_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getProductTemplatesByStatement", {

   request_data <- list('statement'=list('query'="WHERE status='ACTIVE'"))

   expect_message(try(dfp_getProductTemplatesByStatement(request_data), silent=T), 'MISSING_FEATURE')
   expect_error(dfp_getProductTemplatesByStatement(request_data))

})

test_that("dfp_performProductTemplateAction", {

#  dfp_performProductTemplateAction_result <- dfp_performProductTemplateAction()

#  expect_is(dfp_performProductTemplateAction_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateProductTemplates", {

#  dfp_updateProductTemplates_result <- dfp_updateProductTemplates()

#  expect_is(dfp_updateProductTemplates_result, "list")
  expect_true(TRUE)

})

