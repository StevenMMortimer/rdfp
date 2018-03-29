context("OrderService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

options(rdfp.network_code = rdfp_options$test_network_code)
request_data <- list('filterStatement'=list('query'="WHERE name = 'TestCompany1'"))
dfp_getCompaniesByStatement_result <- dfp_getCompaniesByStatement(request_data) 

request_data <- list(list(name='TestOrder', 
                          startDateTime=list(date=list(year=as.integer(format(Sys.Date(), '%Y'))+1, month=12, day=1), 
                                             hour=0,
                                             minute=0,
                                             second=0,
                                             timeZoneID='America/New_York'),
                          endDateTime=list(date=list(year=as.integer(format(Sys.Date(), '%Y'))+1, month=12, day=31), 
                                           hour=23,
                                           minute=59,
                                           second=59,
                                           timeZoneID='America/New_York'), 
                          notes='API Test Order', 
                          externalOrderId=99999, 
                          advertiserId=dfp_getCompaniesByStatement_result$id, 
                          traffickerId=dfp_getCurrentUser()$id))

dfp_createOrders_result <- dfp_createOrders(request_data)
options(rdfp.network_code = rdfp_options$network_code)

test_that("dfp_createOrders", {

  expect_is(dfp_createOrders_result, 'data.frame')
  expect_true(all(c('id', 'name', 'notes', 'advertiserId', 
                    'traffickerId', 'isProgrammatic') %in% names(dfp_createOrders_result)))

})

test_that("dfp_getOrdersByStatement", {

   options(rdfp.network_code = rdfp_options$test_network_code)
   request_data <- list('filterStatement'=list('query'="WHERE name LIKE 'Test%'"))

   dfp_getOrdersByStatement_result <- dfp_getOrdersByStatement(request_data)

   expect_is(dfp_getOrdersByStatement_result, "data.frame")
   options(rdfp.network_code = rdfp_options$network_code)

})

test_that("dfp_updateOrders", {
  
  options(rdfp.network_code = rdfp_options$test_network_code)
  request_data <- list(list(id=dfp_createOrders_result$id, 
                            name=paste0('TestOrder2'), 
                            startDateTime=list(date=list(year=as.integer(format(Sys.Date(), '%Y'))+1, month=12, day=1), 
                                               hour=0,
                                               minute=0,
                                               second=0,
                                               timeZoneID='America/New_York'),
                            endDateTime=list(date=list(year=as.integer(format(Sys.Date(), '%Y'))+1, month=12, day=31), 
                                             hour=23,
                                             minute=59,
                                             second=59,
                                             timeZoneID='America/New_York'), 
                            notes='API Test Order2', 
                            externalOrderId=99999, 
                            advertiserId=dfp_getCompaniesByStatement_result$id, 
                            traffickerId=dfp_getCurrentUser()$id))
  
  dfp_updateOrders_result <- dfp_updateOrders(request_data)
  
  expect_is(dfp_updateOrders_result, 'data.frame')
  expect_true(all(c('id', 'name', 'notes', 'advertiserId', 
                    'traffickerId', 'isProgrammatic') %in% names(dfp_updateOrders_result)))
  
  options(rdfp.network_code = rdfp_options$network_code)
  
})

test_that("dfp_performOrderAction", {
  
  options(rdfp.network_code = rdfp_options$test_network_code)
  request_data <- list(orderAction='DeleteOrders',
                       filterStatement=list('query'=paste0("WHERE name like 'Test%'")))
  
  dfp_performOrderAction_result <- dfp_performOrderAction(request_data, as_df=FALSE)
  expect_is(dfp_performOrderAction_result, "list")
  expect_length(dfp_performOrderAction_result, 1)
  expect_named(dfp_performOrderAction_result[[1]], c("numChanges"))  
  
  # check that action worked
  request_data <- list('filterStatement'=
                         list('query'=paste0("WHERE isActive=false and id=", 
                                             dfp_createOrders_result$id)))
  dfp_getLabelsByStatement_result <- dfp_getLabelsByStatement(request_data)
  expect_is(dfp_getLabelsByStatement_result, "data.frame")
  expect_equal(nrow(dfp_getLabelsByStatement_result), 0)
  
  options(rdfp.network_code = rdfp_options$network_code)
})

