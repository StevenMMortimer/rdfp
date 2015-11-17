context("UserTeamAssociationService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createUserTeamAssociations", {

#  dfp_createUserTeamAssociations_result <- dfp_createUserTeamAssociations()

#  expect_is(dfp_createUserTeamAssociations_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getUserTeamAssociationsByStatement", {

   request_data <- list('filterStatement'=list('query'="WHERE userId='142014667'"))

   dfp_getUserTeamAssociationsByStatement_result <- dfp_getUserTeamAssociationsByStatement(request_data)

   expect_is(dfp_getUserTeamAssociationsByStatement_result, "list")
   expect_true(all(c('teamId', 'defaultTeamAccessType', 'userId') %in% names(dfp_getUserTeamAssociationsByStatement_result[[3]])))

})

test_that("dfp_performUserTeamAssociationAction", {

#  dfp_performUserTeamAssociationAction_result <- dfp_performUserTeamAssociationAction()

#  expect_is(dfp_performUserTeamAssociationAction_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateUserTeamAssociations", {

#  dfp_updateUserTeamAssociations_result <- dfp_updateUserTeamAssociations()

#  expect_is(dfp_updateUserTeamAssociations_result, "list")
  expect_true(TRUE)

})

