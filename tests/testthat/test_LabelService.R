context("LabelService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

hypothetical_label <- list(name="TestLabel", 
                           description="Test", 
                           types='COMPETITIVE_EXCLUSION')

options(rdfp.network_code = rdfp_options$test_network_code)
request_data <- list('labels'=hypothetical_label)

dfp_createLabels_result <- dfp_createLabels(request_data)

options(rdfp.network_code = rdfp_options$network_code)


test_that("dfp_createLabels", {

    expect_is(dfp_createLabels_result, "list")
    expect_true(all(c('id', 'name', 'description', 'types', 'isActive') %in% names(dfp_createLabels_result)))

})

test_that("dfp_getLabelsByStatement", {

  options(rdfp.network_code = rdfp_options$test_network_code)
    request_data <- list('filterStatement'=list('query'="WHERE name='Test'"))
    
    dfp_getLabelsByStatement_result <- dfp_getLabelsByStatement(request_data)
    
    expect_is(dfp_getLabelsByStatement_result, "list")
  options(rdfp.network_code = rdfp_options$network_code)

})

test_that("dfp_performLabelAction", {
  
  options(rdfp.network_code = rdfp_options$test_network_code)
    request_data <- list(labelAction='DeactivateLabels',
                         filterStatement=list('query'=paste0("WHERE id=", dfp_createLabels_result$id)))
    
    dfp_performLabelAction_result <- dfp_performLabelAction(request_data)
    
    expect_is(dfp_performLabelAction_result, "list")
    expect_true(all(c('numChanges') %in% names(dfp_performLabelAction_result)))
    expect_equal(dfp_performLabelAction_result$numChanges, '1')
    
    # check that action worked
    request_data <- list('filterStatement'=
                           list('query'=paste0("WHERE isActive=false and id=", 
                                               dfp_createLabels_result$id)))
    dfp_getLabelsByStatement_result <- dfp_getLabelsByStatement(request_data)
    
    expect_equal(dfp_getLabelsByStatement_result$totalResultSetSize, '1')
    
  options(rdfp.network_code = rdfp_options$network_code)

})

test_that("dfp_updateLabels", {
  
  options(rdfp.network_code = rdfp_options$test_network_code)
  
    hypothetical_label_w_id <- list(id=dfp_createLabels_result$id, 
                                    name="TestLabel", 
                                    description="Test2", 
                                    types='COMPETITIVE_EXCLUSION')
    request_data <- list('labels'=hypothetical_label_w_id)
    
    dfp_updateLabels_result <- dfp_updateLabels(request_data)
    
    expect_is(dfp_updateLabels_result, "list")
    expect_true(all(c('id', 'name', 'description', 'types', 'isActive') %in% names(dfp_updateLabels_result)))
    expect_equal(dfp_updateLabels_result$description, 'Test2')

  options(rdfp.network_code = rdfp_options$network_code)

})

