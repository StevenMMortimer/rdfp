context("CustomTargetingService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

options(rdfp.network_code = rdfp_options$test_network_code)
request_data <- list(keys=list(name='Test1', 
                               displayName='TestKey1', 
                               type='FREEFORM'))
dfp_createCustomTargetingKeys_result <- dfp_createCustomTargetingKeys(request_data)

request_data <- data.frame(customTargetingKeyId=rep(dfp_createCustomTargetingKeys_result$id,2),
                           name=c('TestValue1','TestValue2'), 
                           displayName=c('TestValue1','TestValue2'), 
                           matchType=rep('EXACT', 2))
dfp_createCustomTargetingValues_result <- dfp_createCustomTargetingValues(request_data)
options(rdfp.network_code = rdfp_options$network_code)

test_that("dfp_createCustomTargetingKeys", {

  expect_is(dfp_createCustomTargetingKeys_result, "data.frame")
  expect_true(all(c('id', 'name', 'displayName', 'type', 'status') %in% names(dfp_createCustomTargetingKeys_result)))
  
})

test_that("dfp_createCustomTargetingValues", {
  
  expect_is(dfp_createCustomTargetingValues_result, "data.frame")
  expect_true(all(c('customTargetingKeyId', 'id', 'name', 'displayName', 'matchType', 'status') %in% names(dfp_createCustomTargetingValues_result)))
  
})

test_that("dfp_getCustomTargetingKeysByStatement", {

   request_data <- list('filterStatement'=list('query'="WHERE name like 'Test%'"))

   dfp_getCustomTargetingKeysByStatement_result <- dfp_getCustomTargetingKeysByStatement(request_data)

   expect_is(dfp_getCustomTargetingKeysByStatement_result, "data.frame")

})

test_that("dfp_getCustomTargetingValuesByStatement", {

  options(rdfp.network_code = rdfp_options$test_network_code)
   request_data <- list('filterStatement'=list('query'="WHERE name like 'Test%'"))

   dfp_getCustomTargetingValuesByStatement_result <- dfp_getCustomTargetingValuesByStatement(request_data)

   expect_is(dfp_getCustomTargetingValuesByStatement_result, "data.frame")
  options(rdfp.network_code = rdfp_options$network_code)

})

test_that("dfp_performCustomTargetingValueAction", {

  options(rdfp.network_code = rdfp_options$test_network_code)
    request_data <- list(customTargetingValueAction='DeleteCustomTargetingValues',
                         filterStatement=list('query'=paste0("WHERE name like 'Test%'")))
    dfp_performCustomTargetingValueAction_result <- dfp_performCustomTargetingValueAction(request_data, as_df=F)
    
    expect_is(dfp_performCustomTargetingValueAction_result, "list")
    expect_true(all(c('numChanges') %in% names(dfp_performCustomTargetingValueAction_result$rval)))
  options(rdfp.network_code = rdfp_options$network_code)
  
})

test_that("dfp_performCustomTargetingKeyAction", {
  
  options(rdfp.network_code = rdfp_options$test_network_code)
  request_data <- list(customTargetingKeyAction='DeleteCustomTargetingKeys',
                       filterStatement=list('query'=paste0("WHERE name like 'Test%'")))
  dfp_performCustomTargetingKeyAction_result <- dfp_performCustomTargetingKeyAction(request_data, as_df=F)
  
  expect_is(dfp_performCustomTargetingKeyAction_result, "list")
  expect_true(all(c('numChanges') %in% names(dfp_performCustomTargetingKeyAction_result$rval)))
  options(rdfp.network_code = rdfp_options$network_code)
  
})

test_that("dfp_updateCustomTargetingKeys", {

#  dfp_updateCustomTargetingKeys_result <- dfp_updateCustomTargetingKeys()

#  expect_is(dfp_updateCustomTargetingKeys_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateCustomTargetingValues", {

#  dfp_updateCustomTargetingValues_result <- dfp_updateCustomTargetingValues()

#  expect_is(dfp_updateCustomTargetingValues_result, "list")
  expect_true(TRUE)

})

