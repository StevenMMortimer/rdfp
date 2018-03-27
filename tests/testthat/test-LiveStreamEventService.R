context("LiveStreamEventService")

skip("Reduce Total Test Runtime")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createLiveStreamEvents", {

#  dfp_createLiveStreamEvents_result <- dfp_createLiveStreamEvents()

#  expect_is(dfp_createLiveStreamEvents_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getLiveStreamEventsByStatement", {

   request_data <- list('filterStatement'=list('query'="WHERE status='ACTIVE'"))

   expect_message(try(dfp_getLiveStreamEventsByStatement(request_data), silent=T), 'MISSING_FEATURE')
   expect_error(dfp_getLiveStreamEventsByStatement(request_data))

})

test_that("dfp_performLiveStreamEventAction", {

#  dfp_performLiveStreamEventAction_result <- dfp_performLiveStreamEventAction()

#  expect_is(dfp_performLiveStreamEventAction_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateLiveStreamEvents", {

#  dfp_updateLiveStreamEvents_result <- dfp_updateLiveStreamEvents()

#  expect_is(dfp_updateLiveStreamEvents_result, "list")
  expect_true(TRUE)

})

