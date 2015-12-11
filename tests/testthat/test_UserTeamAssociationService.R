context("UserTeamAssociationService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createUserTeamAssociations", {
  
  request_data <- list(userTeamAssociations=list(teamId=239587,
                                                userId=149461448))
  options(rdfp.network_code = rdfp_options$test_network_code)
  expect_message(try(dfp_createUserTeamAssociations(request_data), silent=T), 'NOT_FOUND')
  expect_error(dfp_createUserTeamAssociations(request_data))
  options(rdfp.network_code = rdfp_options$network_code)

})

test_that("dfp_getUserTeamAssociationsByStatement", {

   request_data <- list('filterStatement'=list('query'="WHERE userId='142014667'"))

   dfp_getUserTeamAssociationsByStatement_result <- dfp_getUserTeamAssociationsByStatement(request_data)

   expect_is(dfp_getUserTeamAssociationsByStatement_result, "data.frame")
   expect_true(all(c('teamId', 'defaultTeamAccessType', 'userId') %in% names(dfp_getUserTeamAssociationsByStatement_result)))

})

test_that("dfp_performUserTeamAssociationAction", {

#  dfp_performUserTeamAssociationAction_result <- dfp_performUserTeamAssociationAction()

#  expect_is(dfp_performUserTeamAssociationAction_result, "data.frame")
  expect_true(TRUE)

})

test_that("dfp_updateUserTeamAssociations", {
  
  request_data <- list(userTeamAssociations=list(teamId=239587,
                                                 userId=149461448))
  options(rdfp.network_code = rdfp_options$test_network_code)
  expect_message(try(dfp_updateUserTeamAssociations(request_data), silent=T), 'NOT_FOUND')
  expect_error(dfp_updateUserTeamAssociations(request_data))
  options(rdfp.network_code = rdfp_options$network_code)

})

