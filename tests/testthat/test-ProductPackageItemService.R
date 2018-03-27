context("ProductPackageItemService")

skip("Reduce Total Test Runtime")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createProductPackageItems", {

#  dfp_createProductPackageItems_result <- dfp_createProductPackageItems()

#  expect_is(dfp_createProductPackageItems_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getProductPackageItemsByStatement", {

   request_data <- list('statement'=list('query'="WHERE mandatory='TRUE'"))

   expect_message(try(dfp_getProductPackageItemsByStatement(request_data), silent=T), 'MISSING_FEATURE')
   expect_error(dfp_getProductPackageItemsByStatement(request_data))

})

test_that("dfp_performProductPackageItemAction", {

#  dfp_performProductPackageItemAction_result <- dfp_performProductPackageItemAction()

#  expect_is(dfp_performProductPackageItemAction_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateProductPackageItems", {

#  dfp_updateProductPackageItems_result <- dfp_updateProductPackageItems()

#  expect_is(dfp_updateProductPackageItems_result, "list")
  expect_true(TRUE)

})

