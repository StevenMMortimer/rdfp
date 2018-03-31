#' @examples
#' \dontrun{
#' request_data <- data.frame(teamid=rep(dfp_createTeams_result$id, 3),
#'                            userid=dfp_createUsers_result$id)
#' result <- dfp_createUserTeamAssociations(request_data)
#' }