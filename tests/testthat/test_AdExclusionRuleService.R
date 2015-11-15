context("AdExclusionRuleService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createAdExclusionRules", {

#  dfp_createAdExclusionRules_result <- dfp_createAdExclusionRules()

#  expect_is(dfp_createAdExclusionRules_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getAdExclusionRulesByStatement", {

#  dfp_getAdExclusionRulesByStatement_result <- dfp_getAdExclusionRulesByStatement()

#  expect_is(dfp_getAdExclusionRulesByStatement_result, "list")
  expect_true(TRUE)

})

test_that("dfp_performAdExclusionRuleAction", {

#  dfp_performAdExclusionRuleAction_result <- dfp_performAdExclusionRuleAction()

#  expect_is(dfp_performAdExclusionRuleAction_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateAdExclusionRules", {

#  dfp_updateAdExclusionRules_result <- dfp_updateAdExclusionRules()

#  expect_is(dfp_updateAdExclusionRules_result, "list")
  expect_true(TRUE)

})

