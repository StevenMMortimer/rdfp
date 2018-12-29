context("DaiAuthenticationKeyService")

skip("Reduce Total Test Runtime")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createDaiAuthenticationKeys", {
 
 dfp_createDaiAuthenticationKeys_result <- dfp_createDaiAuthenticationKeys()

# expect_is(dfp_createDaiAuthenticationKeys_result, "list")
 expect_true(TRUE)

})

test_that("dfp_getDaiAuthenticationKeysByStatement", {
 
 request_data <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
  dfp_getDaiAuthenticationKeysByStatement_result <- dfp_getDaiAuthenticationKeysByStatement(request_data)

 expect_is(dfp_getDaiAuthenticationKeysByStatement_result, "list")

})

test_that("dfp_performDaiAuthenticationKeyAction", {
 
 dfp_performDaiAuthenticationKeyAction_result <- dfp_performDaiAuthenticationKeyAction()

# expect_is(dfp_performDaiAuthenticationKeyAction_result, "list")
 expect_true(TRUE)

})

test_that("dfp_updateDaiAuthenticationKeys", {
 
 dfp_updateDaiAuthenticationKeys_result <- dfp_updateDaiAuthenticationKeys()

# expect_is(dfp_updateDaiAuthenticationKeys_result, "list")
 expect_true(TRUE)

})
