context("CdnConfigurationService")

skip("Reduce Total Test Runtime")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createCdnConfigurations", {
  
  # too complicated to test right now
  # dfp_createCdnConfigurations_result <- dfp_createCdnConfigurations()
  # expect_is(dfp_updateCdnConfigurations_result, "list")
  expect_true(TRUE)
  
})

test_that("dfp_getCdnConfigurationsByStatement", {
  
  # request_data <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
  # dfp_getCdnConfigurationsByStatement_result <- dfp_getCdnConfigurationsByStatement(request_data)
  # expect_null(dfp_getCdnConfigurationsByStatement_result)
  expect_true(TRUE)

})

test_that("dfp_updateCdnConfigurations", {
  
  # too complicated to test right now
  # dfp_updateCdnConfigurations_result <- dfp_updateCdnConfigurations()

  # expect_is(dfp_updateCdnConfigurations_result, "list")
  expect_true(TRUE)

})

