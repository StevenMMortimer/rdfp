context("NetworkService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_getAllNetworks", {

 dfp_getAllNetworks_result <- dfp_getAllNetworks()

 expect_is(dfp_getAllNetworks_result, "list")
 expect_true(all(c('id', 'displayName', 'networkCode') %in% names(dfp_getAllNetworks_result)))
 
})

test_that("dfp_getCurrentNetwork", {

 dfp_getCurrentNetwork_result <- dfp_getCurrentNetwork()

 expect_is(dfp_getCurrentNetwork_result, "list")
 expect_true(all(c('id', 'displayName', 'networkCode') %in% names(dfp_getCurrentNetwork_result)))
 
})

test_that("dfp_makeTestNetwork", {

 expect_message(try(dfp_makeTestNetwork()), 'GOOGLE_ACCOUNT_ALREADY_ASSOCIATED_WITH_NETWORK')
 expect_error(dfp_makeTestNetwork())

})

test_that("dfp_updateNetwork", {
  
  options(rdfp.network_code = rdfp_options$test_network_code)
  request_data <- list('network'=list('displayName'='StevesTestNetwork'))

  dfp_updateNetwork_result <- dfp_updateNetwork(request_data)

  expect_is(dfp_updateNetwork_result, "list")
  expect_equals(dfp_updateNetwork_result$displayName='StevesTestNetwork')

})

