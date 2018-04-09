context("UserService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

baseuuid <- paste(sample(c(letters[1:6],0:9),30,replace=TRUE),collapse="")
myuuid <- paste(
  substr(baseuuid,1,8),
  "-",
  substr(baseuuid,9,12),
  "-",
  "4",
  substr(baseuuid,13,15),
  "-",
  sample(c("8","9","a","b"),1),
  substr(baseuuid,16,18),
  "-",
  substr(baseuuid,19,30),
  sep="",
  collapse=""
)

validemailaddon <- paste0(sample(1:9,3), collapse='')

options(rdfp.network_code = rdfp_options$test_network_code)
request_data <- list(users=list(name=paste0("TestUser - ", myuuid),
                                email=paste0('testuser', validemailaddon, '@gmail.com'), 
                                roleId=-1))
dfp_createUsers_result <- dfp_createUsers(request_data)
options(rdfp.network_code = rdfp_options$network_code)

test_that("dfp_createUsers", {

  options(rdfp.network_code = rdfp_options$test_network_code)
  
  expect_is(dfp_createUsers_result, "data.frame")
  expect_true(all(c('id', 'name', 'email', 'roleId', 'roleName', 'isActive') %in% names(dfp_createUsers_result)))
  
  options(rdfp.network_code = rdfp_options$network_code)
  
})

test_that("dfp_getAllRoles", {
  
  options(rdfp.network_code = rdfp_options$test_network_code)

  dfp_getAllRoles_result <- dfp_getAllRoles()
  
  expect_is(dfp_getAllRoles_result, "data.frame")
  expect_true(all(c('id', 'name', 'description') %in% names(dfp_getAllRoles_result)))
  
  options(rdfp.network_code = rdfp_options$network_code)

})

test_that("dfp_getCurrentUser", {

 dfp_getCurrentUser_result <- dfp_getCurrentUser()

 expect_is(dfp_getCurrentUser_result, "data.frame")
 expect_true(all(c('id', 'name', 'email', 'roleId', 'isActive') %in% names(dfp_getCurrentUser_result)))

})

test_that("dfp_getUsersByStatement", {

   request_data <- list('filterStatement'=list('query'="WHERE status='ACTIVE'"))

   dfp_getUsersByStatement_result <- dfp_getUsersByStatement(request_data)

   expect_is(dfp_getUsersByStatement_result, "data.frame")

})

test_that("dfp_performUserAction", {
  
  options(rdfp.network_code = rdfp_options$test_network_code)
  request_data <- list(userAction='DeactivateUsers',
                       filterStatement=list('query'=paste0("WHERE id=", dfp_createUsers_result$id)))
  
  dfp_performUserAction_result <- dfp_performUserAction(request_data, as_df=FALSE)
  expect_is(dfp_performUserAction_result, "list")
  expect_length(dfp_performUserAction_result, 1)
  expect_named(dfp_performUserAction_result[[1]], c("numChanges")) 
  
  # check that action worked
  request_data <- list('filterStatement'=
                         list('query'=paste0("WHERE id=", 
                                             dfp_createUsers_result$id)))
  dfp_getUsersByStatement_result <- dfp_getUsersByStatement(request_data)
  
  expect_equal(dfp_getUsersByStatement_result$isActive, 'false')
  
  options(rdfp.network_code = rdfp_options$network_code)
  
})

test_that("dfp_updateUsers", {
  
  options(rdfp.network_code = rdfp_options$test_network_code)
  request_data <- list(users=list(id=dfp_createUsers_result$id, 
                                  name=paste0("TestUser - ", myuuid, "2"),
                                  email=paste0('testuser', validemailaddon, '@gmail.com'), 
                                  roleId=-1))
  
  dfp_updateUsers_result <- dfp_updateUsers(request_data)
  
  expect_is(dfp_updateUsers_result, "data.frame")
  expect_equal(dfp_updateUsers_result$name, paste0("TestUser - ", myuuid, "2"))
  
  options(rdfp.network_code = rdfp_options$network_code)
  
})

