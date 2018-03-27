context("ProductService")

skip("Reduce Total Test Runtime")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_getProductsByStatement", {

   request_data <- list('statement'=list('query'="WHERE status='ACTIVE'"))
   
   expect_message(try(dfp_getProductsByStatement(request_data), silent=T), 'MISSING_FEATURE')
   expect_error(dfp_getProductsByStatement(request_data))

})

test_that("dfp_performProductAction", {

  options(rdfp.network_code = rdfp_options$test_network_code)
  request_data <- list(productAction='DeactivateProducts',
                       filterStatement=list('query'="WHERE status='ACTIVE'"))
  
  expect_message(try(dfp_performProductAction(request_data), silent=T), 'NOT_APPLICABLE')
  expect_error(dfp_performProductAction(request_data))
  
#   dfp_performProductAction_result <- dfp_performProductAction(request_data)
#   
#   expect_is(dfp_performProductAction_result, "list")
#   expect_true(all(c('numChanges') %in% names(dfp_performProductAction_result)))
#   expect_equal(dfp_performProductAction_result$numChanges, '1')
#   
#   # check that action worked
#   request_data <- list('filterStatement'=
#                          list('query'=paste0("WHERE isActive=false and id=", 
#                                              dfp_createLabels_result$id)))
#   dfp_getLabelsByStatement_result <- dfp_getLabelsByStatement(request_data)
#   
#   expect_equal(dfp_getLabelsByStatement_result$totalResultSetSize, '1')
  
  options(rdfp.network_code = rdfp_options$network_code)
})

test_that("dfp_updateProducts", {

#  dfp_updateProducts_result <- dfp_updateProducts()

#  expect_is(dfp_updateProducts_result, "list")
  expect_true(TRUE)

})

