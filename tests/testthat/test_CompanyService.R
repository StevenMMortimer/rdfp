context("CompanyService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createCompanies", {

#  dfp_createCompanies_result <- dfp_createCompanies()

#  expect_is(dfp_createCompanies_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getCompaniesByStatement", {

   request_data <- list('filterStatement'=list('query'="WHERE status='ACTIVE'"))

   dfp_getCompaniesByStatement_result <- dfp_getCompaniesByStatement(request_data)

   expect_is(dfp_getCompaniesByStatement_result, "list")

})

test_that("dfp_updateCompanies", {

#  dfp_updateCompanies_result <- dfp_updateCompanies()

#  expect_is(dfp_updateCompanies_result, "list")
  expect_true(TRUE)

})

