#' Transmit and Receive API SOAP Calls
#' 
#' Pull together SOAP Header and Body and 
#' make call to the appropriate API service, then 
#' parse the response.
#' 
#' @importFrom XML xmlTreeParse xmlToList xmlChildren xmlRoot xmlValue newXMLTextNode
#' @importFrom httr POST content
#' @include dfp_auth.R
#' @param request_body a character string of XML with service name
#' as an attribute
#' @param service a character string matching one of the API
#' services
#' @param network_code a character string matching the code 
#' associated with the ad serving network
#' @param application_name a character string naming your
#' application so that it can be identified in API calls
#' @param version a character string indicating the version of the DFP API 
#' that is to be used in the SOAP request
#' @param verbose a logical indicating whether to print the POSTed XML
#' @return a XML document if no error was returned
#' @note This function is meant to be used internally. Only use when debugging.
#' @keywords internal
#' @export
execute_soap_request <- function(request_body, service = NULL,
                                 network_code=getOption("rdfp.network_code"), 
                                 application_name=getOption("rdfp.application_name"),
                                 version=getOption("rdfp.version"),
                                 verbose=FALSE){
  
  if (is.null(service)){
    service <- attributes(request_body)$service
  }

  header <- paste0('<?xml version="1.0" encoding="UTF-8"?> 
<soapenv:Envelope
 xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" 
 xmlns:xsd="http://www.w3.org/2001/XMLSchema" 
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
 <soapenv:Header>
   <ns1:RequestHeader
     soapenv:actor="http://schemas.xmlsoap.org/soap/actor/next"
     soapenv:mustUnderstand="0"
     xmlns:ns1="https://www.google.com/apis/ads/publisher/', version, '">
       <ns1:networkCode>', network_code, '</ns1:networkCode>
       <ns1:applicationName>', application_name, '</ns1:applicationName>
   </ns1:RequestHeader>
 </soapenv:Header>')
  
  soap_body <- paste0("<soapenv:Body>\n  ", 
                      request_body,
                     "  \n</soapenv:Body>\n ")
  
  env_close <- '</soapenv:Envelope>' 
  
  this_body <- paste0(header, ' \n ', soap_body, ' \n', env_close)
  
  url <- paste0('https://ads.google.com/apis/ads/publisher/', version, '/', service)

  if(verbose){
    print(url)
    print(newXMLTextNode(this_body))
  }
  
  httr_response <- POST(url=url, config=get_google_token(), body=this_body)
  catch_errors(httr_response)
  return(httr_response)
}


#' Format a datetime for DFP
#' 
#' Take a datetime representation in R and convert it to the list required by 
#' DFP to indicate a datetime
#' 
#' @importFrom lubridate year month day hour minute second hours is.Date
#' @param this_date Date; formatted as Date, POSIXct, or POSIXlt
#' @param daytime character; either "beginning" or "end" so that the function 
#' knows which hours to set if needed
#' @param timeZoneId character; a string indicating the timezone that should be used. 
#' The timezone ID must be in Time_Zone database
#' @param ensure_today_works logical; an indicator that will automatically offset 
#' the current time by 1 hour so that forecasts will actually work. If you try to 
#' forecast from a timestamp of now, then by the time you submit it to the ForecastService 
#' it will already be too late to be in the future.
#' @return a \code{list} formatted to the spec required for StartDateTime or EndDateTime
#' @examples 
#' dfp_date_to_list(Sys.Date()+1)
#' @export
dfp_date_to_list <- function(this_date,
                             daytime = c('beginning','end'), 
                             timeZoneId = Sys.timezone(), 
                             ensure_today_works=TRUE){
  
  which_daytime <- match.arg(daytime)
  
  if(is.na(timeZoneId) || timeZoneId == ""){
    timeZoneId <- "UTC"
  }
  
  if(ensure_today_works & (difftime(this_date, (Sys.time()+hours(1))) < 0)){
    message("The date provided is not at least 1 hour into the future. Setting to one hour after now.")
    this_date <- Sys.time() + hours(1)
  }  
  
  if(is.Date(this_date)){
    this_hour <- if(which_daytime == 'beginning') 0 else 23
    this_minute <- if(which_daytime == 'beginning') 0 else 59
    this_second <- if(which_daytime == 'beginning') 0 else 59
  } else {
    this_hour <- hour(this_date)
    this_minute <- minute(this_date)
    this_second <- round(second(this_date), 0)
  }
  
  x <- list(date=list(year = year(this_date),
                      month = month(this_date), 
                      day = day(this_date)), 
            hour = this_hour, 
            minute = this_minute,
            second = this_second,
            timeZoneId = timeZoneId)
  return(x)
}

#' Function to catch and print HTTP errors
#'
#' @importFrom httr content http_error status_code
#' @importFrom xml2 xml_find_first xml_text xml_ns_strip
#' @note This function is meant to be used internally. Only use when debugging.
#' @keywords internal
#' @export
catch_errors <- function(x){
  if(http_error(x)){
    response_parsed <- content(x, as='parsed', encoding='UTF-8')
    error_message <- NA
    
    error_message <- try({
      response_parsed %>%
        xml_ns_strip() %>%
        xml_find_first(".//soap:Fault") %>%
        xml_find_first(".//errorString") %>%
        xml_text()      
      }, silent=TRUE)

    if(is.na(error_message)){
      error_message <- try({
        response_parsed %>%
          xml_ns_strip() %>%
          xml_find_first(".//soap:Fault") %>%
          xml_find_first(".//faultstring") %>%
          xml_text()      
      }, silent=TRUE)
    } 
    if(is.na(error_message)){  
      error_message <- sprintf("API Error. Status Code: %s", status_code(x))
    }
    stop(error_message, call. = FALSE)
  }
  invisible(FALSE)
}


#' Take report URL and convert to data.frame
#' 
#' Receive a URL (usually from the ReportService) and 
#' download data from that URL. Currently, the exportFormat
#' must have been set for CSV_DUMP
#' 
#' @usage dfp_report_url_to_dataframe(report_url, exportFormat='CSV_DUMP')
#' @importFrom curl curl_download
#' @importFrom readr read_tsv read_csv cols
#' @param report_url a URL character string returned from the 
#' function \link{dfp_getReportDownloadURL}
#' @param exportFormat a character string naming what type of exportFormat was 
#' provided to \link{dfp_getReportDownloadURL}. This is used to determine how to parse the results.
#' @return a \code{data.frame} of report results from the specified URL
#' 
#' @export
dfp_report_url_to_dataframe <- function(report_url, exportFormat="CSV_DUMP"){
  
  stopifnot(exportFormat %in% c("CSV_DUMP", "TSV"))
  
  temp_destination <- tempfile()
  curl_download(url=report_url, destfile=temp_destination)
  this_encoding <- "UTF-8"
  
  if (exportFormat == "CSV_DUMP"){
    report_dat <- read_csv(gzfile(temp_destination, encoding=this_encoding), 
                           col_types = cols())
  } else if (exportFormat == "TSV"){
    report_dat <- read_tsv(gzfile(temp_destination, encoding=this_encoding), 
                           col_types = cols())
  } else {
    stop(sprintf("exportFormat not recognized: %s", exportFormat), call. = FALSE)
  }
  return(report_dat)
}


#' Take report request and return data.frame
#' 
#' Take a report request and manage all aspects for user
#' until returning a data.frame or error
#' 
#' @usage dfp_full_report_wrapper(request_data, 
#'                                check_interval=3, 
#'                                max_tries=20, 
#'                                verbose=FALSE)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP 
#' request (XML format, but passed as character string)
#' @param check_interval a numeric specifying seconds to wait between report 
#' status requests to check if complete
#' @param max_tries a numeric specifying the maximum number of times to check 
#' whether the report is complete before the function essentially times out
#' @param verbose a logical indicating whether to print the report URL
#' @return a \code{data.frame} of report results as specified by the request_data
#' @examples 
#' \dontrun{
#' request_data <- list(reportJob =
#'                        list(reportQuery =
#'                               list(dimensions = 'MONTH_AND_YEAR',
#'                                    dimensions = 'AD_UNIT_ID',
#'                                    dimensions = 'AD_UNIT_NAME',
#'                                    dimensions = 'ADVERTISER_NAME',
#'                                    dimensions = 'ORDER_NAME',
#'                                    dimensions = 'LINE_ITEM_NAME',
#'                                    adUnitView = 'FLAT',
#'                                    columns = 'AD_SERVER_IMPRESSIONS', 
#'                                    columns = 'AD_SERVER_CLICKS',
#'                                    dateRangeType = 'LAST_WEEK')))
#' report_data <- dfp_full_report_wrapper(request_data)
#' }
#' @seealso \link{dfp_runReportJob} 
#' @seealso \link{dfp_getReportJobStatus}
#' @seealso \link{dfp_getReportDownloadURL}
#' @export
dfp_full_report_wrapper <- function(request_data, 
                                    check_interval=3, 
                                    max_tries=20, 
                                    verbose=FALSE){
  
  dfp_runReportJob_result <- dfp_runReportJob(request_data)
  report_job_id <- dfp_runReportJob_result$id
  status_request_data <- list(reportJobId=report_job_id)
  dfp_getReportJobStatus_result <- dfp_getReportJobStatus(status_request_data, as_df=FALSE)
  
  # continually check status until complete
  counter <- 0
  while(dfp_getReportJobStatus_result[[1]] != 'COMPLETED' & counter < max_tries){
    dfp_getReportJobStatus_result <- dfp_getReportJobStatus(status_request_data, as_df=FALSE)
    Sys.sleep(3)
    counter <- counter + 1
  }  
  
  stopifnot(dfp_getReportJobStatus_result[[1]] == 'COMPLETED')
  
  url_request_data <- list(reportJobId=report_job_id, exportFormat='CSV_DUMP')
  dfp_getReportDownloadURL_result <- dfp_getReportDownloadURL(url_request_data, as_df=FALSE)
  if(verbose){
    print(dfp_getReportDownloadURL_result)
  }
  report_dat <- dfp_report_url_to_dataframe(report_url=dfp_getReportDownloadURL_result[[1]])
  
  return(report_dat)
}


#' Take select request and return data.frame
#' 
#' Take a select request result from the 
#' PublishersQueryLanguage service and parse into a data.frame
#' 
#' @importFrom purrr map_df modify_if
#' @importFrom dplyr as_tibble
#' @importFrom readr type_convert cols
#' @param result a \code{list} returned from \link{dfp_select}
#' @return a \code{data.frame} of report results as specified by the result
#' @seealso dfp_select 
#' @note This function is meant to be used internally. Only use when debugging.
#' @keywords internal
#' @export
dfp_select_parse <- function(result){
  these_names <- unlist(result[grepl('columnTypes', names(result))], 
                        use.names = F)
  result_parsed <- map_df(result[grepl('rows', names(result))], 
                      .f=function(x){
                        x <- lapply(x, FUN=function(x){x$value})
                        names(x) <- these_names
                        new_x <- as_tibble(modify_if(x, ~length(.x) > 1, list))
                        return(new_x)
                      })
  result_parsed <- type_convert(result_parsed, col_types = cols())
  return(result_parsed)
}