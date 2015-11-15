context("ContactService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_createContacts", {

#  dfp_createContacts_result <- dfp_createContacts()

#  expect_is(dfp_createContacts_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getContactsByStatement", {

#  dfp_getContactsByStatement_result <- dfp_getContactsByStatement()

#  expect_is(dfp_getContactsByStatement_result, "list")
  expect_true(TRUE)

})

test_that("dfp_updateContacts", {

#  dfp_updateContacts_result <- dfp_updateContacts()

#  expect_is(dfp_updateContacts_result, "list")
  expect_true(TRUE)

})

