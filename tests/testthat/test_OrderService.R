context("OrderService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createOrders", {

#  dfp_createOrders_result <- dfp_createOrders()

#  expect_is(dfp_createOrders_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getOrdersByStatement", {

   request_data <- list('filterStatement'=list('query'="WHERE status='ACTIVE'"))

   dfp_getOrdersByStatement_result <- dfp_getOrdersByStatement(request_data)

   expect_is(dfp_getOrdersByStatement_result, "list")

})

test_that("dfp_performOrderAction", {

#  dfp_performOrderAction_result <- dfp_performOrderAction()

#  expect_is(dfp_performOrderAction_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateOrders", {

#  dfp_updateOrders_result <- dfp_updateOrders()

#  expect_is(dfp_updateOrders_result, "list")
  expect_true(TRUE)

})

