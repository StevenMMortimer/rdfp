context("LineItemCreativeAssociationService")

skip("Reduce Total Test Runtime")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createLineItemCreativeAssociations", {

#  dfp_createLineItemCreativeAssociations_result <- dfp_createLineItemCreativeAssociations()

#  expect_is(dfp_createLineItemCreativeAssociations_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getLineItemCreativeAssociationsByStatement", {

   request_data <- list('filterStatement'=list('query'="WHERE status='ACTIVE'"))

   dfp_getLineItemCreativeAssociationsByStatement_result <- dfp_getLineItemCreativeAssociationsByStatement(request_data)

   expect_is(dfp_getLineItemCreativeAssociationsByStatement_result, "data.frame")

})

test_that("dfp_getPreviewUrl", {

#  dfp_getPreviewUrl_result <- dfp_getPreviewUrl()

#  expect_is(dfp_getPreviewUrl_result, "list")
  expect_true(TRUE)

})

test_that("dfp_performLineItemCreativeAssociationAction", {

#  dfp_performLineItemCreativeAssociationAction_result <- dfp_performLineItemCreativeAssociationAction()

#  expect_is(dfp_performLineItemCreativeAssociationAction_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateLineItemCreativeAssociations", {

#  dfp_updateLineItemCreativeAssociations_result <- dfp_updateLineItemCreativeAssociations()

#  expect_is(dfp_updateLineItemCreativeAssociations_result, "list")
  expect_true(TRUE)

})

