context("ForecastService")

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
hypothetical_line_item <- list(lineItem=
                                list(id=line_item_detail$id,
                                     startDateTime=line_item_detail$startDateTime,
                                     endDateTime=list(date=list(year=as.integer(format(Sys.Date(), '%Y'))+1, month=12, day=31), 
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
  dfp_getAvailabilityForecast_result <- dfp_getAvailabilityForecast(request_data)
  
  expect_is(dfp_getAvailabilityForecast_result, "data.frame")
  expect_true(all(c('lineItemId', 'orderId', 'unitType', 'availableUnits', 'deliveredUnits') %in% 
                    names(dfp_getAvailabilityForecast_result)))
})

test_that("dfp_getAvailabilityForecastById", {

  request_data <- list(lineItemId=line_item_detail$id,
                       forecastOptions=list(includeTargetingCriteriaBreakdown='true', 
                                            includeContendingLineItems='true'))
  dfp_getAvailabilityForecastById_result <- dfp_getAvailabilityForecastById(request_data)
  
  expect_is(dfp_getAvailabilityForecastById_result, "data.frame")
  expect_true(all(c('lineItemId', 'orderId', 'unitType', 'availableUnits', 'deliveredUnits') %in% 
                    names(dfp_getAvailabilityForecastById_result)))
})

test_that("dfp_getDeliveryForecast", {
  
  request_data <- list(lineItems=hypothetical_line_item,
                       forecastOptions=list(ignoredLineItemIds=NULL))
  dfp_getDeliveryForecast_result <- dfp_getDeliveryForecast(request_data)

  expect_is(dfp_getDeliveryForecast_result, "data.frame")
  expect_true(all(paste0("lineItemDeliveryForecasts.",
                         c("lineItemId", "orderId", "unitType", 
                           "predictedDeliveryUnits", "deliveredUnits",
                           "matchedUnits")) %in% 
                    names(dfp_getDeliveryForecast_result)))
})

test_that("dfp_getDeliveryForecastByIds", {

  # not specifying forecastOptions brings up NotNullError.ARG2_NULL, so send, but keep null
  request_data <- list(lineItemIds=line_item_detail$id,
                       forecastOptions=list(ignoredLineItemIds=NULL))
  dfp_getDeliveryForecastByIds_result <- dfp_getDeliveryForecastByIds(request_data)
  
  expect_is(dfp_getDeliveryForecastByIds_result, "data.frame")
  expect_true(all(paste0("lineItemDeliveryForecasts.",
                         c("lineItemId", "orderId", "unitType", 
                           "predictedDeliveryUnits", "deliveredUnits",
                           "matchedUnits")) %in% 
                    names(dfp_getDeliveryForecastByIds_result)))
})
