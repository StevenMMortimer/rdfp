context("LineItemService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.httr_oauth_cache = FALSE)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

# reconstruct hypothetical from an existing lineitem
filter_statement <- "WHERE LineItemType='STANDARD' and Status='DELIVERING' LIMIT 1"
line_item_detail <- dfp_getLineItemsByStatement(list(filterStatement=list(query=filter_statement)))[[1]]
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
  expect_error(dfp_createLineItems(request_data), 'PermissionError.PERMISSION_DENIED')
})

test_that("dfp_getLineItemsByStatement", {

  request_data <- list('filterStatement'=list('query'="WHERE status='READY' LIMIT 1"))
  
  dfp_getLineItemsByStatement_result <- dfp_getLineItemsByStatement(request_data)
  expect_is(dfp_getLineItemsByStatement_result, "list")
})

test_that("dfp_performLineItemAction", {
  
  request_data <- list(lineItemAction='PauseLineItems',
                       filterStatement=list('query'=paste0("WHERE id=", line_item_detail$id)))
  expect_error(dfp_performLineItemAction(request_data), 'LineItemOperationError.NOT_ALLOWED')  
})

test_that("dfp_updateLineItems", {

  request_data <- list('lineItems'=line_item_detail)
  expect_error(dfp_updateLineItems(request_data), 'PermissionError.PERMISSION_DENIED')
})

