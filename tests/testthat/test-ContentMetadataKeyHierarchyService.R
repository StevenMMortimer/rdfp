context("ContentMetadataKeyHierarchyService")

skip("Reduce Total Test Runtime")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createContentMetadataKeyHierarchies", {

#  dfp_createContentMetadataKeyHierarchies_result <- dfp_createContentMetadataKeyHierarchies()

#  expect_is(dfp_createContentMetadataKeyHierarchies_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getContentMetadataKeyHierarchiesByStatement", {

   request_data <- list('filterStatement'=list('query'="WHERE status='ACTIVE'"))
   
   expect_message(try(dfp_getContentMetadataKeyHierarchiesByStatement(request_data), silent=T), 'MISSING_FEATURE')
   expect_error(dfp_getContentMetadataKeyHierarchiesByStatement(request_data))
   
})

test_that("dfp_performContentMetadataKeyHierarchyAction", {

#  dfp_performContentMetadataKeyHierarchyAction_result <- dfp_performContentMetadataKeyHierarchyAction()

#  expect_is(dfp_performContentMetadataKeyHierarchyAction_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateContentMetadataKeyHierarchies", {

#  dfp_updateContentMetadataKeyHierarchies_result <- dfp_updateContentMetadataKeyHierarchies()

#  expect_is(dfp_updateContentMetadataKeyHierarchies_result, "list")
  expect_true(TRUE)

})

