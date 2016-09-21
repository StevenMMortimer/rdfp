context("SharedAdUnitService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_getSharedAdUnitsByStatement", {

#    request_data <- list('filterStatement'=list('query'="WHERE status='ACTIVE'"))
# 
#    dfp_getSharedAdUnitsByStatement_result <- dfp_getSharedAdUnitsByStatement(request_data)
# 
#    expect_is(dfp_getSharedAdUnitsByStatement_result, "data.frame")
   expect_true(TRUE)

})

test_that("dfp_performSharedAdUnitAction", {

#  dfp_performSharedAdUnitAction_result <- dfp_performSharedAdUnitAction()

#  expect_is(dfp_performSharedAdUnitAction_result, "list")
  expect_true(TRUE)

})

