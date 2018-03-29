context("NetworkService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_getAllNetworks", {

 dfp_getAllNetworks_result <- dfp_getAllNetworks()

 expect_is(dfp_getAllNetworks_result, "data.frame")
 expect_true(all(c('id', 'displayName', 'networkCode') %in% names(dfp_getAllNetworks_result)))
 
})

test_that("dfp_getCurrentNetwork", {

 dfp_getCurrentNetwork_result <- dfp_getCurrentNetwork()

 expect_is(dfp_getCurrentNetwork_result, "data.frame")
 expect_true(all(c('id', 'displayName', 'networkCode') %in% names(dfp_getCurrentNetwork_result)))
 
})

test_that("dfp_makeTestNetwork", {
 expect_error(dfp_makeTestNetwork(), 'AuthenticationError.GOOGLE_ACCOUNT_ALREADY_ASSOCIATED_WITH_NETWORK')
})

test_that("dfp_updateNetwork", {
  
  options(rdfp.network_code = rdfp_options$test_network_code)
  new_network_name <- paste0('TestNetwork', sample(1:10, 1))
  request_data <- list('network'=list('displayName'=new_network_name))

  dfp_updateNetwork_result <- dfp_updateNetwork(request_data)

  expect_is(dfp_updateNetwork_result, "data.frame")
  expect_equal(dfp_updateNetwork_result$displayName, new_network_name)
  
  options(rdfp.network_code = rdfp_options$network_code)

})

