#' @examples
#' \donttest{
#' request_data <- data.frame(name = paste0("TestUser", 1:3),
#'                            email = paste0('testuser', 1:3, '@gmail.com'), 
#'                            roleId = rep(-1, 3))
#' result <- dfp_createUsers(request_data)
#' }