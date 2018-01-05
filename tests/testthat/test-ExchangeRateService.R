context("ExchangeRateService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createExchangeRates", {
  
  request_data <- data.frame(currencyCode='GBP', 
                             refreshRate='FIXED',
                             direction='TO_NETWORK', 
                             exchangeRate=1.52*10000000)
  
  expect_message(try(dfp_createExchangeRates(request_data), silent=T), 'PERMISSION_DENIED')
  expect_error(dfp_createExchangeRates(request_data))
  
})

test_that("dfp_getExchangeRatesByStatement", {
  
  request_data <- list('filterStatement'=list('query'="WHERE currencyCode='USD'"))
  expect_message(try(dfp_getExchangeRatesByStatement(request_data), silent=T), 'PERMISSION_DENIED')
  expect_error(dfp_getExchangeRatesByStatement(request_data))

})

test_that("dfp_performExchangeRateAction", {
  
  request_data <- list(exchangeRateAction='DeleteExchangeRates',
                       filterStatement=list('query'=paste0("WHERE currencyCode='USD'")))
  expect_message(try(dfp_performExchangeRateAction(request_data), silent=T), 'PERMISSION_DENIED')
  expect_error(dfp_performExchangeRateAction(request_data))

})

test_that("dfp_updateExchangeRates", {

  request_data <- data.frame(id=999999, 
                             currencyCode='GBP', 
                             refreshRate='FIXED',
                             direction='TO_NETWORK', 
                             exchangeRate=1.62*10000000)
  
  expect_message(try(dfp_updateExchangeRates(request_data), silent=T), 'PERMISSION_DENIED')
  expect_error(dfp_updateExchangeRates(request_data))

})

