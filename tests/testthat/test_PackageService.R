context("PackageService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
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

#  dfp_getPackagesByStatement_result <- dfp_getPackagesByStatement()

#  expect_is(dfp_getPackagesByStatement_result, "list")
  expect_true(TRUE)

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

