context("CmsMetadataService")

skip("Reduce Total Test Runtime")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp token.rds")

test_that("dfp_getCmsMetadataKeysByStatement", {
 request_data <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
 dfp_getCmsMetadataKeysByStatement_result <- dfp_getCmsMetadataKeysByStatement(request_data)
 expect_is(dfp_getCmsMetadataKeysByStatement_result, "list")
})

test_that("dfp_getCmsMetadataValuesByStatement", {
 request_data <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
 dfp_getCmsMetadataValuesByStatement_result <- dfp_getCmsMetadataValuesByStatement(request_data)
 expect_is(dfp_getCmsMetadataValuesByStatement_result, "list")
})
