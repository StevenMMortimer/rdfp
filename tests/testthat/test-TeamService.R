context("TeamService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createTeams", {
  
  request_data <- list(teams=list(name="TestTeam1", 
                                  description='API Test Team 1', 
                                  hasAllCompanies='true', 
                                  hasAllInventory='true',
                                  teamAccessType='READ_WRITE'))
  options(rdfp.network_code = rdfp_options$test_network_code)
  expect_error(dfp_createTeams(request_data), 'FeatureError.MISSING_FEATURE') 
  options(rdfp.network_code = rdfp_options$network_code)
})

test_that("dfp_getTeamsByStatement", {
  
  request_data <- list('filterStatement'=list('query'="WHERE id='239587'"))
  expect_error(dfp_getTeamsByStatement(request_data), 'PermissionError.PERMISSION_DENIED')  

  options(rdfp.network_code = rdfp_options$test_network_code)
  expect_error(dfp_getTeamsByStatement(request_data), 'FeatureError.MISSING_FEATURE')  
  options(rdfp.network_code = rdfp_options$network_code)
})

test_that("dfp_updateTeams", {

  request_data <- list(teams=list(id=99999999, 
                                  name="TestTeam99", 
                                  description='API Test Team 99', 
                                  hasAllCompanies='true', 
                                  hasAllInventory='true',
                                  teamAccessType='READ_WRITE'))
  options(rdfp.network_code = rdfp_options$test_network_code)
  expect_error(dfp_updateTeams(request_data), 'CommonError.NOT_FOUND') 
  options(rdfp.network_code = rdfp_options$network_code)
})
