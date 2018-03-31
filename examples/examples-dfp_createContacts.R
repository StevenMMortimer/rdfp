#' @examples
#' \dontrun{
#' request_data <- list(contacts=list(name="TestContact1", 
#'                                    companyId=dfp_createCompanies_result$id, 
#'                                    status='UNINVITED', 
#'                                    cellPhone='(888) 999-7777',
#'                                    comment='API Test', 
#'                                    email='testcontact1@@gmail.com'))
#' result <- dfp_createContacts(request_data)
#' }