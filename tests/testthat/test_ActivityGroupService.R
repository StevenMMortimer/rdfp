context("ActivityGroupService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createActivityGroups", {

#  dfp_createActivityGroups_result <- dfp_createActivityGroups()

#  expect_is(dfp_createActivityGroups_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getActivityGroupsByStatement", {

   request_data <- list('filterStatement'=list('query'="WHERE status='ACTIVE'"))

   dfp_getActivityGroupsByStatement_result <- dfp_getActivityGroupsByStatement(request_data)

   expect_is(dfp_getActivityGroupsByStatement_result, "data.frame")

})

test_that("dfp_updateActivityGroups", {

#  dfp_updateActivityGroups_result <- dfp_updateActivityGroups()

#  expect_is(dfp_updateActivityGroups_result, "list")
  expect_true(TRUE)

})

