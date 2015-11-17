context("TeamService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createTeams", {

#  dfp_createTeams_result <- dfp_createTeams()

#  expect_is(dfp_createTeams_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getTeamsByStatement", {
  
  request_data <- list('filterStatement'=list('query'="WHERE id='239587'"))
  expect_message(try(dfp_getTeamsByStatement(request_data), silent=T), 'PERMISSION_DENIED')
  expect_error(dfp_getTeamsByStatement(request_data))

  options(rdfp.network_code = rdfp_options$test_network_code)
   expect_message(try(dfp_getTeamsByStatement(request_data), silent=T), 'MISSING_FEATURE')
   expect_error(dfp_getTeamsByStatement(request_data))
  options(rdfp.network_code = rdfp_options$network_code)

})

test_that("dfp_updateTeams", {

#  dfp_updateTeams_result <- dfp_updateTeams()

#  expect_is(dfp_updateTeams_result, "list")
  expect_true(TRUE)

})

