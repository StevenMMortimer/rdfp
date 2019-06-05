#' @examples
#' \donttest{
#' request_data <- data.frame(name="Auto - Competitive Exclusion",
#'                            description=paste0("A label to prevent two different car ",
#'                                               "companies from showing ads together"),
#'                            types='COMPETITIVE_EXCLUSION')
#' request_data <- list('labels'=hypothetical_label)
#' result <- dfp_createLabels(request_data)
#' }