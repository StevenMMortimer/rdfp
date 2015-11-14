context("User Service")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("getCurrentUser", {
  
  user_info <- dfp_getCurrentUser()
  
  expect_is(user_info, "list")
  expect_true(all(c('id', 'name', 'email') %in% names(user_info)))
  
})
