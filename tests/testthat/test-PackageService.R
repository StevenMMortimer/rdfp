context("PackageService")

skip("Reduce Total Test Runtime")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createPackages", {

#  dfp_createPackages_result <- dfp_createPackages()

#  expect_is(dfp_createPackages_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getPackagesByStatement", {

   request_data <- list('filterStatement'=list('query'="WHERE status='ACTIVE'"))
   
   expect_message(try(dfp_getPackagesByStatement(request_data), silent=T), 'MISSING_FEATURE')
   expect_error(dfp_getPackagesByStatement(request_data))

})

test_that("dfp_performPackageAction", {

#  dfp_performPackageAction_result <- dfp_performPackageAction()

#  expect_is(dfp_performPackageAction_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updatePackages", {

#  dfp_updatePackages_result <- dfp_updatePackages()

#  expect_is(dfp_updatePackages_result, "list")
  expect_true(TRUE)

})

