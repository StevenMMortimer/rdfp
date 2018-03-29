context("CompanyService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

baseuuid <- paste(sample(c(letters[1:6],0:9),30,replace=TRUE),collapse="")
myuuid <- paste(
  substr(baseuuid,1,8),
  "-",
  substr(baseuuid,9,12),
  "-",
  "4",
  substr(baseuuid,13,15),
  "-",
  sample(c("8","9","a","b"),1),
  substr(baseuuid,16,18),
  "-",
  substr(baseuuid,19,30),
  sep="",
  collapse=""
)

options(rdfp.network_code = rdfp_options$test_network_code)
request_data <- list(companies=list(name=paste0("Test Company - ", myuuid), 
                                    type='HOUSE_ADVERTISER', 
                                    address='123 Main St Hometown, FL USA', 
                                    email='test@gmail.com', 
                                    comment='API Test'))

dfp_createCompanies_result <- dfp_createCompanies(request_data)
options(rdfp.network_code = rdfp_options$network_code)

test_that("dfp_createCompanies", {

  options(rdfp.network_code = rdfp_options$test_network_code)
  
  expect_is(dfp_createCompanies_result, "data.frame")
  expect_true(all(c('id', 'name', 'address', 'email', 'type', 'comment') %in% 
                    names(dfp_createCompanies_result)))
  
  options(rdfp.network_code = rdfp_options$network_code)
})

test_that("dfp_getCompaniesByStatement", {

   request_data <- list('filterStatement'=list('query'="WHERE status='ACTIVE'"))

   dfp_getCompaniesByStatement_result <- dfp_getCompaniesByStatement(request_data)

   expect_is(dfp_getCompaniesByStatement_result, "data.frame")
})

test_that("dfp_updateCompanies", {
  
  options(rdfp.network_code = rdfp_options$test_network_code)
  
  request_data <- list(companies=list(id=dfp_createCompanies_result$id,
                                      name=paste0("TestCompany - ", myuuid, '2')))
  
  dfp_updateCompanies_result <- dfp_updateCompanies(request_data)
  
  expect_is(dfp_updateCompanies_result, "data.frame")
  expect_true(all(c('id', 'name', 'type', 'creditStatus') %in% names(dfp_updateCompanies_result)))
  expect_equal(dfp_updateCompanies_result$name, paste0("TestCompany - ", myuuid, '2'))
  
  options(rdfp.network_code = rdfp_options$network_code)
})

