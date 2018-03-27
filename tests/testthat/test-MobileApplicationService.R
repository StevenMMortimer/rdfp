context("MobileApplicationService")

skip("Reduce Total Test Runtime")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createMobileApplications", {
# dfp_createMobileApplications_result <- dfp_createMobileApplications()

# expect_is(dfp_createMobileApplications_result, "list")
 
  expect_true(TRUE)
})

test_that("dfp_getMobileApplicationsByStatement", {
  request_data <- list(filterStatement=list('query'="WHERE status='ACTIVE'"))
  
  expect_message(try(dfp_getMobileApplicationsByStatement(request_data), silent=T), 'UNEXECUTABLE')
  expect_error(suppressMessages(dfp_getMobileApplicationsByStatement(request_data)))
})

test_that("dfp_performMobileApplicationAction", {
# dfp_performMobileApplicationAction_result <- dfp_performMobileApplicationAction()

# expect_is(dfp_performMobileApplicationAction_result, "list")
 
  expect_true(TRUE)
})

test_that("dfp_updateMobileApplications", {
# dfp_updateMobileApplications_result <- dfp_updateMobileApplications()

# expect_is(dfp_updateMobileApplications_result, "list")
 
  expect_true(TRUE)
})

