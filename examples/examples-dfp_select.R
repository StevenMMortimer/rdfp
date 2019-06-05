#' @examples
#' \donttest{
#'  request_data <- list(selectStatement=
#'  list(query='SELECT Id, Name, Targeting FROM LineItem LIMIT 3')) 
#'  dfp_select_result <- dfp_select(request_data)
#'  
#'  request_data <- list(selectStatement=
#'  list(query="SELECT Id
#'                   , Name
#'                   , CanonicalParentId
#'                   , CountryCode
#'                   , Type 
#'              FROM Geo_Target 
#'              WHERE CountryCode='US' AND (TYPE='STATE' OR TYPE='COUNTY')"))
#'  us_geos <- dfp_select(request_data)
#' }