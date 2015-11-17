context("ForecastService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

# reconstruct from existing id when needed
line_item_detail<- dfp_getLineItemsByStatement(list(filterStatement=
                                                      list(query="WHERE status='DELIVERING'")))[[3]]

# replace InventoryTargeting matrices to list
line_item_detail$targeting$inventoryTargeting <- as.list(as.data.frame(line_item_detail$targeting$inventoryTargeting, 
                                                                       check.names=F))

hypothetical_line_item <- list(lineItem=
                                list(id=line_item_detail$id,
                                     startDateTime=line_item_detail$startDateTime,
                                     endDateTime=list(date=list(year=2016, month=12, day=31), 
                                                      hour=0,
                                                      minute=0,
                                                      second=0,
                                                      timeZoneID='America/New_York'),
                                     lineItemType=line_item_detail$lineItemType,
                                     costType=line_item_detail$costType, 
                                     primaryGoal=line_item_detail$primaryGoal, 
                                     targeting=line_item_detail$targeting
                                )
)

test_that("dfp_getAvailabilityForecast", {

  request_data <- list(lineItem=hypothetical_line_item,
                       forecastOptions=list(includeTargetingCriteriaBreakdown='true', 
                                              includeContendingLineItems='true'))
  
  expect_message(try(dfp_getAvailabilityForecast(request_data), silent=T), 'PERMISSION_DENIED')
  expect_error(dfp_getAvailabilityForecast(request_data))
  
  #dfp_getAvailabilityForecast_result <- dfp_getAvailabilityForecast(request_data)
    
  #expect_is(dfp_getAvailabilityForecast_result, "list")
  
})

test_that("dfp_getAvailabilityForecastById", {

  request_data <- list(lineItemId=line_item_detail$id,
                       forecastOptions=list(includeTargetingCriteriaBreakdown='true', 
                                            includeContendingLineItems='true'))
  
  expect_message(try(dfp_getAvailabilityForecastById(request_data), silent=T), 'PERMISSION_DENIED')
  expect_error(dfp_getAvailabilityForecastById(request_data))
  
  #dfp_getAvailabilityForecastById_result <- dfp_getAvailabilityForecastById(request_data)
  
  #expect_is(dfp_getAvailabilityForecastById_result, "list")

})

test_that("dfp_getDeliveryForecast", {
  
  request_data <- list(lineItems=hypothetical_line_item,
                       forecastOptions=list(ignoredLineItemIds=NULL))
  
  expect_message(try(dfp_getDeliveryForecast(request_data), silent=T), 'PERMISSION_DENIED')
  expect_error(dfp_getDeliveryForecast(request_data))

#  dfp_getDeliveryForecast_result <- dfp_getDeliveryForecast()

#  expect_is(dfp_getDeliveryForecast_result, "list")

})

test_that("dfp_getDeliveryForecastByIds", {

  # not specifying forecastOptions brings up NotNullError.ARG2_NULL, so send, but keep null
  request_data <- list(lineItemIds='36660667',
                       forecastOptions=list(ignoredLineItemIds=NULL))
  
  expect_message(try(dfp_getDeliveryForecastByIds(request_data), silent=T), 'PERMISSION_DENIED')
  expect_error(dfp_getDeliveryForecastByIds(request_data))
  
  #dfp_getDeliveryForecastByIds_result <- dfp_getDeliveryForecastByIds(request_data)
  #expect_is(dfp_getDeliveryForecastByIds_result, "list")

})

