#' @examples
#' \dontrun{
#' request_data <- list(teams=list(name="TestTeam1", 
#'                                 description='API Test Team 1', 
#'                                 hasAllCompanies='true', 
#'                                 hasAllInventory='true',
#'                                 teamAccessType='READ_WRITE'))
#' result <- dfp_createTeams(request_data)
#' }