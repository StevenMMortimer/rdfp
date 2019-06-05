context("AdjustmentService")

skip("Reduce Total Test Runtime")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp token.rds")

test_that("dfp_getTrafficAdjustmentsByStatement", {
 request_data <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
 dfp_getTrafficAdjustmentsByStatement_result <- dfp_getTrafficAdjustmentsByStatement(request_data)
 expect_is(dfp_getTrafficAdjustmentsByStatement_result, "list")
})

test_that("dfp_updateTrafficAdjustments", {
 skip()
 #dfp_updateTrafficAdjustments_result <- dfp_updateTrafficAdjustments()
 #expect_is(dfp_updateTrafficAdjustments_result, "list")
})
