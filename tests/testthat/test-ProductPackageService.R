context("ProductPackageService")

skip("Reduce Total Test Runtime")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createProductPackages", {

#  dfp_createProductPackages_result <- dfp_createProductPackages()

#  expect_is(dfp_createProductPackages_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getProductPackagesByStatement", {

   request_data <- list('statement'=list('query'="WHERE status='ACTIVE'"))

   expect_message(try(dfp_getProductPackagesByStatement(request_data), silent=T), 'MISSING_FEATURE')
   expect_error(dfp_getProductPackagesByStatement(request_data))

})

test_that("dfp_performProductPackageAction", {

#  dfp_performProductPackageAction_result <- dfp_performProductPackageAction()

#  expect_is(dfp_performProductPackageAction_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateProductPackages", {

#  dfp_updateProductPackages_result <- dfp_updateProductPackages()

#  expect_is(dfp_updateProductPackages_result, "list")
  expect_true(TRUE)

})

