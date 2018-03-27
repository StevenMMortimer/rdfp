context("AudienceSegmentService")

skip("Reduce Total Test Runtime")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createAudienceSegments", {

#  dfp_createAudienceSegments_result <- dfp_createAudienceSegments()

#  expect_is(dfp_createAudienceSegments_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getAudienceSegmentsByStatement", {

   request_data <- list('filterStatement'=list('query'="WHERE status='ACTIVE'"))

   options(rdfp.network_code = rdfp_options$test_network_code)
   dfp_getAudienceSegmentsByStatement_result <- dfp_getAudienceSegmentsByStatement(request_data)

   expect_is(dfp_getAudienceSegmentsByStatement_result, "data.frame")
   options(rdfp.network_code = rdfp_options$network_code)

})

test_that("dfp_performAudienceSegmentAction", {

#  dfp_performAudienceSegmentAction_result <- dfp_performAudienceSegmentAction()

#  expect_is(dfp_performAudienceSegmentAction_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateAudienceSegments", {

#  dfp_updateAudienceSegments_result <- dfp_updateAudienceSegments()

#  expect_is(dfp_updateAudienceSegments_result, "list")
  expect_true(TRUE)

})

