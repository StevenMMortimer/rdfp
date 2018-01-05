context("InventoryService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createAdUnits", {

#  dfp_createAdUnits_result <- dfp_createAdUnits()

#  expect_is(dfp_createAdUnits_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getAdUnitSizesByStatement", {

   request_data <- list('filterStatement'=list('query'="WHERE status='ACTIVE'"))

   dfp_getAdUnitSizesByStatement_result <- dfp_getAdUnitSizesByStatement(request_data)

   expect_is(dfp_getAdUnitSizesByStatement_result, "data.frame")

})

test_that("dfp_getAdUnitsByStatement", {

   request_data <- list('filterStatement'=list('query'="WHERE status='ACTIVE'"))

   dfp_getAdUnitsByStatement_result <- dfp_getAdUnitsByStatement(request_data)

   expect_is(dfp_getAdUnitsByStatement_result, "list")

})

test_that("dfp_performAdUnitAction", {

#  dfp_performAdUnitAction_result <- dfp_performAdUnitAction()

#  expect_is(dfp_performAdUnitAction_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateAdUnits", {

#  dfp_updateAdUnits_result <- dfp_updateAdUnits()

#  expect_is(dfp_updateAdUnits_result, "list")
  expect_true(TRUE)

})

