context("ProposalLineItemService")

skip("Reduce Total Test Runtime")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createProposalLineItems", {

#  dfp_createProposalLineItems_result <- dfp_createProposalLineItems()

#  expect_is(dfp_createProposalLineItems_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getProposalLineItemsByStatement", {

   request_data <- list('filterStatement'=list('query'="WHERE status='ACTIVE'"))

   expect_message(try(dfp_getProposalLineItemsByStatement(request_data), silent=T), 'PERMISSION_DENIED')
   expect_error(dfp_getProposalLineItemsByStatement(request_data))

})

test_that("dfp_performProposalLineItemAction", {

#  dfp_performProposalLineItemAction_result <- dfp_performProposalLineItemAction()

#  expect_is(dfp_performProposalLineItemAction_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateProposalLineItems", {

#  dfp_updateProposalLineItems_result <- dfp_updateProposalLineItems()

#  expect_is(dfp_updateProposalLineItems_result, "list")
  expect_true(TRUE)

})

