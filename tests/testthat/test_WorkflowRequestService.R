context("WorkflowRequestService")

rdfp_options <- readRDS("rdfp_options.rds")
options(rdfp.network_code = rdfp_options$network_code)
options(rdfp.application_name = rdfp_options$application_name)
options(rdfp.client_id = rdfp_options$client_id)
options(rdfp.client_secret = rdfp_options$client_secret)

dfp_auth(token = "rdfp_token.rds")

test_that("dfp_getWorkflowRequestsByStatement", {

   request_data <- list('filterStatement'=list('query'="WHERE type='WORKFLOW_APPROVAL_REQUEST'"))

   expect_message(try(dfp_getWorkflowRequestsByStatement(request_data), silent=T), 'MISSING_FEATURE')
   expect_error(dfp_getWorkflowRequestsByStatement(request_data))

})

test_that("dfp_performWorkflowRequestAction", {
  
  options(rdfp.network_code = rdfp_options$test_network_code)
  request_data <- list(action='ApproveWorkflowApprovalRequests',
                       filterStatement=list('query'=paste0("WHERE type='WORKFLOW_APPROVAL_REQUEST'")))
  
  dfp_performWorkflowRequestAction_result <- dfp_performWorkflowRequestAction(request_data)
  
  expect_message(try(dfp_performWorkflowRequestAction(request_data), silent=T), 'MISSING_FEATURE')
  expect_error(dfp_performWorkflowRequestAction(request_data))

  options(rdfp.network_code = rdfp_options$network_code)
  
})

