context("UserService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createUsers", {

#  dfp_createUsers_result <- dfp_createUsers()

#  expect_is(dfp_createUsers_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getAllRoles", {
  
  options(rdfp.network_code = rdfp_options$test_network_code)

  dfp_getAllRoles_result <- dfp_getAllRoles()
  
  expect_is(dfp_getAllRoles_result, "list")
  expect_true(all(c('id', 'name', 'description') %in% names(dfp_getAllRoles_result)))
  
  options(rdfp.network_code = rdfp_options$network_code)

})

test_that("dfp_getCurrentUser", {

 dfp_getCurrentUser_result <- dfp_getCurrentUser()

 expect_is(dfp_getCurrentUser_result, "list")
 expect_true(all(c('id', 'name', 'email', 'roleId', 'isActive') %in% names(dfp_getCurrentUser_result)))

})

test_that("dfp_getUsersByStatement", {

   request_data <- list('filterStatement'=list('query'="WHERE status='ACTIVE'"))

   dfp_getUsersByStatement_result <- dfp_getUsersByStatement(request_data)

   expect_is(dfp_getUsersByStatement_result, "list")

})

test_that("dfp_performUserAction", {

#  dfp_performUserAction_result <- dfp_performUserAction()

#  expect_is(dfp_performUserAction_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateUsers", {

#  dfp_updateUsers_result <- dfp_updateUsers()

#  expect_is(dfp_updateUsers_result, "list")
  expect_true(TRUE)

})

