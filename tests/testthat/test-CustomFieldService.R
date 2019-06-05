context("CustomFieldService")

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

options(rdfp.network_code = rdfp_options$test_network_code)
request_data <- data.frame(name=paste0('Timing - ', myuuid),
                           description='The time of that this creative usually runs.', 
                           entityType='CREATIVE',
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
   request_data <- list('filterStatement'=list('query'=paste0("WHERE name='Timing - ", myuuid, "'")))
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
                             name=paste0('Timing - ', myuuid, '2'),
                             description='The time of that this creative usually runs.', 
                             entityType='CREATIVE',
                             dataType='DROP_DOWN',
                             visibility='FULL')
  dfp_updateCustomFields_result <- dfp_updateCustomFields(request_data)
  expect_is(dfp_updateCustomFields_result, "data.frame")
  options(rdfp.network_code = rdfp_options$network_code)
})

test_that("dfp_performCustomFieldAction", {
  options(rdfp.network_code = rdfp_options$test_network_code)
  request_data <- list(customFieldAction='DeactivateCustomFields',
                       filterStatement=list('query'=paste0("WHERE name = 'Timing - ", myuuid, "2'")))
  dfp_performCustomFieldAction_result <- dfp_performCustomFieldAction(request_data)
  expect_is(dfp_performCustomFieldAction_result, "data.frame")
  expect_true(all(c('numChanges') %in% names(dfp_performCustomFieldAction_result)))
  expect_equal(dfp_performCustomFieldAction_result$numChanges, 1)
  
  # check that action worked
  request_data <- list('filterStatement'=
                         list('query'=paste0("WHERE isActive=false and id=", 
                                             dfp_createCustomFields_result$id)))
  dfp_getCustomFieldsByStatement_result <- dfp_getCustomFieldsByStatement(request_data, as_df=TRUE)
  expect_equal(nrow(dfp_getCustomFieldsByStatement_result), 1)
  options(rdfp.network_code = rdfp_options$network_code)
})
