#' PublisherQueryLanguageService
#' 
#' Provides methods for executing a PQL Statement to retrieve information from
#' the system. In order to support the selection of columns of interest from
#' various tables, Statement objects support a "select" clause.
#' An example
#' query text might be "select CountryCode, Name from Geo_Target", where
#' CountryCode and Name are columns of interest and Geo_Target is the table.
#'
#' The following tables are supported:
#' \itemize{
#'   \item{Geo_Target}
#'   \item{Bandwidth_Group}
#'   \item{Browser}
#'   \item{Browser_Language}
#'   \item{Device_Capability}
#'   \item{Device_Category}
#'   \item{Device_Manufacturer}
#'   \item{Mobile_Carrier}
#'   \item{Mobile_Device}
#'   \item{Mobile_Device_Submodel}
#'   \item{Operating_System}
#'   \item{Operating_System_Version}
#'   \item{Third_Party_Company}
#'   \item{Line_Item}
#'   \item{Ad_Unit}
#'   \item{User}
#'   \item{Exchange_Rate}
#'   \item{Programmatic_Buyer}
#'   \item{Audience_Segment_Category}
#'   \item{Audience_Segment}
#'   \item{Proposal_Retraction_Reason}
#'   \item{Time_Zone}
#'   \item{Proposal_Terms_And_Conditions}
#'   \item{Change_History}
#' }
#'
#' Visit the See Also section below to proceed to Google and view columns in each of these tables.
#' 
#' select
#' 
#' Retrieves rows of data that satisfy the given Statement query from the system.
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201811/PublisherQueryLanguageService#select}{Google Documentation for select}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a selectResponse 
#' @examples
#' \dontrun{
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
#' @export
dfp_select <- function(request_data, verbose=FALSE){
  request_body <- form_request_body(service='PublisherQueryLanguageService', root_name='select', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='selectResponse', as_df=FALSE)
  result <- dfp_select_parse(result[[1]])
  return(result)
}
#' 
