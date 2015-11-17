context("LineItemService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createLineItems", {

#  dfp_createLineItems_result <- dfp_createLineItems()

#  expect_is(dfp_createLineItems_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getLineItemsByStatement", {

   request_data <- list('filterStatement'=list('query'="WHERE status='ACTIVE'"))

   dfp_getLineItemsByStatement_result <- dfp_getLineItemsByStatement(request_data)

   expect_is(dfp_getLineItemsByStatement_result, "list")

})

test_that("dfp_performLineItemAction", {

#  dfp_performLineItemAction_result <- dfp_performLineItemAction()

#  expect_is(dfp_performLineItemAction_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateLineItems", {

#  dfp_updateLineItems_result <- dfp_updateLineItems()

#  expect_is(dfp_updateLineItems_result, "list")
  expect_true(TRUE)

})

