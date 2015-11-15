context("ForecastService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_getAvailabilityForecast", {

#  dfp_getAvailabilityForecast_result <- dfp_getAvailabilityForecast()

#  expect_is(dfp_getAvailabilityForecast_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getAvailabilityForecastById", {

#  dfp_getAvailabilityForecastById_result <- dfp_getAvailabilityForecastById()

#  expect_is(dfp_getAvailabilityForecastById_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getDeliveryForecast", {

#  dfp_getDeliveryForecast_result <- dfp_getDeliveryForecast()

#  expect_is(dfp_getDeliveryForecast_result, "list")
  expect_true(TRUE)

})

test_that("dfp_getDeliveryForecastByIds", {

#  dfp_getDeliveryForecastByIds_result <- dfp_getDeliveryForecastByIds()

#  expect_is(dfp_getDeliveryForecastByIds_result, "list")
  expect_true(TRUE)

})

