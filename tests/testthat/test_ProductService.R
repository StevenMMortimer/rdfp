context("ProductService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_getProductsByStatement", {

   request_data <- list('statement'=list('query'="WHERE status='ACTIVE'"))
   
   expect_message(try(dfp_getProductsByStatement(request_data), silent=T), 'MISSING_FEATURE')
   expect_error(dfp_getProductsByStatement(request_data))

})

test_that("dfp_performProductAction", {

#  dfp_performProductAction_result <- dfp_performProductAction()

#  expect_is(dfp_performProductAction_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateProducts", {

#  dfp_updateProducts_result <- dfp_updateProducts()

#  expect_is(dfp_updateProducts_result, "list")
  expect_true(TRUE)

})

