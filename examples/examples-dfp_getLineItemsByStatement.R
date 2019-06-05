#' @examples
#' \dontrun{
#' filter <- "WHERE LineItemType='STANDARD' and Status='DELIVERING' LIMIT 10"
#' result <- dfp_getLineItemsByStatement(list(filterStatement=list(query=filter)))
#' }
