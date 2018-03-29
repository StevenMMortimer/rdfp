context("LabelService")

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
hypothetical_label <- list(name=paste0("TestLabel - ", myuuid), 
                           description="Test", 
                           types='COMPETITIVE_EXCLUSION')

options(rdfp.network_code = rdfp_options$test_network_code)
request_data <- list('labels'=hypothetical_label)

dfp_createLabels_result <- dfp_createLabels(request_data)

options(rdfp.network_code = rdfp_options$network_code)

test_that("dfp_createLabels", {

    expect_is(dfp_createLabels_result, "data.frame")
    expect_true(all(c('id', 'name', 'description', 'types', 'isActive') %in% names(dfp_createLabels_result)))
})

test_that("dfp_getLabelsByStatement", {

  options(rdfp.network_code = rdfp_options$test_network_code)
  request_data <- list('filterStatement'=list('query'="WHERE name='Test'"))
  
  dfp_getLabelsByStatement_result <- dfp_getLabelsByStatement(request_data)
  expect_is(dfp_getLabelsByStatement_result, "data.frame")
  
  options(rdfp.network_code = rdfp_options$network_code)
})

test_that("dfp_performLabelAction", {
  
  options(rdfp.network_code = rdfp_options$test_network_code)
  request_data <- list(labelAction='DeactivateLabels',
                       filterStatement=list('query'=paste0("WHERE id=", dfp_createLabels_result$id)))
  
  dfp_performLabelAction_result <- dfp_performLabelAction(request_data, as_df=FALSE)
  expect_is(dfp_performLabelAction_result, "list")
  expect_length(dfp_performLabelAction_result, 1)
  expect_named(dfp_performLabelAction_result[[1]], c("numChanges"))    
  
  # check that action worked
  request_data <- list('filterStatement'=
                         list('query'=paste0("WHERE isActive=false and id=", 
                                             dfp_createLabels_result$id)))
  dfp_getLabelsByStatement_result <- dfp_getLabelsByStatement(request_data)
  expect_is(dfp_getLabelsByStatement_result, "data.frame")
  expect_equal(nrow(dfp_getLabelsByStatement_result), 1)

  options(rdfp.network_code = rdfp_options$network_code)
})

test_that("dfp_updateLabels", {
  
  options(rdfp.network_code = rdfp_options$test_network_code)
  
  hypothetical_label_w_id <- list(id=dfp_createLabels_result$id, 
                                  name=paste0(myuuid, '2'), 
                                  description="Test2", 
                                  types='COMPETITIVE_EXCLUSION')
  request_data <- list('labels'=hypothetical_label_w_id)
  
  dfp_updateLabels_result <- dfp_updateLabels(request_data)
  
  expect_is(dfp_updateLabels_result, "data.frame")
  expect_true(all(c('id', 'name', 'description', 'types', 'isActive') %in% 
                    names(dfp_updateLabels_result)))
  expect_equal(dfp_updateLabels_result$name, paste0(myuuid, '2'))

  options(rdfp.network_code = rdfp_options$network_code)
})

