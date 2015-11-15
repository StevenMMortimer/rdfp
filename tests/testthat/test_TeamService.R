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

#  dfp_getTeamsByStatement_result <- dfp_getTeamsByStatement()

#  expect_is(dfp_getTeamsByStatement_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateTeams", {

#  dfp_updateTeams_result <- dfp_updateTeams()

#  expect_is(dfp_updateTeams_result, "list")
  expect_true(TRUE)

})

