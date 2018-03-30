context("PublisherQueryLanguageService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_select", {
  request_data <- list(selectStatement=
                         list(query='SELECT Id, LineItemType, Status FROM LineItem LIMIT 3'))
  dfp_select_result <- dfp_select(request_data)
  expect_is(dfp_select_result, "tbl_df")
  expect_named(dfp_select_result, c('id', 'lineitemtype', 'status'))
  
  # see if we can handle a nested list 
  request_data <- list(selectStatement=
                         list(query='SELECT Id, Name, Targeting FROM LineItem LIMIT 3'))
  dfp_select_result <- dfp_select(request_data)
  expect_is(dfp_select_result, "tbl_df")
  expect_named(dfp_select_result, c('id', 'name', 'targeting'))  
})

