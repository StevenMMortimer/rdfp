context("ActivityService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createActivities", {

#  dfp_createActivities_result <- dfp_createActivities()

#  expect_is(dfp_createActivities_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getActivitiesByStatement", {

   request_data <- list('filterStatement'=list('query'="WHERE status='ACTIVE'"))

   dfp_getActivitiesByStatement_result <- dfp_getActivitiesByStatement(request_data)

   expect_is(dfp_getActivitiesByStatement_result, "data.frame")

})

test_that("dfp_updateActivities", {

#  dfp_updateActivities_result <- dfp_updateActivities()

#  expect_is(dfp_updateActivities_result, "list")
  expect_true(TRUE)

})

