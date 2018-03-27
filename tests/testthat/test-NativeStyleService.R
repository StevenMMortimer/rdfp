context("NativeStyleService")

skip("Reduce Total Test Runtime")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createNativeStyles", {
# dfp_createNativeStyles_result <- dfp_createNativeStyles()
# expect_is(dfp_createNativeStyles_result, "list")
 
  expect_true(TRUE)
})

test_that("dfp_getNativeStylesByStatement", {
  
  request_data <- list(filterStatement=list('query'="WHERE status='ACTIVE'"))
  
  options(rdfp.network_code = rdfp_options$test_network_code)
  dfp_getNativeStylesByStatement_result <- dfp_getNativeStylesByStatement(request_data)

  expect_is(dfp_getNativeStylesByStatement_result, "data.frame")
  options(rdfp.network_code = rdfp_options$network_code)
})

test_that("dfp_performNativeStyleAction", {

# dfp_performNativeStyleAction_result <- dfp_performNativeStyleAction()

# expect_is(dfp_performNativeStyleAction_result, "list")
  
 expect_true(TRUE)
})

test_that("dfp_updateNativeStyles", {
 
# dfp_updateNativeStyles_result <- dfp_updateNativeStyles()

# expect_is(dfp_updateNativeStyles_result, "list")
  
 expect_true(TRUE)
})

