context("ContentBundleService")

skip("Reduce Total Test Runtime")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createContentBundles", {

#  dfp_createContentBundles_result <- dfp_createContentBundles()

#  expect_is(dfp_createContentBundles_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getContentBundlesByStatement", {

   request_data <- list('filterStatement'=list('query'="WHERE status='ACTIVE'"))

   expect_message(try(dfp_getContentBundlesByStatement(request_data), silent=T), 'MISSING_FEATURE')
   expect_error(dfp_getContentBundlesByStatement(request_data))

})

test_that("dfp_performContentBundleAction", {

#  dfp_performContentBundleAction_result <- dfp_performContentBundleAction()

#  expect_is(dfp_performContentBundleAction_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateContentBundles", {

#  dfp_updateContentBundles_result <- dfp_updateContentBundles()

#  expect_is(dfp_updateContentBundles_result, "list")
  expect_true(TRUE)

})

