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
                         list(query=paste('select Id, Name,', 
                                          'CanonicalParentId, CountryCode,',
                                          "Type from Geo_Target where CountryCode='US'")))
  
  dfp_select_result <- dfp_select(request_data)$rval
  expect_is(dfp_select_result, "list")
  
  final_result <- dfp_select_parse(dfp_select_result)
  expect_is(final_result, "data.frame")
  expect_true(all(c('id', 'name', 'canonicalparentid', 'countrycode', 'type') %in% names(final_result)))

})

