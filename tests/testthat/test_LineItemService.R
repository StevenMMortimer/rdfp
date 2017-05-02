context("LineItemService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

# reconstruct from existing id when needed
line_item_detail <- dfp_getLineItemsByStatement(list(filterStatement=
                                                       list(query="WHERE LineItemType='STANDARD' and Status='DELIVERING'")))$rval[3]$results
# replace targeting matrices to list
line_item_detail$targeting$inventoryTargeting <- as.list(as.data.frame(line_item_detail$targeting$inventoryTargeting, 
                                                                       check.names=F, stringsAsFactors = F))

hypothetical_line_item <- list(orderId=line_item_detail$orderId, 
                               startDateTime=list(date=list(year=as.integer(format(Sys.Date(), '%Y'))+1, month=1, day=1), 
                                                  hour=0,
                                                  minute=0,
                                                  second=0,
                                                  timeZoneID='America/New_York'),
                               endDateTime=list(date=list(year=as.integer(format(Sys.Date(), '%Y'))+1, month=12, day=31), 
                                                hour=0,
                                                minute=0,
                                                second=0,
                                                timeZoneID='America/New_York'),
                               lineItemType=line_item_detail$lineItemType,
                               costType=line_item_detail$costType, 
                               primaryGoal=line_item_detail$primaryGoal, 
                               targeting=line_item_detail$targeting)

test_that("dfp_createLineItems", {

  request_data <- list('lineItems'=hypothetical_line_item)
  
  expect_message(try(dfp_createLineItems(request_data), silent=T), 'PERMISSION_DENIED')
  expect_error(dfp_createLineItems(request_data))

})

test_that("dfp_getLineItemsByStatement", {

  # this is a long running test, so skip on CRAN
  skip_on_cran()
  
  request_data <- list('filterStatement'=list('query'="WHERE status='READY'"))
  
  dfp_getLineItemsByStatement_result <- dfp_getLineItemsByStatement(request_data)
  
  expect_is(dfp_getLineItemsByStatement_result, "list")

})

test_that("dfp_performLineItemAction", {
  
  request_data <- list(lineItemAction='PauseLineItems',
                       filterStatement=list('query'=paste0("WHERE id=", line_item_detail$id)))
  
  expect_message(try(dfp_performLineItemAction(request_data), silent=T), 'NOT_ALLOWED')
  expect_error(dfp_performLineItemAction(request_data))

})

test_that("dfp_updateLineItems", {

#  dfp_updateLineItems_result <- dfp_updateLineItems()

#  expect_is(dfp_updateLineItems_result, "list")
  expect_true(TRUE)

})

