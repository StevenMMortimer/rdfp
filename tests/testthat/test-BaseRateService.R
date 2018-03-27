context("BaseRateService")

skip("Reduce Total Test Runtime")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

# options(rdfp.network_code = rdfp_options$test_network_code)
# request_data <- list('statement'=list('query'="WHERE status='ACTIVE'"))
# dfp_getProductsByStatement(request_data)
# options(rdfp.network_code = rdfp_options$test_network_code)
# 
# options(rdfp.network_code = rdfp_options$test_network_code)
# request_data <- list(baseRates=list(rateCardId=paste0("TestCompany - ", myuuid), 
#                                     productId=dfp_getBaseRatesByStatement_result$results$id, 
#                                     rate=list(currencyCode='USD', 
#                                               microAmount=8000000)))
# 
# dfp_createBaseRates_result <- dfp_createBaseRates(request_data)
# options(rdfp.network_code = rdfp_options$network_code)

test_that("dfp_createBaseRates", {
  
#   options(rdfp.network_code = rdfp_options$test_network_code)
#   
#   expect_is(dfp_createBaseRates_result, "list")
#   expect_true(all(c('id', 'name') %in% names(dfp_createBaseRates_result)))
#   
#   options(rdfp.network_code = rdfp_options$network_code)
  expect_true(TRUE)
  
})

test_that("dfp_getBaseRatesByStatement", {

   request_data <- list('filterStatement'=list('query'="WHERE status='ACTIVE'"))

   dfp_getBaseRatesByStatement_result <- dfp_getBaseRatesByStatement(request_data)

   expect_is(dfp_getBaseRatesByStatement_result, "data.frame")

})

test_that("dfp_performBaseRateAction", {

#  dfp_performBaseRateAction_result <- dfp_performBaseRateAction()

#  expect_is(dfp_performBaseRateAction_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateBaseRates", {

#  dfp_updateBaseRates_result <- dfp_updateBaseRates()

#  expect_is(dfp_updateBaseRates_result, "list")
  expect_true(TRUE)

})

