context("UserTeamAssociationService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createUserTeamAssociations", {
  
  request_data <- list(userteamassociations=list(teamId=239587,
                                                 userId=149461448))
  options(rdfp.network_code = rdfp_options$test_network_code)
  expect_error(dfp_createUserTeamAssociations(request_data), 'CommonError.NOT_FOUND') 
  options(rdfp.network_code = rdfp_options$network_code)
})

test_that("dfp_getUserTeamAssociationsByStatement", {

   request_data <- list('filterStatement'=list('query'=paste0("WHERE userId='", dfp_getCurrentUser()$id, "'")))

   dfp_getUserTeamAssociationsByStatement_result <- dfp_getUserTeamAssociationsByStatement(request_data)

   expect_is(dfp_getUserTeamAssociationsByStatement_result, "data.frame")
   expect_true(all(c('teamId', 'defaultTeamAccessType', 'userId') %in% names(dfp_getUserTeamAssociationsByStatement_result)))

})

test_that("dfp_performUserTeamAssociationAction", {
  
  options(rdfp.network_code = rdfp_options$test_network_code)
  request_data <- list(userTeamAssociationAction='DeleteUserTeamAssociations',
                       statement=list('query'=paste0("WHERE name like 'Test%'")))
  
  dfp_performUserTeamAssociationAction_result <- dfp_performUserTeamAssociationAction(request_data, as_df=FALSE)
  expect_is(dfp_performUserTeamAssociationAction_result, "list")
  expect_length(dfp_performUserTeamAssociationAction_result, 1)
  expect_named(dfp_performUserTeamAssociationAction_result[[1]], c("numChanges")) 
  options(rdfp.network_code = rdfp_options$network_code)
})

test_that("dfp_updateUserTeamAssociations", {
  
  request_data <- list(userTeamAssociations=list(teamId=239587,
                                                 userId=149461448))
  options(rdfp.network_code = rdfp_options$test_network_code)
  expect_error(dfp_updateUserTeamAssociations(request_data), 'CommonError.NOT_FOUND') 
  options(rdfp.network_code = rdfp_options$network_code)
})

