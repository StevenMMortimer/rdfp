context("ProductTemplateService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createProductTemplates", {
  
  request_data <- list('productTemplates'=
                         list(name=paste0("TestPTemplate - ", myuuid), 
                              description="Test",
                              productType='NON_DFP', 
                              rateType='CPM'))
  
  options(rdfp.network_code = rdfp_options$test_network_code)

  expect_message(try(dfp_createProductTemplates(request_data), silent=T), 'MISSING_FEATURE')
  expect_error(dfp_createProductTemplates(request_data))
  
  #dfp_createProductTemplates_result <- dfp_createProductTemplates(request_data)
  #expect_is(dfp_createProductTemplates_result, "list")
  
  options(rdfp.network_code = rdfp_options$network_code)
})

test_that("dfp_getProductTemplatesByStatement", {

   request_data <- list('statement'=list('query'="WHERE status='ACTIVE'"))

   expect_message(try(dfp_getProductTemplatesByStatement(request_data), silent=T), 'MISSING_FEATURE')
   expect_error(dfp_getProductTemplatesByStatement(request_data))

})

test_that("dfp_performProductTemplateAction", {

  options(rdfp.network_code = rdfp_options$test_network_code)
  
  request_data <- list(action='DeactivateProductTemplates',
                       filterStatement=list('query'="WHERE status='ACTIVE'"))
  
  expect_message(try(dfp_performProductTemplateAction(request_data), silent=T), 'MISSING_FEATURE')
  expect_error(dfp_performProductTemplateAction(request_data))
  
  #expect_is(dfp_performProductTemplateAction_result, "list")
  #expect_true(all(c('numChanges') %in% names(dfp_performProductTemplateAction_result)))
  #expect_equal(dfp_performProductTemplateAction_result$numChanges, '1')
  options(rdfp.network_code = rdfp_options$network_code)
})

test_that("dfp_updateProductTemplates", {
  
  request_data <- list('productTemplates'=
                         list(id=999999999, 
                              name='Test', 
                              description="Test",
                              productType='NON_DFP', 
                              rateType='CPM'))
  
  options(rdfp.network_code = rdfp_options$test_network_code)

  expect_message(try(dfp_updateProductTemplates(request_data), silent=T), 'MISSING_FEATURE')
  expect_error(dfp_updateProductTemplates(request_data))

  options(rdfp.network_code = rdfp_options$network_code)
})

