context("ActivityGroupService")

skip("Reduce Total Test Runtime")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createActivityGroups", {
  #dfp_createActivityGroups_result <- dfp_createActivityGroups()
  #expect_is(dfp_createActivityGroups_result, "list")
})

test_that("dfp_getActivityGroupsByStatement", {
  request_data <- list('filterStatement'=list('query'="WHERE status='ACTIVE'"))
  options(rdfp.network_code = rdfp_options$test_network_code)
  expect_message(try(dfp_getActivityGroupsByStatement(request_data), silent=T), 'ACTIVITIES_FEATURE_REQUIRED')
  expect_error(suppressMessages(dfp_getActivityGroupsByStatement(request_data)))
  options(rdfp.network_code = rdfp_options$network_code)
})

test_that("dfp_updateActivityGroups", {
  #dfp_updateActivityGroups_result <- dfp_updateActivityGroups()
  #expect_is(dfp_updateActivityGroups_result, "list")
})

