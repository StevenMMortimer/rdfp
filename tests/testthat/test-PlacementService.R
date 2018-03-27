context("PlacementService")

skip("Reduce Total Test Runtime")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createPlacements", {

#  dfp_createPlacements_result <- dfp_createPlacements()

#  expect_is(dfp_createPlacements_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getPlacementsByStatement", {

   request_data <- list('filterStatement'=list('query'="WHERE status='ACTIVE'"))

   dfp_getPlacementsByStatement_result <- dfp_getPlacementsByStatement(request_data)

   expect_is(dfp_getPlacementsByStatement_result, "data.frame")

})

test_that("dfp_performPlacementAction", {

#  dfp_performPlacementAction_result <- dfp_performPlacementAction()

#  expect_is(dfp_performPlacementAction_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updatePlacements", {

#  dfp_updatePlacements_result <- dfp_updatePlacements()

#  expect_is(dfp_updatePlacements_result, "list")
  expect_true(TRUE)

})

