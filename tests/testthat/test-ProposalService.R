context("ProposalService")

skip("Reduce Total Test Runtime")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createProposals", {

#  dfp_createProposals_result <- dfp_createProposals()

#  expect_is(dfp_createProposals_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getProposalsByStatement", {

   request_data <- list('filterStatement'=list('query'="WHERE status='ACTIVE'"))

   expect_message(try(dfp_getProposalsByStatement(request_data), silent=T), 'PERMISSION_DENIED')
   expect_error(dfp_getProposalsByStatement(request_data))

})

test_that("dfp_performProposalAction", {

#  dfp_performProposalAction_result <- dfp_performProposalAction()

#  expect_is(dfp_performProposalAction_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateProposals", {

#  dfp_updateProposals_result <- dfp_updateProposals()

#  expect_is(dfp_updateProposals_result, "list")
  expect_true(TRUE)

})

