context("CustomFieldService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

options(rdfp.network_code = rdfp_options$test_network_code)
request_data <- data.frame(name='Shift',
                           description='The shift that this user usually works.', 
                           entityType='USER',
                           dataType='DROP_DOWN',
                           visibility='FULL')
dfp_createCustomFields_result <- dfp_createCustomFields(request_data)

request_data <- data.frame(customFieldId=rep(dfp_createCustomFields_result$id, 3),
                           displayName=c('Morning', 'Afternoon', 'Evening'))
dfp_createCustomFieldOptions_result <- dfp_createCustomFieldOptions(request_data)
options(rdfp.network_code = rdfp_options$network_code)


test_that("dfp_createCustomFields", {
  expect_is(dfp_createCustomFields_result, "data.frame")
})

test_that("dfp_createCustomFieldOptions", {
  expect_is(dfp_createCustomFieldOptions_result, "data.frame")
  expect_equal(dfp_createCustomFieldOptions_result$displayName, c('Morning', 'Afternoon', 'Evening'))
})

test_that("dfp_getCustomFieldOption", {

  options(rdfp.network_code = rdfp_options$test_network_code)
   request_data <- list(dfp_createCustomFieldOptions_result$id[1])
   dfp_getCustomFieldOption_result <- dfp_getCustomFieldOption(request_data)
   
   expect_is(dfp_getCustomFieldOption_result, "data.frame")
  options(rdfp.network_code = rdfp_options$network_code)
})

test_that("dfp_getCustomFieldsByStatement", {

   options(rdfp.network_code = rdfp_options$test_network_code)
   request_data <- list('filterStatement'=list('query'="WHERE name='Shift'"))

   dfp_getCustomFieldsByStatement_result <- dfp_getCustomFieldsByStatement(request_data)

   expect_is(dfp_getCustomFieldsByStatement_result, "data.frame")
   options(rdfp.network_code = rdfp_options$network_code)
})

test_that("dfp_updateCustomFieldOptions", {
  
  options(rdfp.network_code = rdfp_options$test_network_code)
  
  request_data <- data.frame(id=dfp_createCustomFieldOptions_result$id, 
                             customFieldId=rep(dfp_createCustomFields_result$id,3),
                             displayName=c('Morning1', 'Afternoon1', 'Evening1'))
  
  dfp_updateCustomFieldOptions_result <- dfp_updateCustomFieldOptions(request_data)
  
  expect_is(dfp_updateCustomFieldOptions_result, "data.frame")
  options(rdfp.network_code = rdfp_options$network_code)
  
})

test_that("dfp_updateCustomFields", {
  
  options(rdfp.network_code = rdfp_options$test_network_code)
  request_data <- data.frame(id=dfp_createCustomFields_result$id,
                             name='Shift1',
                             description='The shift that this user usually works.', 
                             entityType='USER',
                             dataType='DROP_DOWN',
                             visibility='FULL')
  dfp_updateCustomFields_result <- dfp_updateCustomFields(request_data)
  expect_is(dfp_updateCustomFields_result, "data.frame")
  options(rdfp.network_code = rdfp_options$network_code)
})

test_that("dfp_performCustomFieldAction", {

  options(rdfp.network_code = rdfp_options$test_network_code)
  request_data <- list(customFieldAction='DeactivateCustomFields',
                       filterStatement=list('query'=paste0("WHERE name LIKE 'Shift%'")))
  
  dfp_performCustomFieldAction_result <- dfp_performCustomFieldAction(request_data)
  
  expect_is(dfp_performCustomFieldAction_result, "data.frame")
  expect_true(all(c('numChanges') %in% names(dfp_performCustomFieldAction_result)))
  expect_equal(dfp_performCustomFieldAction_result$numChanges, '1')
  
  # check that action worked
  request_data <- list('filterStatement'=
                         list('query'=paste0("WHERE isActive=false and id=", 
                                             dfp_createCustomFields_result$id)))
  dfp_getCustomFieldsByStatement_result <- dfp_getCustomFieldsByStatement(request_data, as_df=F)
  expect_equal(dfp_getCustomFieldsByStatement_result$rval$totalResultSetSize, '1')
  
  options(rdfp.network_code = rdfp_options$network_code)
})


