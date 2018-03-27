context("AdRuleService")

skip("Reduce Total Test Runtime")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createAdRules", {

#  dfp_createAdRules_result <- dfp_createAdRules()

#  expect_is(dfp_createAdRules_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getAdRulesByStatement", {

  # issue with Google, seems weird to switch to using "statement" and not "filterStatement"
   request_data <- list('statement'=list('query'="WHERE status='ACTIVE'"))
   
   expect_message(try(dfp_getAdRulesByStatement(request_data), silent=T), 'MISSING_FEATURE')
   expect_error(dfp_getAdRulesByStatement(request_data))

})

test_that("dfp_performAdRuleAction", {

#  dfp_performAdRuleAction_result <- dfp_performAdRuleAction()

#  expect_is(dfp_performAdRuleAction_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateAdRules", {

#  dfp_updateAdRules_result <- dfp_updateAdRules()

#  expect_is(dfp_updateAdRules_result, "list")
  expect_true(TRUE)

})

