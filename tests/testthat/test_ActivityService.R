context("ActivityService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createActivities", {
  
#   options(rdfp.network_code = rdfp_options$test_network_code)
#   
#   request_data <- list('activity'=list('displayName'=new_network_name))
#   
#   dfp_createActivities_result <- dfp_createActivities(request_data)
#   
#   expect_is(dfp_createActivities_result, "list")
#   expect_equal(dfp_createActivities_result$displayName, new_network_name)
#   
#   options(rdfp.network_code = rdfp_options$network_code)
  
  expect_true(TRUE)

})

test_that("dfp_getActivitiesByStatement", {
  
  request_data <- list('filterStatement'=list('query'="WHERE status='ACTIVE'"))

  dfp_getActivitiesByStatement_result <- dfp_getActivitiesByStatement(request_data)
  
  expect_is(dfp_getActivitiesByStatement_result, "list")
  
})

test_that("dfp_updateActivities", {

#   options(rdfp.network_code = rdfp_options$test_network_code)
#   
#   dfp_updateActivities_result <- dfp_updateActivities()
#   expect_is(dfp_updateActivities_result, "list")
#   
#   options(rdfp.network_code = rdfp_options$network_code)
  expect_true(TRUE)

})

