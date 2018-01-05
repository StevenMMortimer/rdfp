context("ContactService")

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
request_data <- list('filterStatement'=list('query'="WHERE name='Test Company'"))
dfp_getCompaniesByStatement_result <- dfp_getCompaniesByStatement(request_data)
options(rdfp.network_code = rdfp_options$network_code)

options(rdfp.network_code = rdfp_options$test_network_code)
request_data <- list(contacts=list(name=paste0("TestContact - ", myuuid), 
                                    companyId=dfp_getCompaniesByStatement_result$id, 
                                    status='UNINVITED', 
                                    cellPhone='(888) 999-7777',
                                    comment='API Test', 
                                    email='testcontact@gmail.com'))

dfp_createContacts_result <- dfp_createContacts(request_data)
options(rdfp.network_code = rdfp_options$network_code)

test_that("dfp_createContacts", {

  options(rdfp.network_code = rdfp_options$test_network_code)
  
  expect_is(dfp_createContacts_result, "data.frame")
  expect_true(all(c('id', 'name', 'companyId', 'status', 'cellPhone', 'comment', 'email') %in% names(dfp_createContacts_result)))
  
  options(rdfp.network_code = rdfp_options$network_code)

})

test_that("dfp_getContactsByStatement", {

   options(rdfp.network_code = rdfp_options$test_network_code)
  
   request_data <- list('statement'=list('query'=paste0("WHERE name='", "TestContact - ", myuuid, "'")))

   dfp_getContactsByStatement_result <- dfp_getContactsByStatement(request_data)

   expect_is(dfp_getContactsByStatement_result, "data.frame")
   
   options(rdfp.network_code = rdfp_options$network_code)

})

test_that("dfp_updateContacts", {

 options(rdfp.network_code = rdfp_options$test_network_code)
 request_data <- list(contacts=list(id=dfp_createContacts_result$id, 
                                    name=paste0("TestContact - ", myuuid, "2'"),
                                    comment='API Test 2', 
                                    email='testcontact@gmail.com'))
  
 dfp_updateContacts_result <- dfp_updateContacts(request_data)

 expect_is(dfp_updateContacts_result, "data.frame")
 expect_equal(dfp_updateContacts_result$name, paste0("TestContact - ", myuuid, "2'"))
 
 options(rdfp.network_code = rdfp_options$network_code)

})

