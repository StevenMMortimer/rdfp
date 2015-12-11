#' ReportService
#' 
#' Provides methods for executing a ReportJob and retrieving performance and
#' statistics about ad campaigns, networks, inventory and sales.
#' Follow the
#' steps outlined below:#' <ul> <li>Create the ReportJob object by
#' invoking ReportService#runReportJob.</li> <li>Poll the ReportJob object
#' using ReportService#getReportJob.</li> <li>Continue to poll the ReportJob
#' object until the ReportJob#reportJobStatus field is equal to
#' ReportJobStatus#COMPLETED or ReportJobStatus#FAILED.</li> <li>If
#' successful, fetch the URL for downloading the report by invoking
#' ReportService#getReportDownloadURL.</li> </ul><h4>Test network
#' behavior</h4>
#' The networks created using NetworkService#makeTestNetwork
#' are unable to provide reports that would be comparable to the production
#' environment because reports require traffic history. In the test networks,
#' reports will consistently return no data for all reports.
#' 
#' ReportService Object Factory
#' 
#' A function to create a variety of objects that are part of the ReportService
#' Note: not all objects here are inputs to the functions of this service so 
#' please consult each function for the required inputs
#' 
#' Below is a list of objects and their required components to be created with this function:
#' 
#' \strong{ApiError}
#' 
#' The API error base class that provides details about an error that occurred
#' while processing a service request. The OGNL field path is provided for
#' parsers to identify the request data element that may have caused the error.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.ApiError}{Google Documentation for ApiError}
#' \describe{
#'  \item{fieldPath}{a character - The OGNL field path to identify cause of error.}
#'  \item{trigger}{a character - The data that caused the error.}
#'  \item{errorString}{a character - A simple string representation of the error and reason.}
#' }
#' 
#' \strong{ApiException}
#' 
#' Exception class for holding a list of service errors.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.ApiException}{Google Documentation for ApiException}
#' \describe{
#'  \item{message}{a character (inherited from ApplicationException) - Error message.}
#'  \item{errors}{a ApiError - List of errors.}
#' }
#' 
#' \strong{ApiVersionError}
#' 
#' Errors related to the usage of API versions.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.ApiVersionError}{Google Documentation for ApiVersionError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a ApiVersionError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{UPDATE_TO_NEWER_VERSION - Indicates that the operation is not allowed in the version the request was
#' made in.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{ApplicationException}
#' 
#' Base class for exceptions.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.ApplicationException}{Google Documentation for ApplicationException}
#' \describe{
#'  \item{message}{a character - Error message.}
#' }
#' 
#' \strong{AuthenticationError}
#' 
#' An error for an exception that occurred when authenticating.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.AuthenticationError}{Google Documentation for AuthenticationError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a AuthenticationError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{AMBIGUOUS_SOAP_REQUEST_HEADER - The SOAP message contains a request header with an ambiguous definition of
#' the authentication header fields. This means either the authToken and
#' oAuthToken fields were both null or both were specified. Exactly one value
#' should be specified with each request.}
#'      \item{INVALID_EMAIL - The login provided is invalid.}
#'      \item{AUTHENTICATION_FAILED - Tried to authenticate with provided information, but failed.}
#'      \item{INVALID_OAUTH_SIGNATURE - The OAuth provided is invalid.}
#'      \item{INVALID_SERVICE - The specified service to use was not recognized.}
#'      \item{MISSING_SOAP_REQUEST_HEADER - The SOAP message is missing a request header with an authToken and optional
#' networkCode.}
#'      \item{MISSING_AUTHENTICATION_HTTP_HEADER - The HTTP request is missing a request header with an authToken}
#'      \item{MISSING_AUTHENTICATION - The request is missing an authToken}
#'      \item{NOT_WHITELISTED_FOR_API_ACCESS - The customer is not whitelisted for API access.}
#'      \item{NO_NETWORKS_TO_ACCESS - The user is not associated with any network.}
#'      \item{NETWORK_NOT_FOUND - No network for the given networkCode was found.}
#'      \item{NETWORK_CODE_REQUIRED - The user has access to more than one network, but did not provide a
#' networkCode.}
#'      \item{CONNECTION_ERROR - An error happened on the server side during connection to authentication
#' service.}
#'      \item{GOOGLE_ACCOUNT_ALREADY_ASSOCIATED_WITH_NETWORK - The user tried to create a test network using an account that already is
#' associated with a network.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{BooleanValue}
#' 
#' Contains a boolean value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.BooleanValue}{Google Documentation for BooleanValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a boolean - The boolean value.}
#' }
#' 
#' \strong{CollectionSizeError}
#' 
#' Error for the size of the collection being too large
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.CollectionSizeError}{Google Documentation for CollectionSizeError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a CollectionSizeError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{TOO_LARGE}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{CommonError}
#' 
#' A place for common errors that can be used across services.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.CommonError}{Google Documentation for CommonError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a CommonError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{NOT_FOUND - Indicates that an attempt was made to retrieve an entity that does not
#' exist.}
#'      \item{ALREADY_EXISTS - Indicates that an attempt was made to create an entity that already exists.}
#'      \item{DUPLICATE_OBJECT - Indicates that two elements in the collection were identical.}
#'      \item{CANNOT_UPDATE - Indicates that an attempt was made to change an immutable field.}
#'      \item{CONCURRENT_MODIFICATION - Indicates that another request attempted to update the same data in the same
#' network at about the same time. Please wait and try the request again.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{Date}
#' 
#' Represents a date.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.Date}{Google Documentation for Date}
#' \describe{
#'  \item{year}{a integer - Year (e.g., 2009)}
#'  \item{month}{a integer - Month (1..12)}
#'  \item{day}{a integer - Day (1..31)}
#' }
#' 
#' \strong{DateTime}
#' 
#' Represents a date combined with the time of day.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.DateTime}{Google Documentation for DateTime}
#' \describe{
#'  \item{date}{a Date}
#'  \item{hour}{a integer}
#'  \item{minute}{a integer}
#'  \item{second}{a integer}
#'  \item{timeZoneID}{a character}
#' }
#' 
#' \strong{DateTimeValue}
#' 
#' Contains a date-time value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.DateTimeValue}{Google Documentation for DateTimeValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a DateTime - The DateTime value.}
#' }
#' 
#' \strong{DateValue}
#' 
#' Contains a date value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.DateValue}{Google Documentation for DateValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a Date - The Date value.}
#' }
#' 
#' \strong{FeatureError}
#' 
#' Errors related to feature management. If you attempt using a feature that is
#' not available to the current network you'll receive a FeatureError with the
#' missing feature as the trigger.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.FeatureError}{Google Documentation for FeatureError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a FeatureError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{MISSING_FEATURE - A feature is being used that is not enabled on the current network.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{InternalApiError}
#' 
#' Indicates that a server-side error has occured. InternalApiErrors are
#' generally not the result of an invalid request or message sent by the
#' client.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.InternalApiError}{Google Documentation for InternalApiError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a InternalApiError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{UNEXPECTED_INTERNAL_API_ERROR - API encountered an unexpected internal error.}
#'      \item{TRANSIENT_ERROR - A temporary error occurred during the request. Please retry.}
#'      \item{UNKNOWN - The cause of the error is not known or only defined in newer versions.}
#'      \item{DOWNTIME - The API is currently unavailable for a planned downtime.}
#'    }
#'   }
#' }
#' 
#' \strong{NotNullError}
#' 
#' Caused by supplying a null value for an attribute that cannot be null.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.NotNullError}{Google Documentation for NotNullError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a NotNullError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{ARG1_NULL - Assuming that a method will not have more than 3 arguments, if it does,
#' return NULL}
#'      \item{ARG2_NULL}
#'      \item{ARG3_NULL}
#'      \item{NULL}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{NumberValue}
#' 
#' Contains a numeric value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.NumberValue}{Google Documentation for NumberValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a character - The numeric value represented as a string.}
#' }
#' 
#' \strong{ObjectValue}
#' 
#' Contains an object value.  This object is experimental! ObjectValue is an
#' experimental, innovative, and rapidly changing new feature for DFP.
#' Unfortunately, being on the bleeding edge means that we may make
#' backwards-incompatible changes to ObjectValue. We will inform the community
#' when this feature is no longer experimental.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.ObjectValue}{Google Documentation for ObjectValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#' }
#' 
#' \strong{ParseError}
#' 
#' Lists errors related to parsing.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.ParseError}{Google Documentation for ParseError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a ParseError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{UNPARSABLE - Indicates an error in parsing an attribute.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{PermissionError}
#' 
#' Errors related to incorrect permission.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.PermissionError}{Google Documentation for PermissionError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a PermissionError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{PERMISSION_DENIED - User does not have the required permission for the request.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{PublisherQueryLanguageContextError}
#' 
#' An error that occurs while executing a PQL query contained in a Statement
#' object.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.PublisherQueryLanguageContextError}{Google Documentation for PublisherQueryLanguageContextError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a PublisherQueryLanguageContextError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{UNEXECUTABLE - Indicates that there was an error executing the PQL.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{PublisherQueryLanguageSyntaxError}
#' 
#' An error that occurs while parsing a PQL query contained in a Statement
#' object.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.PublisherQueryLanguageSyntaxError}{Google Documentation for PublisherQueryLanguageSyntaxError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a PublisherQueryLanguageSyntaxError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{UNPARSABLE - Indicates that there was a PQL syntax error.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{QuotaError}
#' 
#' Describes a client-side error on which a user is attempting to perform an
#' action to which they have no quota remaining.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.QuotaError}{Google Documentation for QuotaError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a QuotaError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{EXCEEDED_QUOTA - The number of requests made per second is too high and has exceeded the
#' allowable limit. The recommended approach to handle this error is to wait
#' about 5 seconds and then retry the request. Note that this does not
#' guarantee the request will succeed. If it fails again, try increasing the
#' wait time.  Another way to mitigate this error is to limit requests to 2 per
#' second for Small Business networks, or 8 per second for Premium networks.
#' Once again this does not guarantee that every request will succeed, but may
#' help reduce the number of times you receive this error.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{ReportDownloadOptions}
#' 
#' Represents the options for an API report download request. See ReportService
#' getReportDownloadUrlWithOptions.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.ReportDownloadOptions}{Google Documentation for ReportDownloadOptions}
#' \describe{
#'  \item{exportFormat}{a ExportFormat - The ExportFormat used to generate the report. Default value is ExportFormat
#' CSV_DUMP. This can take one of the following values: 
#'    \itemize{
#'      \item{TSV - The report file is generated as a list of Tab Separated Values.}
#'      \item{CSV_EXCEL - The report file is generated as a list of Comma Separated Values for Excel.}
#'      \item{CSV_DUMP - The report file is generated as a list of Comma Separated Values, to be used
#' with automated machine processing.  There is no pretty printing for the
#' output, and no total row. Column headers are the qualified name e.g.
#' "Dimension.ORDER_NAME". Monetary amounts are represented as micros in the
#' Network currencyCode currency of the network. Dates are formatted according
#' to the ISO 8601 standard YYYY-MM-DD DateTimes are formatted according to the
#' ISO 8601 standard YYYY-MM-DDThh:mm:ss[+-]hh:mm}
#'      \item{XML - The report file is generated as XML.}
#'      \item{XLSX - The report file is generated as an Office Open XML spreadsheet designed for
#' Excel 2007+.}
#'    }
#'   }
#'  \item{includeReportProperties}{a boolean - Whether or not to include the report properties (e.g. network, user, date
#' generated...) in the generated report. Default is false.}
#'  \item{includeTotalsRow}{a boolean - Whether or not to include the totals row. Default is true for all formats
#' except ExportFormat CSV_DUMP.}
#'  \item{useGzipCompression}{a boolean - Whether or not to compress the report file to a gzip file. Default is true.
#' Regardless of value, gzip http compression is available from the URL by
#' normal means.}
#' }
#' 
#' \strong{ReportError}
#' 
#' An error for an exception that occurred while running the report.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.ReportError}{Google Documentation for ReportError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a ReportError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{DEFAULT - Default ReportError when the reason is not among any already defined.}
#'      \item{REPORT_ACCESS_NOT_ALLOWED - User does not have permission to access the report.}
#'      \item{DIMENSION_VIEW_NOT_ALLOWED - User does not have permission to view one or more Dimension.}
#'      \item{DIMENSION_COMBINATION_NOT_ALLOWED - User does not have permission to view the Dimension combination.}
#'      \item{ATTRIBUTE_VIEW_NOT_ALLOWED - User has no permission to view one or more attributes.}
#'      \item{COLUMN_VIEW_NOT_ALLOWED - User does not have permission to view one or more Column.}
#'      \item{TOO_MANY_CONCURRENT_REPORTS - The user has exceeded the limit on the number of reports that can be run
#' concurrently. The current limit is 20 per user.}
#'      \item{REPORT_QUERY_TOO_LONG - The report query exceeds the maximum allowed number of characters.}
#'      \item{INVALID_OPERATION_FOR_REPORT_STATE - Invalid report job state for the given operation.}
#'      \item{INVALID_DIMENSIONS - Invalid Dimension objects specified.}
#'      \item{INVALID_ATTRIBUTES - The attribute ID(s) are not valid.}
#'      \item{INVALID_CONTENT_HIERARCHY_DIMENSIONS - The API error when running the report with ContentHierarchyDimension. There
#' are three reasons for this error.  ReportQuery dimensions contains Dimension
#' CONTENT_HIERARCHY, but ReportQuery
#' contentMetadataHierarchyCustomTargetingKeyIds is empty. ReportQuery
#' contentMetadataHierarchyCustomTargetingKeyIds is non-empty, but ReportQuery
#' dimensions does not contain Dimension CONTENT_HIERARCHY. The ReportQuery
#' contentMetadataKeyHierarchyCustomTargetingKeyIds specified along with the
#' Dimension CONTENT_HIERARCHY are not valid, i.e., these IDs are not defined
#' in the content hierarchy by the publisher.}
#'      \item{INVALID_COLUMNS - Invalid Column objects specified.}
#'      \item{INVALID_DIMENSION_FILTERS - Invalid DimensionFilter objects specified.}
#'      \item{INVALID_DATE - Invalid date.}
#'      \item{END_DATE_TIME_NOT_AFTER_START_TIME - The start date for running the report should not be later than the end date.}
#'      \item{NOT_NULL - The list of Dimension and Column objects cannot be empty.}
#'      \item{ATTRIBUTES_NOT_SUPPORTED_FOR_REQUEST - Attribute has to be selected in combination with dimensions.}
#'      \item{COLUMNS_NOT_SUPPORTED_FOR_REQUESTED_DIMENSIONS - Not all Column objects requested are supported for the given set of
#' Dimension objects.}
#'      \item{FAILED_TO_STORE_REPORT - Failed to store/cache a report.}
#'      \item{REPORT_NOT_FOUND - The requested report does not exist.}
#'      \item{SR_CANNOT_RUN_REPORT_IN_ANOTHER_NETWORK - User has no permission to view in another network.}
#'      \item{INVALID_TIME_ZONE_FOR_FEATURE_NOT_ENABLED - The time zone specified does not match the Network timeZone, but the time
#' zone reporting feature is not enabled.}
#'      \item{INVALID_TIME_ZONE_FOR_ID - The time zone id is not in the form of America/New_York, or does not
#' represent a valid time zone.}
#'      \item{UNSUPPORTED_TIME_ZONE - Unsupported time zone. All supported time zones can be found in the
#' Time_Zone PQL table with SupportedInReports being true.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{ReportJob}
#' 
#' Represents a report job that will be run to retrieve performance and
#' statistics information about ad campaigns, networks, inventory and sales.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.ReportJob}{Google Documentation for ReportJob}
#' \describe{
#'  \item{id}{a integer - The unique ID of the ReportJob. This value is read-only and is assigned by
#' Google.}
#'  \item{reportQuery}{a ReportQuery - Holds the filtering criteria.}
#'  \item{reportJobStatus}{a ReportJobStatus - The status of the ReportJob. This attribute is read-only and is assigned by
#' Google. This can take one of the following values: 
#'    \itemize{
#'      \item{COMPLETED - The ReportJob has completed successfully and is ready to download.}
#'      \item{IN_PROGRESS - The ReportJob is still being executed.}
#'      \item{FAILED - The ReportJob has failed to run to completion.}
#'    }
#'   }
#' }
#' 
#' \strong{ReportQuery}
#' 
#' A ReportQuery object allows you to specify the selection criteria for
#' generating a report.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.ReportQuery}{Google Documentation for ReportQuery}
#' \describe{
#'  \item{dimensions}{a Dimension - The list of break-down types being requested in the report. The generated
#' report will contain the dimensions in the same order as requested. This can take one of the following values: 
#'    \itemize{
#'      \item{MONTH_AND_YEAR - Breaks down reporting data by month and year in the network time zone. Can
#' be used to filter on month using ISO 4601 format 'YYYY-MM'.}
#'      \item{WEEK - Breaks down reporting data by week of the year in the network time zone.
#' Cannot be used for filtering.}
#'      \item{DATE - Breaks down reporting data by date in the network time zone. Can be used to
#' filter by date using ISO 8601's format 'YYYY-MM-DD'".}
#'      \item{DAY - Breaks down reporting data by day of the week in the network time zone. Can
#' be used to filter by day of the week using the index of the day (from 1 for
#' Monday is 1 to 7 for Sunday).}
#'      \item{HOUR - Breaks down reporting data by hour of the day in the network time zone. Can
#' be used to filter by hour of the day (from 0 to 23).}
#'      \item{LINE_ITEM_ID - Breaks down reporting data by LineItem id. Can be used to filter by LineItem
#' id.}
#'      \item{LINE_ITEM_NAME - Breaks down reporting data by line item. LineItem name and LineItem id are
#' automatically included as columns in the report. Can be used to filter by
#' LineItem name.}
#'      \item{LINE_ITEM_TYPE - Breaks down reporting data by LineItem lineItemType. Can be used to filter
#' by line item type using LineItemType enumeration names.}
#'      \item{AGGREGATED_DEMAND_CHANNEL - Breaks down reporting data by aggregated demand channel type.}
#'      \item{ORDER_ID - Breaks down reporting data by Order id. Can be used to filter by Order id.}
#'      \item{ORDER_NAME - Breaks down reporting data by order. Order name and Order id are
#' automatically included as columns in the report. Can be used to filter by
#' Order name.}
#'      \item{ORDER_DELIVERY_STATUS - Delivery status of the order. Not available as a dimension to report on, but
#' exists as a dimension in order to filter on it using PQL. Valid values are
#' 'STARTED', 'NOT_STARTED' and 'COMPLETED'.}
#'      \item{ADVERTISER_ID - Breaks down reporting data by advertising company Company id. Can be used to
#' filter by Company id.}
#'      \item{ADVERTISER_NAME - Breaks down reporting data by advertising company. Company name and Company
#' id are automatically included as columns in the report. Can be used to
#' filter by Company name.}
#'      \item{AD_NETWORK_ID - The network that provided the ad for SDK ad mediation.  If selected for a
#' report, that report will include only SDK mediation ads and will not contain
#' non-SDK mediation ads.  SDK mediation ads are ads for mobile devices. They
#' have a list of ad networks which can provide ads to serve. Not every ad
#' network will have an ad to serve so the device will try each network
#' one-by-one until it finds an ad network with an ad to serve. The ad network
#' that ends up serving the ad will appear here. Note that this id does not
#' correlate to anything in the companies table and is not the same id as is
#' served by ADVERTISER_ID.}
#'      \item{AD_NETWORK_NAME - The name of the network defined in AD_NETWORK_ID.}
#'      \item{SALESPERSON_ID - Breaks down reporting data by salesperson User id. Can be used to filter by
#' User id.}
#'      \item{SALESPERSON_NAME - Breaks down reporting data by salesperson. User name and User id of the
#' salesperson are automatically included as columns in the report. Can be used
#' to filter by User name.}
#'      \item{CREATIVE_ID - Breaks down reporting data by Creative id or creative set id (master's
#' Creative id) if the creative is part of a creative set. Can be used to
#' filter by Creative id.}
#'      \item{CREATIVE_NAME - Breaks down reporting data by creative. Creative name and Creative id are
#' automatically included as columns in the report. Can be used to filter by
#' Creative name.}
#'      \item{CREATIVE_TYPE - Breaks down reporting data by creative type.}
#'      \item{CREATIVE_BILLING_TYPE - Breaks down reporting data by creative billing type.}
#'      \item{CUSTOM_EVENT_ID - Breaks down reporting data by custom event ID.}
#'      \item{CUSTOM_EVENT_NAME - Breaks down reporting data by custom event name.}
#'      \item{CUSTOM_EVENT_TYPE - Breaks down reporting data by custom event type (timer/exit/counter).}
#'      \item{CREATIVE_SIZE - Breaks down reporting data by Creative size. Cannot be used for filtering.}
#'      \item{AD_UNIT_ID - Breaks down reporting data by AdUnit id. Can be used to filter by AdUnit id.
#' AD_UNIT_NAME, i.e. AdUnit name, is automatically included as a dimension in
#' the report.}
#'      \item{AD_UNIT_NAME - Breaks down reporting data by ad unit. AdUnit name and AdUnit id are
#' automatically included as columns in the report. Can be used to filter by
#' AdUnit name.}
#'      \item{PARENT_AD_UNIT_ID - Used to filter on all the descendants of an ad unit by AdUnit id. Not
#' available as a dimension to report on.}
#'      \item{PARENT_AD_UNIT_NAME - Used to filter on all the descendants of an ad unit by AdUnit name. Not
#' available as a dimension to report on.}
#'      \item{PLACEMENT_ID - Breaks down reporting data by Placement id. Can be used to filter by
#' Placement id.}
#'      \item{PLACEMENT_NAME - Breaks down reporting data by placement. Placement name and Placement id are
#' automatically included as columns in the report. Can be used to filter by
#' Placement name.}
#'      \item{PLACEMENT_STATUS - Status of the placement. Not available as a dimension to report on, but
#' exists as a dimension in order to filter on it using PQL. Can be used to
#' filter on Placement status by using InventoryStatus enumeration names.}
#'      \item{TARGETING - Breaks down reporting data by criteria predefined by DoubleClick For
#' Publishers like the operating system, browser etc. Cannot be used for
#' filtering.}
#'      \item{DEVICE_CATEGORY_ID - The ID of the device category to which an ad is being targeted. Can be used
#' to filter by device category ID.}
#'      \item{DEVICE_CATEGORY_NAME - The category of device (smartphone, feature phone, tablet, or desktop) to
#' which an ad is being targeted. Can be used to filter by device category
#' name.}
#'      \item{COUNTRY_CRITERIA_ID - Breaks down reporting data by country criteria ID. Can be used to filter by
#' country criteria ID.}
#'      \item{COUNTRY_NAME - Breaks down reporting data by country name. The country name and the country
#' criteria ID are automatically included as columns in the report. Can be used
#' to filter by country name using the US English name.}
#'      \item{REGION_CRITERIA_ID - Breaks down reporting data by region criteria ID. Can be used to filter by
#' region criteria ID.}
#'      \item{REGION_NAME - Breaks down reporting data by region name. The region name and the region
#' criteria ID are automatically included as columns in the report. Can be used
#' to filter by region name using the US English name.}
#'      \item{CITY_CRITERIA_ID - Breaks down reporting data by city criteria ID. Can be used to filter by
#' city criteria ID.}
#'      \item{CITY_NAME - Breaks down reporting data by city name. The city name and the city criteria
#' ID are automatically included as columns in the report. Can be used to
#' filter by city name using the US English name.}
#'      \item{METRO_CRITERIA_ID - Breaks down reporting data by metro criteria ID. Can be used to filter by
#' metro criteria ID.}
#'      \item{METRO_NAME - Breaks down reporting data by metro name. The metro name and the metro
#' criteria ID are automatically included as columns in the report. Can be used
#' to filter by metro name using the US English name.}
#'      \item{POSTAL_CODE_CRITERIA_ID - Breaks down reporting data by postal code criteria ID. Can be used to filter
#' by postal code criteria ID.}
#'      \item{POSTAL_CODE - Breaks down reporting data by postal code. The postal code and the postal
#' code criteria ID are automatically included as columns in the report. Can be
#' used to filter by postal code.}
#'      \item{CUSTOM_TARGETING_VALUE_ID - Breaks down reporting data by CustomTargetingValue id. Can be used to filter
#' by CustomTargetingValue id.}
#'      \item{CUSTOM_CRITERIA - Breaks down reporting data by custom criteria. The CustomTargetingValue is
#' displayed in the form: car=honda when value match type is
#' CustomTargetingValue.MatchType EXACT car~honda when value match type is
#' CustomTargetingValue.MatchType BROAD car=*honda when value match type is
#' CustomTargetingValue.MatchType PREFIX car~*honda when value match type is
#' CustomTargetingValue.MatchType BROAD_PREFIX CUSTOM_TARGETING_VALUE_ID, i.e.
#' CustomTargetingValue id is automatically included as a column in the report.
#' Cannot be used for filtering; use CUSTOM_TARGETING_VALUE_ID instead.  When
#' using this Dimension, metrics for freeform key values are only reported on
#' when they are registered with CustomTargetingService.}
#'      \item{ACTIVITY_ID - Breaks down reporting data by activity ID. Can be used to filter by activity
#' ID.}
#'      \item{ACTIVITY_NAME - Breaks down reporting data by activity. The activity name and the activity
#' ID are automatically included as columns in the report. Can be used to
#' filter by activity name.}
#'      \item{ACTIVITY_GROUP_ID - Breaks down reporting data by activity group ID. Can be used to filter by
#' activity group ID.}
#'      \item{ACTIVITY_GROUP_NAME - Breaks down reporting data by activity group. The activity group name and
#' the activity group ID are automatically included as columns in the report.
#' Can be used to filter by activity group name.}
#'      \item{CONTENT_ID - Breaks down reporting data by Content id. Can be used to filter by Content
#' id.}
#'      \item{CONTENT_NAME - Breaks down reporting data by content. Content name and Content id are
#' automatically included as columns in the report. Can be used to filter by
#' Content name.}
#'      \item{CONTENT_BUNDLE_ID - Breaks down reporting data by ContentBundle id. Can be used to filter by
#' ContentBundle id.}
#'      \item{CONTENT_BUNDLE_NAME - Breaks down reporting data by content bundle. ContentBundle name and
#' ContentBundle id are automatically included as columns in the report. Can be
#' used to filter by ContentBundle name.}
#'      \item{CONTENT_HIERARCHY - Breaks down reporting data by the content hierarchy. To use this dimension,
#' a list of custom targeting key IDs must be specified in ReportQuery
#' contentMetadataKeyHierarchyCustomTargetingKeyIds.  This dimension can be
#' used as a filter in the Statement in PQL syntax:
#' CONTENT_HIERARCHY_CUSTOM_TARGETING_KEY[contentMetadataKeyHierarchyCustomTargetingKeyId]_ID
#' = CustomTargetingValue id custom targeting value ID For example: WHERE
#' CONTENT_HIERARCHY_CUSTOM_TARGETING_KEY[4242]_ID = 53423}
#'      \item{VIDEO_FALLBACK_POSITION - Breaks down reporting data by the fallback position of the video ad, i.e.,
#' NON_FALLBACK, FALLBACK_POSITION_1, FALLBACK_POSITION_2, etc. Can be used for
#' filtering.}
#'      \item{POSITION_OF_POD - Breaks down reporting data by the position of the video ad within the video
#' stream, i.e., UNKNOWN_POSITION, PREROLL, POSTROLL, UNKNOWN_MIDROLL,
#' MIDROLL_1, MIDROLL_2, etc. UNKNOWN_MIDROLL represents a midroll, but which
#' specific midroll is unknown. Can be used for filtering.}
#'      \item{POSITION_IN_POD - Breaks down reporting data by the position of the video ad within the pod,
#' i.e., UNKNOWN_POSITION, POSITION_1, POSITION_2, etc. Can be used for
#' filtering.}
#'      \item{PARTNER_MANAGEMENT_PARTNER_ID - Breaks down reporting data by partner Company id.}
#'      \item{PARTNER_MANAGEMENT_PARTNER_NAME - Breaks down reporting data by partner Company name and Company id are
#' automatically included as columns in the report.}
#'      \item{PARTNER_MANAGEMENT_PARTNER_LABEL_ID - Breaks down reporting data by partner label Label id.}
#'      \item{PARTNER_MANAGEMENT_PARTNER_LABEL_NAME - Breaks down reporting data by partner label. Label name and Label id are
#' automatically included as columns in the report.}
#'      \item{GRP_DEMOGRAPHICS - Breaks down reporting data by gender and age group, i.e., MALE_13_TO_17,
#' MALE_18_TO_24, MALE_25_TO_34, MALE_35_TO_44, MALE_45_TO_54, MALE_55_TO_64,
#' MALE_65_PLUS, FEMALE_13_TO_17, FEMALE_18_TO_24, FEMALE_25_TO_34,
#' FEMALE_35_TO_44, FEMALE_45_TO_54, FEMALE_55_TO_64, FEMALE_65_PLUS,
#' UNKNOWN_0_TO_17 and UNKNOWN. Whenever this dimension is selected,
#' COUNTRY_NAME must be selected.  This dimension is supported only for GRP
#' columns.}
#'      \item{AD_REQUEST_SIZE - Size of the creative requested for an ad.}
#'      \item{AD_REQUEST_AD_UNIT_SIZES - Breaks down reporting data by the ad unit sizes specified in ad requests.
#' Formatted as comma separated values, e.g. "300x250,300x250v,300x60". This
#' dimension is supported only for sell-through columns.}
#'      \item{AD_REQUEST_CUSTOM_CRITERIA - Breaks down reporting data by the custom criteria specified in ad requests.
#' Formatted as comma separated CustomTargetingKey key-CustomTargetingValue
#' values, where a key-value is formatted as
#' key1=value_1|...|value_n,key2=value_1|...|value_n,.... This dimension is
#' supported only for sell-through columns.}
#'      \item{BUYER_ID - The unique identifier used for an ad network that is associated with the
#' company that the ad is served for.}
#'      \item{BUYER_NAME - The name of the ad network that is associated with the company that the ad
#' is served for.}
#'      \item{VERIFIED_ADVERTISER_ID - ID of the advertiser that filled the ad either directly (through DFP) or
#' indirectly via Google Ad Exchange or another ad network or exchange.}
#'      \item{VERIFIED_ADVERTISER_NAME - Name of the advertiser that filled the ad either directly (through DFP) or
#' indirectly via Google Ad Exchange or another ad network or exchange.}
#'      \item{AD_UNIT_STATUS - Status of the ad unit. Not available as a dimension to report on, but exists
#' as a dimension in order to filter on it using PQL. Valid values correspond
#' to InventoryStatus.}
#'      \item{MASTER_COMPANION_CREATIVE_ID - Breaks down reporting data by Creative id. This includes regular creatives,
#' and master and companions in case of creative sets.}
#'      \item{MASTER_COMPANION_CREATIVE_NAME - Breaks down reporting data by creative. This includes regular creatives, and
#' master and companions in case of creative sets.}
#'      \item{PROPOSAL_LINE_ITEM_ID - Breaks down reporting data by ProposalLineItem id. Can be used to filter by
#' ProposalLineItem id.}
#'      \item{PROPOSAL_LINE_ITEM_NAME - Breaks down reporting data by ProposalLineItem name. Can be used to filter
#' by ProposalLineItem name.}
#'      \item{PROPOSAL_ID - Breaks down reporting data by Proposal id. Can be used to filter by Proposal
#' id.}
#'      \item{PROPOSAL_NAME - Breaks down reporting data by Proposal name. Can be used to filter by
#' Proposal name.}
#'      \item{ALL_SALESPEOPLE_ID - Breaks down reporting data by salesperson User id, including both
#' salesperson and secondary salespeople. Can be used to filter by all
#' salespeople User id.}
#'      \item{ALL_SALESPEOPLE_NAME - Breaks down reporting data by salesperson User name, including both
#' salesperson and secondary salespeople. Can be used to filter by all
#' salespeople User name.}
#'      \item{SALES_TEAM_ID - Used to filter by User id in sales team. Sales team includes salesperson,
#' secondary salesperson, sales planners. Not available as a dimension to
#' report on.}
#'      \item{SALES_TEAM_NAME - Used to filter by User name in sales team. Sales team includes salesperson,
#' secondary salesperson, sales planners. Not available as a dimension to
#' report on.}
#'      \item{PROPOSAL_AGENCY_ID - Breaks down reporting data by proposal agency Company id. Can be used to
#' filter by proposal agency Company id.}
#'      \item{PROPOSAL_AGENCY_NAME - Breaks down reporting data by proposal agency Company name. Can be used to
#' filter by proposal agency Company name.}
#'      \item{PRODUCT_ID - Breaks down reporting data by Product id. Can be used to filter by Product
#' id.}
#'      \item{PRODUCT_NAME - Breaks down reporting data by Product name.}
#'      \item{PRODUCT_TEMPLATE_ID - Breaks down reporting data by ProductTemplate id. Can be used to filter by
#' ProductTemplate id.}
#'      \item{PRODUCT_TEMPLATE_NAME - Breaks down reporting data by ProductTemplate name. Can be used to filter by
#' ProductTemplate name.}
#'      \item{RATE_CARD_ID - Breaks down reporting data by RateCard id. Can be used to filter by RateCard
#' id.}
#'      \item{RATE_CARD_NAME - Breaks down reporting data by RateCard name. Can be used to filter by
#' RateCard name.}
#'      \item{WORKFLOW_ID - Used to filter by Workflow id. Not available as a dimension to report on.}
#'      \item{WORKFLOW_NAME - Used to filter by Workflow name. Not available as a dimension to report on.}
#'      \item{PACKAGE_ID - Breaks down reporting data by Package id.}
#'      \item{PACKAGE_NAME - Breaks down reporting data by Package name.}
#'      \item{PRODUCT_PACKAGE_ID - Breaks down reporting data by ProductPackage id. Can be used to filter by
#' ProductPackage id.}
#'      \item{PRODUCT_PACKAGE_NAME - Breaks down reporting data by ProductPackage name. Can be used to filter by
#' ProductPackage name.}
#'      \item{AUDIENCE_SEGMENT_ID - Breaks down reporting data by billable audience segment ID.}
#'      \item{AUDIENCE_SEGMENT_NAME - Breaks down reporting data by billable audience segment name.}
#'      \item{AUDIENCE_SEGMENT_DATA_PROVIDER_NAME - Breaks down reporting data by audience segment data provider name.}
#'      \item{AD_EXCHANGE_AD_SIZE_NAME - Breaks down linked Ad Exchange web property data by Ad Exchange ad size.
#' This experimental dimension only works with Ad Exchange web properties
#' linked with an active status.}
#'      \item{AD_EXCHANGE_PLATFORM_TYPE_NAME - Breaks down linked Ad Exchange web property data by Ad Exchange platforms.
#' This experimental dimension only works with Ad Exchange web properties
#' linked with an active status.}
#'      \item{AD_EXCHANGE_PRICING_RULE_NAME - Breaks down linked Ad Exchange web property data by Ad Exchange pricing
#' rules. This experimental dimension only works with Ad Exchange web
#' properties linked with an active status.}
#'      \item{AD_EXCHANGE_TAG_NAME - Breaks down linked Ad Exchange web property data by Ad Exchange tags. This
#' experimental dimension only works with Ad Exchange web properties linked
#' with an active status.}
#'      \item{AD_EXCHANGE_URL_CHANNEL_NAME - Breaks down linked Ad Exchange web property data by Ad Exchange URLs. This
#' experimental dimension only works with Ad Exchange web properties linked
#' with an active status.}
#'      \item{AD_EXCHANGE_AD_CLIENT_ID - Breaks down data by Ad Exchange linked web properties. This experimental
#' dimension only works with Ad Exchange web properties linked with an active
#' status.}
#'      \item{AD_EXCHANGE_CREATIVE_SIZES - Breaks down linked Ad Exchange web property data by Ad Exchange creative
#' size. This experimental dimension only works with Ad Exchange web properties
#' linked with an active status.}
#'      \item{AD_EXCHANGE_AD_FORMAT_NAME - Breaks down linked Ad Exchange web property data by Ad Exchange ad types.
#' This experimental dimension only works with Ad Exchange web properties
#' linked with an active status.}
#'      \item{AD_EXCHANGE_CHANNEL_NAME - Breaks down linked Ad Exchange web property data by Ad Exchange channels.
#' This experimental dimension only works with Ad Exchange web properties
#' linked with an active status.}
#'      \item{AD_EXCHANGE_PRODUCT_NAME - Breaks down linked Ad Exchange web property data by Ad Exchange products.
#' This experimental dimension only works with Ad Exchange web properties
#' linked with an active status.}
#'      \item{AD_EXCHANGE_SITE_NAME - Breaks down linked Ad Exchange web property data by Ad Exchange sites. This
#' experimental dimension only works with Ad Exchange web properties linked
#' with an active status.}
#'      \item{AD_EXCHANGE_REQUEST_SOURCES - Breaks down linked Ad Exchange web property data by Ad Exchange request
#' sources. This experimental dimension only works with Ad Exchange web
#' properties linked with an active status.}
#'      \item{AD_EXCHANGE_TRANSACTION_TYPE_NAME - Breaks down linked Ad Exchange web property data by Ad Exchange ad
#' transaction. This experimental dimension only works with Ad Exchange web
#' properties linked with an active status.}
#'      \item{AD_EXCHANGE_ADVERTISER_NAME - Breaks down linked Ad Exchange web property data by the Ad Exchange
#' advertiser name that bids on ads. This experimental dimension only works
#' with Ad Exchange web properties linked with an active status.}
#'      \item{AD_EXCHANGE_AGENCY - Breaks down linked Ad Exchange web property data by Ad Exchange agency. This
#' experimental dimension only works with Ad Exchange web properties linked
#' with an active status.}
#'      \item{AD_EXCHANGE_BID_TYPE - Breaks down linked Ad Exchange web property data by Ad Exchange bid type.
#' This experimental dimension only works with Ad Exchange web properties
#' linked with an active status.}
#'      \item{AD_EXCHANGE_BRANDING_TYPE - Breaks down linked Ad Exchange web property data by Ad Exchange branding
#' type. Examples: Branded, Anonymous. This experimental dimension only works
#' with Ad Exchange web properties linked with an active status.}
#'      \item{AD_EXCHANGE_BUYER_NETWORK_NAME - Breaks down linked Ad Exchange web property data by Ad Exchange ad network
#' name. Example: Google Adwords. This experimental dimension only works with
#' Ad Exchange web properties linked with an active status.}
#'      \item{AD_EXCHANGE_DATE - Breaks down linked Ad Exchange web property data by Ad Exchange date. This
#' experimental dimension only works with Ad Exchange web properties linked
#' with an active status.}
#'      \item{AD_EXCHANGE_DEAL_CPM - Breaks down linked Ad Exchange web property data by Ad Exchange deal CPM
#' cost. This experimental dimension only works with Ad Exchange web properties
#' linked with an active status.}
#'      \item{AD_EXCHANGE_DEAL_ID - Breaks down linked Ad Exchange web property data by Ad Exchange deal id.
#' This experimental dimension only works with Ad Exchange web properties
#' linked with an active status.}
#'      \item{AD_EXCHANGE_DEAL_NAME - Breaks down linked Ad Exchange web property data by Ad Exchange deal name.
#' This experimental dimension only works with Ad Exchange web properties
#' linked with an active status.}
#'      \item{AD_EXCHANGE_DEAL_TYPE - Breaks down linked Ad Exchange web property data by Ad Exchange
#' deal/transaction type. Example: Open auction. This experimental dimension
#' only works with Ad Exchange web properties linked with an active status.}
#'      \item{AD_EXCHANGE_DSP_BUYER_NETWORK_NAME - Breaks down linked Ad Exchange web property data by Ad Exchange DSP buyer
#' network name. This experimental dimension only works with Ad Exchange web
#' properties linked with an active status.}
#'      \item{AD_EXCHANGE_EXPANSION_TYPE - Breaks down linked Ad Exchange web property data by Ad Exchange expansion
#' type. This experimental dimension only works with Ad Exchange web properties
#' linked with an active status.}
#'      \item{AD_EXCHANGE_COUNTRY_CODE - Breaks down linked Ad Exchange web property data by Ad Exchange country
#' code. This experimental dimension only works with Ad Exchange web properties
#' linked with an active status.}
#'      \item{AD_EXCHANGE_COUNTRY_NAME - Breaks down linked Ad Exchange web property data by Ad Exchange country
#' name. This experimental dimension only works with Ad Exchange web properties
#' linked with an active status.}
#'      \item{AD_EXCHANGE_INVENTORY_OWNERSHIP - Breaks down linked Ad Exchange web property data by Ad Exchange inventory
#' ownership. This experimental dimension only works with Ad Exchange web
#' properties linked with an active status.}
#'      \item{AD_EXCHANGE_LANDING_PAGE_DOMAIN - Breaks down linked Ad Exchange web property data by Ad Exchange advertiser
#' landing page domain. This experimental dimension only works with Ad Exchange
#' web properties linked with an active status.}
#'      \item{AD_EXCHANGE_MOBILE_APP_NAME - Breaks down linked Ad Exchange web property data by Ad Exchange mobile app
#' name. This experimental dimension only works with Ad Exchange web properties
#' linked with an active status.}
#'      \item{AD_EXCHANGE_MOBILE_CARRIER_NAME - Breaks down linked Ad Exchange web property data by Ad Exchange mobile
#' carrier name. This experimental dimension only works with Ad Exchange web
#' properties linked with an active status.}
#'      \item{AD_EXCHANGE_MOBILE_DEVICE_NAME - Breaks down linked Ad Exchange web property data by Ad Exchange mobile
#' device name. This experimental dimension only works with Ad Exchange web
#' properties linked with an active status.}
#'      \item{AD_EXCHANGE_MOBILE_INVENTORY_TYPE - Breaks down linked Ad Exchange web property data by Ad Exchange mobile
#' inventory type. This experimental dimension only works with Ad Exchange web
#' properties linked with an active status.}
#'      \item{AD_EXCHANGE_MONTH - Breaks down linked Ad Exchange web property data by Ad Exchange month. This
#' experimental dimension only works with Ad Exchange web properties linked
#' with an active status.}
#'      \item{AD_EXCHANGE_NETWORK_PARTNER_NAME - Breaks down linked Ad Exchange web property data by Ad Exchange partner
#' name. This experimental dimension only works with Ad Exchange web properties
#' linked with an active status.}
#'      \item{AD_EXCHANGE_OS_VERSION_NAME - Breaks down linked Ad Exchange web property data by Ad Exchange operating
#' system version. This experimental dimension only works with Ad Exchange web
#' properties linked with an active status.}
#'      \item{AD_EXCHANGE_PRICING_RULE_ID - Breaks down linked Ad Exchange web property data by Ad Exchange pricing rule
#' id. This experimental dimension only works with Ad Exchange web properties
#' linked with an active status.}
#'      \item{AD_EXCHANGE_TAG_CODE - Breaks down linked Ad Exchange web property data by Ad Exchange tags. This
#' experimental dimension only works with Ad Exchange web properties linked
#' with an active status.}
#'      \item{AD_EXCHANGE_TARGETING_TYPE - Breaks down linked Ad Exchange web property data by Ad Exchange targeting
#' type. This experimental dimension only works with Ad Exchange web properties
#' linked with an active status.}
#'      \item{AD_EXCHANGE_THIRD_PARTY_BUYER_ACCOUNT_NAME - Breaks down linked Ad Exchange web property data by Ad Exchange third party
#' buyer account name. This experimental dimension only works with Ad Exchange
#' web properties linked with an active status.}
#'      \item{AD_EXCHANGE_THIRD_PARTY_NETWORK_TAG_CURRENCY - Breaks down linked Ad Exchange web property data by Ad Exchange third-party
#' network tag currency. This experimental dimension only works with Ad
#' Exchange web properties linked with an active status.}
#'      \item{AD_EXCHANGE_THIRD_PARTY_NETWORK_TAG_NAME - Breaks down linked Ad Exchange web property data by Ad Exchange network tag
#' name. This experimental dimension only works with Ad Exchange web properties
#' linked with an active status.}
#'      \item{AD_EXCHANGE_URL_CHANNEL_ID - Breaks down linked Ad Exchange web property data by Ad Exchange channel id.
#' This experimental dimension only works with Ad Exchange web properties
#' linked with an active status.}
#'      \item{AD_EXCHANGE_USER_BANDWIDTH_NAME - Breaks down linked Ad Exchange web property data by Ad Exchange user
#' bandwidth. This experimental dimension only works with Ad Exchange web
#' properties linked with an active status.}
#'      \item{AD_EXCHANGE_VIDEO_AD_DURATION - Breaks down linked Ad Exchange web property data by Ad Exchange video ad
#' duration. This experimental dimension only works with Ad Exchange web
#' properties linked with an active status.}
#'      \item{AD_EXCHANGE_VIDEO_AD_DURATION_RAW - Breaks down linked Ad Exchange web property data by Ad Exchange raw video ad
#' duration. This experimental dimension only works with Ad Exchange web
#' properties linked with an active status.}
#'      \item{AD_EXCHANGE_VIDEO_AD_FORMAT - Breaks down linked Ad Exchange web property data by Ad Exchange video ad
#' type. This experimental dimension only works with Ad Exchange web properties
#' linked with an active status.}
#'      \item{AD_EXCHANGE_WEEK - Breaks down linked Ad Exchange web property data by Ad Exchange week. This
#' experimental dimension only works with Ad Exchange web properties linked
#' with an active status.}
#'      \item{NIELSEN_SEGMENT - Campaign date segment of Nielsen Digital Ad Ratings reporting.}
#'      \item{NIELSEN_DEMOGRAPHICS - Breaks down reporting data by gender and age group, i.e., MALE_18_TO_20,
#' MALE_21_TO_24, MALE_25_TO_29, MALE_30_TO_35, MALE_35_TO_39, MALE_40_TO_44,
#' MALE_45_TO_49, MALE_50_TO_54, MALE_55_TO_64, MALE_65_PLUS, FEMALE_18_TO_20,
#' FEMALE_21_TO_24, FEMALE_25_TO_29, FEMALE_30_TO_34, FEMALE_35_TO_39,
#' FEMALE_40_TO_44, FEMALE_45_TO_49, FEMALE_50_TO_54, FEMALE_55_TO_64,
#' FEMALE_65_PLUS, and OTHER.}
#'      \item{NIELSEN_RESTATEMENT_DATE - Data restatement date of Nielsen Digital Ad Ratings data.}
#'    }
#'   }
#'  \item{adUnitView}{a ReportQuery.AdUnitView - The ad unit view for the report. Defaults to AdUnitView TOP_LEVEL. This can take one of the following values: 
#'    \itemize{
#'      \item{TOP_LEVEL - Only the top level ad units. Metrics include events for their descendants
#' that are not filtered out.}
#'      \item{FLAT - All the ad units. Metrics do not include events for the descendants.}
#'      \item{HIERARCHICAL - Use the ad unit hierarchy. There will be as many ad unit columns as levels
#' of ad units in the generated report: The column Dimension AD_UNIT_NAME is
#' replaced with columns "Ad unit 1", "Ad unit 2", ... "Ad unit n". If level is
#' not applicable to a row, "N/A" is returned as the value.  The column
#' Dimension AD_UNIT_ID is replaced with columns "Ad unit ID 1", "Ad unit ID
#' 2", ... "Ad unit ID n". If level is not applicable to a row, "N/A" is
#' returned as the value.  Metrics do not include events for the descendants.}
#'    }
#'   }
#'  \item{columns}{a Column - The list of trafficking statistics and revenue information being requested
#' in the report. The generated report will contain the columns in the same
#' order as requested. This can take one of the following values: 
#'    \itemize{
#'      \item{AD_SERVER_IMPRESSIONS - The number of impressions delivered by the ad server.}
#'      \item{AD_SERVER_TARGETED_IMPRESSIONS - The number of impressions delivered by the ad server by explicit custom
#' criteria targeting.}
#'      \item{AD_SERVER_CLICKS - The number of clicks delivered by the ad server.}
#'      \item{AD_SERVER_TARGETED_CLICKS - The number of clicks delivered by the ad server by explicit custom criteria
#' targeting.}
#'      \item{AD_SERVER_CTR - The CTR for an ad delivered by the ad server.}
#'      \item{AD_SERVER_CPM_AND_CPC_REVENUE - The CPM and CPC revenue earned, calculated in publisher currency, for the
#' ads delivered by the ad server.}
#'      \item{AD_SERVER_CPD_REVENUE - The CPD revenue earned, calculated in publisher currency, for the ads
#' delivered by the ad server.}
#'      \item{AD_SERVER_CPA_REVENUE - The CPA revenue earned, calculated in publisher currency, for the ads
#' delivered by the ad server.}
#'      \item{AD_SERVER_ALL_REVENUE - The CPM, CPC and CPD revenue earned, calculated in publisher currency, for
#' the ads delivered by the ad server.}
#'      \item{AD_SERVER_WITHOUT_CPD_AVERAGE_ECPM - The average estimated cost-per-thousand-impressions earned from the CPM and
#' CPC ads delivered by the ad server.}
#'      \item{AD_SERVER_WITH_CPD_AVERAGE_ECPM - The average estimated cost-per-thousand-impressions earned from the CPM, CPC
#' and CPD ads delivered by the ad server.}
#'      \item{AD_SERVER_INVENTORY_LEVEL_PERCENT_IMPRESSIONS - The ratio of the number of impressions delivered to the total impressions
#' delivered when no LineItem reservation could be found by the ad server for
#' inventory-level dynamic allocation. For premium networks, this includes line
#' item-level dynamic allocation as well. Represented as a percentage.}
#'      \item{AD_SERVER_LINE_ITEM_LEVEL_PERCENT_IMPRESSIONS - The ratio of the number of impressions delivered to the total impressions
#' delivered by the ad server for line item-level dynamic allocation.
#' Represented as a percentage.}
#'      \item{AD_SERVER_INVENTORY_LEVEL_PERCENT_CLICKS - The ratio of the number of clicks delivered to the total clicks delivered
#' when no LineItem reservation could be found by the ad server for
#' inventory-level dynamic allocation. For premium networks, this includes line
#' item-level dynamic allocation as well. Represented as a percentage.}
#'      \item{AD_SERVER_LINE_ITEM_LEVEL_PERCENT_CLICKS - The ratio of the number of clicks delivered to the total clicks delivered by
#' the ad server for line item-level dynamic allocation. Represented as a
#' percentage.}
#'      \item{AD_SERVER_INVENTORY_LEVEL_WITHOUT_CPD_PERCENT_REVENUE - The ratio of revenue generated by ad server to the total CPM and CPC revenue
#' earned by ads delivered when no LineItem reservation could be found by the
#' ad server for inventory-level dynamic allocation. For premium networks, this
#' includes line item-level dynamic allocation as well. Represented as a
#' percentage.}
#'      \item{AD_SERVER_INVENTORY_LEVEL_WITH_CPD_PERCENT_REVENUE - The ratio of revenue generated by ad server to the total CPM, CPC and CPD
#' revenue earned by ads delivered when no LineItem reservation could be found
#' by the ad server for inventory-level dynamic allocation. For premium
#' networks, this includes line item-level dynamic allocation as well.
#' Represented as a percentage.}
#'      \item{AD_SERVER_LINE_ITEM_LEVEL_WITHOUT_CPD_PERCENT_REVENUE - The ratio of revenue generated by ad server to the total CPM and CPC revenue
#' earned by the ads delivered for line item-level dynamic allocation.
#' Represented as a percentage.}
#'      \item{AD_SERVER_LINE_ITEM_LEVEL_WITH_CPD_PERCENT_REVENUE - The ratio of revenue generated by ad server to the total CPM, CPC and CPD
#' revenue earned by the ads delivered for line item-level dynamic allocation.
#' Represented as a percentage.}
#'      \item{AD_SERVER_DELIVERY_INDICATOR - Indicates the progress made for the delivery of the LineItem. <table> <tr>
#' <th scope="col">Progress</th> <th scope="col">Definition</th> </tr> <tr>
#' <td>100\%</td> <td>The LineItem is on track to deliver in full as per
#' LineItem unitsBought.</td> </tr> <tr> <td>&gt; 100\%</td> <td>The LineItem
#' is on track to overdeliver.</td> </tr> <tr> <td>&lt; 100\%</td> <td>The
#' LineItem is on track to underdeliver.</td> </tr> <tr> <td>N/A</td> <td>The
#' LineItem does not have any quantity goals, or there is insufficient
#' information about the LineItem.</td> </tr> </table>}
#'      \item{AD_SERVER_CODE_SERVED_COUNT - The number of times that the code for an ad is served by the ad server.}
#'      \item{AD_SERVER_IMPRESSIONS_OUT_OF_NETWORK - The number of impressions delivered by the ad server on shared inventory
#' unit in a partner's network.}
#'      \item{AD_SERVER_CLICKS_OUT_OF_NETWORK - The number of clicks delivered by the ad server on shared inventory unit in
#' a partner's network.}
#'      \item{AD_SERVER_CTR_OUT_OF_NETWORK - The CTR for an ad delivered by the ad server on shared inventory unit in a
#' partner's network.}
#'      \item{DYNAMIC_ALLOCATION_INVENTORY_LEVEL_IMPRESSIONS - The number of impressions a dynamic allocation ad delivered when no LineItem
#' reservation could be found by the ad server for inventory-level dynamic
#' allocation. For premium networks, this includes line item-level dynamic
#' allocation as well.}
#'      \item{TOTAL_DYNAMIC_ALLOCATION_IMPRESSIONS_OUT_OF_NETWORK - The number of partner network impressions a dynamic allocation ad delivered
#' when no LineItem reservation could be found by the ad server for shared
#' inventory-level dynamic allocation. For premium networks, this includes line
#' item-level dynamic allocation as well.}
#'      \item{ADSENSE_LINE_ITEM_LEVEL_IMPRESSIONS - The number of impressions an AdSense ad delivered for line item-level
#' dynamic allocation.}
#'      \item{ADSENSE_LINE_ITEM_LEVEL_TARGETED_IMPRESSIONS - The number of impressions an AdSense ad delivered for line item-level
#' dynamic allocation by explicit custom criteria targeting.}
#'      \item{DYNAMIC_ALLOCATION_INVENTORY_LEVEL_CLICKS - The number of clicks a dynamic allocation ad delivered when no LineItem
#' reservation could be found by the ad server for inventory-level dynamic
#' allocation. For premium networks, this includes line item-level dynamic
#' allocation as well.}
#'      \item{ADSENSE_LINE_ITEM_LEVEL_CLICKS - The number of clicks an AdSense ad delivered for line item-level dynamic
#' allocation.}
#'      \item{ADSENSE_LINE_ITEM_LEVEL_TARGETED_CLICKS - The number of clicks an AdSense ad delivered for line item-level dynamic
#' allocation by explicit custom criteria targeting.}
#'      \item{DYNAMIC_ALLOCATION_INVENTORY_LEVEL_CTR - The ratio of clicks a dynamic allocation ad delivered to the number of
#' impressions it delivered when no LineItem reservation could be found by the
#' ad server for inventory-level dynamic allocation. For premium networks, this
#' includes line item-level dynamic allocation as well.}
#'      \item{ADSENSE_LINE_ITEM_LEVEL_CTR - The ratio of clicks an AdSense reservation ad delivered to the number of
#' impressions it delivered, including line item-level dynamic allocation.}
#'      \item{DYNAMIC_ALLOCATION_INVENTORY_LEVEL_REVENUE - Revenue generated from ads delivered for dynamic allocation when no LineItem
#' reservation could be found by the ad server for inventory-level dynamic
#' allocation. For premium networks, this includes line item-level dynamic
#' allocation as well.}
#'      \item{ADSENSE_LINE_ITEM_LEVEL_REVENUE - Revenue generated from AdSense ads delivered for line item-level dynamic
#' allocation.}
#'      \item{DYNAMIC_ALLOCATION_INVENTORY_LEVEL_AVERAGE_ECPM - The average estimated cost-per-thousand-impressions earned from dynamic
#' allocation ads delivered when no LineItem reservation could be found by the
#' ad server for inventory-level dynamic allocation. For premium networks, this
#' includes line item-level dynamic allocation as well.}
#'      \item{ADSENSE_LINE_ITEM_LEVEL_AVERAGE_ECPM - The average estimated cost-per-thousand-impressions earned from the ads
#' delivered by AdSense for line item-level dynamic allocation.}
#'      \item{DYNAMIC_ALLOCATION_INVENTORY_LEVEL_PERCENT_IMPRESSIONS - The ratio of the number of impressions delivered by dynamic allocation ads
#' to the total impressions delivered when no LineItem reservation could be
#' found by the ad server for inventory-level dynamic allocation. For premium
#' networks, this includes line item-level dynamic allocation as well.
#' Represented as a percentage.}
#'      \item{ADSENSE_LINE_ITEM_LEVEL_PERCENT_IMPRESSIONS - The ratio of the number of impressions delivered by AdSense reservation ads
#' to the total impressions delivered for line item-level dynamic allocation.
#' Represented as a percentage.}
#'      \item{DYNAMIC_ALLOCATION_INVENTORY_LEVEL_PERCENT_CLICKS - The ratio of the number of clicks delivered by dynamic allocation ads to the
#' total clicks delivered when no LineItem reservation could be found by the ad
#' server for inventory-level dynamic allocation. For premium networks, this
#' includes line item-level dynamic allocation as well. Represented as a
#' percentage.}
#'      \item{ADSENSE_LINE_ITEM_LEVEL_PERCENT_CLICKS - The ratio of the number of clicks delivered by AdSense reservation ads to
#' the total clicks delivered for line item-level dynamic allocation.
#' Represented as a percentage.}
#'      \item{DYNAMIC_ALLOCATION_INVENTORY_LEVEL_WITHOUT_CPD_PERCENT_REVENUE - The ratio of revenue to the total revenue earned from the dynamic allocation
#' CPM and CPC ads delivered when no LineItem reservation could be found by the
#' ad server for inventory-level dynamic allocation. For premium networks, this
#' includes line item-level dynamic allocation as well. Represented as a
#' percentage.}
#'      \item{DYNAMIC_ALLOCATION_INVENTORY_LEVEL_WITH_CPD_PERCENT_REVENUE - The ratio of revenue to the total revenue earned from the dynamic allocation
#' CPM, CPC and CPD ads delivered when no LineItem reservation could be found
#' by the ad server for inventory-level dynamic allocation. For premium
#' networks, this includes line item-level dynamic allocation as well.
#' Represented as a percentage.}
#'      \item{ADSENSE_LINE_ITEM_LEVEL_WITHOUT_CPD_PERCENT_REVENUE - The ratio of revenue to the total revenue earned from the CPM and CPC ads
#' delivered by AdSense for line item-level dynamic allocation. Represented as
#' a percentage.}
#'      \item{ADSENSE_LINE_ITEM_LEVEL_WITH_CPD_PERCENT_REVENUE - The ratio of revenue to the total revenue earned from the CPM, CPC and CPD
#' ads delivered by AdSense for line item-level dynamic allocation. Represented
#' as a percentage.}
#'      \item{AD_EXCHANGE_LINE_ITEM_LEVEL_IMPRESSIONS - The number of impressions an Ad Exchange ad delivered for line item-level
#' dynamic allocation.}
#'      \item{AD_EXCHANGE_IMPRESSIONS - The number of impressions delivered by Ad Exchange properties linked to DFP.
#' This experimental column only works with Ad Exchange web properties linked
#' with an active status.}
#'      \item{AD_EXCHANGE_MATCHED_QUERIES - The number of matched queries delivered by Ad Exchange properties linked to
#' DFP. This experimental column only works with Ad Exchange web properties
#' linked with an active status.}
#'      \item{AD_EXCHANGE_VIEWED_QUERIES - The number of viewed queries delivered by Ad Exchange properties linked to
#' DFP. This experimental column only works with Ad Exchange web properties
#' linked with an active status.}
#'      \item{AD_EXCHANGE_CLICKS - The number of clicks delivered by Ad Exchange properties linked to DFP. This
#' experimental column only works with Ad Exchange web properties linked with
#' an active status.}
#'      \item{AD_EXCHANGE_ESTIMATED_REVENUE - The estimated revenue generated by Ad Exchange properties linked to DFP.
#' This experimental column only works with Ad Exchange web properties linked
#' with an active status.}
#'      \item{AD_EXCHANGE_COVERAGE - The coverage or fill rate reported by Ad Exchange properties linked to DFP.
#' This experimental column only works with Ad Exchange web properties linked
#' with an active status.}
#'      \item{AD_EXCHANGE_MATCHED_QUERIES_CTR - The matched queries click-through rate delivered by Ad Exchange properties
#' linked to DFP. This experimental column only works with Ad Exchange web
#' properties linked with an active status.}
#'      \item{AD_EXCHANGE_LIFT - The total lift generated by Ad Exchange properties linked to DFP. This
#' experimental column only works with Ad Exchange web properties linked with
#' an active status.}
#'      \item{AD_EXCHANGE_CPC_REVENUE - The cost-per-click revenue generated by Ad Exchange properties linked to
#' DFP. This experimental column only works with Ad Exchange web properties
#' linked with an active status.}
#'      \item{AD_EXCHANGE_REQUESTS - The number of ad requests issued by Ad Exchange properties linked to DFP.
#' This experimental column only works with Ad Exchange web properties linked
#' with an active status.}
#'      \item{AD_EXCHANGE_REQUEST_ECPM - The average estimated cost-per-thousand-ad requests earned by Ad Exchange
#' properties linked to DFP. This experimental column only works with Ad
#' Exchange web properties linked with an active status.}
#'      \item{AD_EXCHANGE_REQUEST_CTR - The the click-through rate of ad requests issued by Ad Exchange properties
#' linked to DFP. This experimental column only works with Ad Exchange web
#' properties linked with an active status.}
#'      \item{AD_EXCHANGE_CTR - The click-through rate of impressions issued by Ad Exchange properties
#' linked to DFP. This experimental column only works with Ad Exchange web
#' properties linked with an active status.}
#'      \item{AD_EXCHANGE_VIDEO_DROPOFF_RATE - The video ad drop off rate issued by Ad Exchange properties linked to DFP.
#' This experimental column only works with Ad Exchange web properties linked
#' with an active status.}
#'      \item{AD_EXCHANGE_VIDEO_ABANDONMENT_RATE - The video ad abandonment rate issued by Ad Exchange properties linked to
#' DFP. This experimental column only works with Ad Exchange web properties
#' linked with an active status.}
#'      \item{AD_EXCHANGE_ECPM - The average estimated cost-per-thousand-impressions generated by Ad Exchange
#' properties linked to DFP. This experimental column only works with Ad
#' Exchange web properties linked with an active status.}
#'      \item{AD_EXCHANGE_ACTIVE_VIEW_MEASUREABLE_RATE - The measurement rate of Active View impressions generated by Ad Exchange
#' properties linked to DFP. This experimental column only works with Ad
#' Exchange web properties linked with an active status.}
#'      \item{AD_EXCHANGE_ACTIVE_VIEW_VIEWABLE_RATE - The viewable rate of Active View impressions generated by Ad Exchange
#' properties linked to DFP. This experimental column only works with Ad
#' Exchange web properties linked with an active status.}
#'      \item{AD_EXCHANGE_VIDEO_FILL_RATE - The video fill rate by Ad Exchange properties linked to DFP. This
#' experimental column only works with Ad Exchange web properties linked with
#' an active status.}
#'      \item{AD_EXCHANGE_VIDEO_QUARTILE_1 - The first quartile (25\% of video played back) of video ads by Ad Exchange
#' properties linked to DFP. This experimental column only works with Ad
#' Exchange web properties linked with an active status.}
#'      \item{AD_EXCHANGE_VIDEO_QUARTILE_3 - The third quartile (75\% of video played back) of video ads by Ad Exchange
#' properties linked to DFP. This experimental column only works with Ad
#' Exchange web properties linked with an active status.}
#'      \item{AD_EXCHANGE_VIDEO_TRUEVIEW_SKIP_RATE - The Trueview video skip rate by Ad Exchange properties linked to DFP. This
#' experimental column only works with Ad Exchange web properties linked with
#' an active status.}
#'      \item{AD_EXCHANGE_VIDEO_TRUEVIEWS - The Trueview video views by Ad Exchange properties linked to DFP. This
#' experimental column only works with Ad Exchange web properties linked with
#' an active status.}
#'      \item{AD_EXCHANGE_VIDEO_VTR - The video view-through rate (only applies to Trueview ads) by Ad Exchange
#' properties linked to DFP. This experimental column only works with Ad
#' Exchange web properties linked with an active status.}
#'      \item{AD_EXCHANGE_THIRD_PARTY_DISCREPANCY - The third-party impression discrepancy by Ad Exchange properties linked to
#' DFP. This experimental column only works with Ad Exchange web properties
#' linked with an active status.}
#'      \item{AD_EXCHANGE_THIRD_PARTY_EARNINGS - The third-party earnings by Ad Exchange properties linked to DFP. This
#' experimental column only works with Ad Exchange web properties linked with
#' an active status.}
#'      \item{AD_EXCHANGE_THIRD_PARTY_ECPM - The third-party average cost-per-thousand-impressions earned by Ad Exchange
#' properties linked to DFP. This experimental column only works with Ad
#' Exchange web properties linked with an active status.}
#'      \item{AD_EXCHANGE_THIRD_PARTY_FILL_RATE - The third-party fill rate by Ad Exchange properties linked to DFP. This
#' experimental column only works with Ad Exchange web properties linked with
#' an active status.}
#'      \item{AD_EXCHANGE_THIRD_PARTY_PASSBACKS - The third-party passbacks by Ad Exchange properties linked to DFP. This
#' experimental column only works with Ad Exchange web properties linked with
#' an active status.}
#'      \item{AD_EXCHANGE_THIRD_PARTY_IMPRESSIONS - The third-party impressions by Ad Exchange properties linked to DFP. This
#' experimental column only works with Ad Exchange web properties linked with
#' an active status.}
#'      \item{AD_EXCHANGE_IMPRESSIONS_INCLUDING_THIRD_PARTY - The total impressions including third-party by Ad Exchange properties linked
#' to DFP. This experimental column only works with Ad Exchange web properties
#' linked with an active status.}
#'      \item{AD_EXCHANGE_LINE_ITEM_LEVEL_TARGETED_IMPRESSIONS - The number of impressions an Ad Exchange ad delivered for line item-level
#' dynamic allocation by explicit custom criteria targeting.}
#'      \item{AD_EXCHANGE_LINE_ITEM_LEVEL_CLICKS - The number of clicks an Ad Exchange ad delivered for line item-level dynamic
#' allocation.}
#'      \item{AD_EXCHANGE_LINE_ITEM_LEVEL_TARGETED_CLICKS - The number of clicks an Ad Exchange ad delivered for line item-level dynamic
#' allocation by explicit custom criteria targeting.}
#'      \item{AD_EXCHANGE_LINE_ITEM_LEVEL_CTR - The ratio of clicks an Ad Exchange ad delivered to the number of impressions
#' it delivered for line item-level dynamic allocation.}
#'      \item{AD_EXCHANGE_LINE_ITEM_LEVEL_PERCENT_IMPRESSIONS - The ratio of the number of impressions delivered to the total impressions
#' delivered by Ad Exchange for line item-level dynamic allocation. Represented
#' as a percentage.}
#'      \item{AD_EXCHANGE_LINE_ITEM_LEVEL_PERCENT_CLICKS - The ratio of the number of clicks delivered to the total clicks delivered by
#' Ad Exchange for line item-level dynamic allocation. Represented as a
#' percentage.}
#'      \item{AD_EXCHANGE_LINE_ITEM_LEVEL_REVENUE - Revenue generated from Ad Exchange ads delivered for line item-level dynamic
#' allocation. Represented in publisher currency and time zone.}
#'      \item{AD_EXCHANGE_LINE_ITEM_LEVEL_WITHOUT_CPD_PERCENT_REVENUE - The ratio of revenue generated by Ad Exchange to the total revenue earned by
#' CPM and CPC ads delivered for line item-level dynamic allocation.
#' Represented as a percentage.}
#'      \item{AD_EXCHANGE_LINE_ITEM_LEVEL_WITH_CPD_PERCENT_REVENUE - The ratio of revenue generated by Ad Exchange to the total revenue earned by
#' CPM, CPC and CPD ads delivered for line item-level dynamic allocation.
#' Represented as a percentage.}
#'      \item{AD_EXCHANGE_LINE_ITEM_LEVEL_AVERAGE_ECPM - The average estimated cost-per-thousand-impressions earned from the delivery
#' of Ad Exchange ads for line item-level dynamic allocation.}
#'      \item{TOTAL_INVENTORY_LEVEL_IMPRESSIONS - The total number of impressions delivered by the ad servers including
#' inventory-level dynamic allocation.}
#'      \item{TOTAL_LINE_ITEM_LEVEL_IMPRESSIONS - The total number of impressions delivered including line item-level dynamic
#' allocation.}
#'      \item{TOTAL_LINE_ITEM_LEVEL_TARGETED_IMPRESSIONS - The total number of impressions delivered including line item-level dynamic
#' allocation by explicit custom criteria targeting.}
#'      \item{TOTAL_LINE_ITEM_LEVEL_IMPRESSIONS_INCLUDING_OUT_OF_NETWORK_DELIVERY - The total number of impressions delivered by the ad server on a shared
#' inventory unit in a partner's network and through line item-level dynamic
#' allocation.}
#'      \item{TOTAL_INVENTORY_LEVEL_CLICKS - The total number of clicks delivered by the ad servers including
#' inventory-level dynamic allocation.}
#'      \item{TOTAL_LINE_ITEM_LEVEL_CLICKS - The total number of clicks delivered including line item-level dynamic
#' allocation.}
#'      \item{TOTAL_LINE_ITEM_LEVEL_TARGETED_CLICKS - The total number of clicks delivered including line item-level dynamic
#' allocation by explicit custom criteria targeting}
#'      \item{TOTAL_INVENTORY_LEVEL_CTR - The ratio of total clicks on ads delivered by the ad servers to the total
#' number of impressions delivered for an ad including inventory-level dynamic
#' allocation.}
#'      \item{TOTAL_LINE_ITEM_LEVEL_CTR - The ratio of total clicks on ads delivered by the ad servers to the total
#' number of impressions delivered for an ad including line item-level dynamic
#' allocation.}
#'      \item{TOTAL_INVENTORY_LEVEL_CPM_AND_CPC_REVENUE - The total CPM and CPC revenue generated by the ad servers including
#' inventory-level dynamic allocation.}
#'      \item{TOTAL_INVENTORY_LEVEL_ALL_REVENUE - The total CPM, CPC and CPD revenue generated by the ad servers including
#' inventory-level dynamic allocation.}
#'      \item{TOTAL_LINE_ITEM_LEVEL_CPM_AND_CPC_REVENUE - The total CPM and CPC revenue generated by the ad servers including line
#' item-level dynamic allocation.}
#'      \item{TOTAL_LINE_ITEM_LEVEL_ALL_REVENUE - The total CPM, CPC and CPD revenue generated by the ad servers including
#' line item-level dynamic allocation.}
#'      \item{TOTAL_INVENTORY_LEVEL_WITHOUT_CPD_AVERAGE_ECPM - Estimated cost-per-thousand-impressions (eCPM) of CPM and CPC ads delivered
#' by the ad servers including inventory-level dynamic allocation.}
#'      \item{TOTAL_INVENTORY_LEVEL_WITH_CPD_AVERAGE_ECPM - Estimated cost-per-thousand-impressions (eCPM) of CPM, CPC and CPD ads
#' delivered by the ad servers including inventory-level dynamic allocation.}
#'      \item{TOTAL_LINE_ITEM_LEVEL_WITHOUT_CPD_AVERAGE_ECPM - Estimated cost-per-thousand-impressions (eCPM) of CPM and CPC ads delivered
#' by the ad servers including line item-level dynamic allocation.}
#'      \item{TOTAL_LINE_ITEM_LEVEL_WITH_CPD_AVERAGE_ECPM - Estimated cost-per-thousand-impressions (eCPM) of CPM, CPC and CPD ads
#' delivered by the ad servers including line item-level dynamic allocation.}
#'      \item{TOTAL_CODE_SERVED_COUNT - The total number of times that the code for an ad is served by the ad server
#' including inventory-level dynamic allocation.}
#'      \item{TOTAL_INVENTORY_LEVEL_UNFILLED_IMPRESSIONS - The total number of missed impressions due to the ad servers' inability to
#' find ads to serve, including inventory-level dynamic allocation.}
#'      \item{TOTAL_UNFILLED_IMPRESSIONS_OUT_OF_NETWORK - The total number of missed impressions due to the ad servers' inability to
#' find ads to serve, including inventory-level dynamic allocation on shared
#' inventory units.}
#'      \item{OPTIMIZATION_CONTROL_IMPRESSIONS - The number of control (unoptimized) impressions delivered for an ad for
#' which the optimization feature has been enabled.}
#'      \item{OPTIMIZATION_CONTROL_CLICKS - Number of clicks resulting from the delivery of control (unoptimized)
#' impressions for an ad for which the optimization feature has been enabled.}
#'      \item{OPTIMIZATION_CONTROL_CTR - The CTR for control (unoptimized) impressions for an order for which the
#' optimization feature has been enabled.}
#'      \item{OPTIMIZATION_OPTIMIZED_IMPRESSIONS - Number of optimized impressions delivered for an ad for which the
#' optimization feature has been enabled.}
#'      \item{OPTIMIZATION_OPTIMIZED_CLICKS - Number of clicks resulting from the delivery of optimized impressions for an
#' ad for which the optimization feature has been enabled.}
#'      \item{OPTIMIZATION_NON_OPTIMIZED_IMPRESSIONS - Number of non-optimized impressions delivered for an ad for which the
#' optimization feature has been enabled.}
#'      \item{OPTIMIZATION_NON_OPTIMIZED_CLICKS - Number of clicks resulting from the delivery of non-optimized impressions
#' for an ad for which the optimization feature has been enabled.}
#'      \item{OPTIMIZATION_EXTRA_CLICKS - Number of extra clicks resulting from the delivery of optimized impressions
#' for an ad for which the optimization feature has been enabled.}
#'      \item{OPTIMIZATION_OPTIMIZED_CTR - The CTR for optimized impressions for an ad for which the optimization
#' feature has been enabled.}
#'      \item{OPTIMIZATION_LIFT - The percentage by which optimized CTRs are greater than the unoptimized
#' CTRs. This is calculated as ((Column OPTIMIZATION_OPTIMIZED_CTR/ Column
#' OPTIMIZATION_CONTROL_CTR) - 1) * 100 for an ad for which the optimization
#' feature has been enabled.}
#'      \item{OPTIMIZATION_COVERAGE - The line item coverage measures how often the traffic was sent for
#' optimization.}
#'      \item{OPTIMIZATION_BEHIND_SCHEDULE_IMPRESSIONS - The number of impressions that were behind schedule at the time of their
#' delivery.}
#'      \item{OPTIMIZATION_NO_CLICKS_RECORDED_IMPRESSIONS - The number of impressions that did not have any clicks recorded in the
#' recent past.}
#'      \item{OPTIMIZATION_SPONSORSHIP_IMPRESSIONS - The number of impressions that were delivered as sponsorship items.}
#'      \item{OPTIMIZATION_AS_FAST_AS_POSSIBLE_IMPRESSIONS - The number of impressions that were set to deliver as fast as possible.}
#'      \item{OPTIMIZATION_NO_ABSOLUTE_LIFETIME_GOAL_IMPRESSIONS - The number of impressions that have no absolute lifetime delivery goals.}
#'      \item{OPTIMIZATION_CONTROL_REVENUE - Total revenue resulting from the delivery of control (unoptimized)
#' impressions for an ad for which the optimization feature has been enabled.}
#'      \item{OPTIMIZATION_OPTIMIZED_REVENUE - Total revenue resulting from the delivery of optimized impressions for an ad
#' for which the optimization feature has been enabled.}
#'      \item{OPTIMIZATION_CONTROL_ECPM - Estimated cost-per-thousand-impressions (eCPM) of control (unoptimized)
#' impressions for an ad for which the optimization feature has been enabled.}
#'      \item{OPTIMIZATION_OPTIMIZED_ECPM - Estimated cost-per-thousand-impressions (eCPM) of optimized impressions for
#' an ad for which the optimization feature has been enabled.}
#'      \item{OPTIMIZATION_FREED_UP_IMPRESSIONS - Freed-up impressions as a result of optimization.}
#'      \item{OPTIMIZATION_ECPM_LIFT - Relative change in eCPM as a result of optimization.}
#'      \item{REACH_FREQUENCY - The average number of ads displayed to each unique visitor.}
#'      \item{REACH_AVERAGE_REVENUE - The average revenue earned per unique visitor.}
#'      \item{REACH - The number of unique visitors.}
#'      \item{GRP_POPULATION - The number of people in the given demographic bucket.}
#'      \item{GRP_UNIQUE_AUDIENCE - The number of unique users reached in the given demographic bucket.}
#'      \item{GRP_UNIQUE_AUDIENCE_SHARE - Percentage of the number of unique users reached in the given demographic
#' bucket (out of the number of unique users reached in all demographics).}
#'      \item{GRP_AUDIENCE_IMPRESSIONS - The number of impressions in the given demographic bucket.}
#'      \item{GRP_AUDIENCE_IMPRESSIONS_SHARE - Percentage of the number of impressions in the given demographic bucket (out
#' of the number of impressions in all demographics).}
#'      \item{GRP_AUDIENCE_REACH - The audience reach calculated as GRP_UNIQUE_AUDIENCE / GRP_POPULATION.}
#'      \item{GRP_AUDIENCE_AVERAGE_FREQUENCY - The audience average frequency calculated as GRP_AUDIENCE_IMPRESSIONS /
#' GRP_UNIQUE_AUDIENCE.}
#'      \item{GRP_GROSS_RATING_POINTS - The gross rating points (GRP) calculated as GRP_AUDIENCE_REACH *
#' GRP_AUDIENCE_AVERAGE_FREQUENCY * 100.}
#'      \item{SDK_MEDIATION_CREATIVE_IMPRESSIONS - The number of impressions for a particular SDK mediation creative.}
#'      \item{SDK_MEDIATION_CREATIVE_CLICKS - The number of clicks for a particular SDK mediation creative.}
#'      \item{SELL_THROUGH_FORECASTED_IMPRESSIONS - The number of forecasted impressions for future sell-through reports. This
#' metric is available for the next 90 days with a daily break down and for the
#' next 12 months with a monthly break down.}
#'      \item{SELL_THROUGH_AVAILABLE_IMPRESSIONS - The number of available impressions for future sell-through reports. This
#' metric is available for the next 90 days with a daily break down and for the
#' next 12 months with a monthly break down.}
#'      \item{SELL_THROUGH_RESERVED_IMPRESSIONS - The number of reserved impressions for future sell-through reports. This
#' metric is available for the next 90 days with a daily break down and for the
#' next 12 months with a monthly break down.}
#'      \item{SELL_THROUGH_SELL_THROUGH_RATE - The sell-through rate for impressions for future sell-through reports. This
#' metric is available for the next 90 days with a daily break down and for the
#' next 12 months with a monthly break down.}
#'      \item{RICH_MEDIA_BACKUP_IMAGES - The total number of times a backup image is served in place of a rich media
#' ad.}
#'      \item{RICH_MEDIA_DISPLAY_TIME - The amount of time(seconds) that each rich media ad is displayed to users.}
#'      \item{RICH_MEDIA_AVERAGE_DISPLAY_TIME - The average amount of time(seconds) that each rich media ad is displayed to
#' users.}
#'      \item{RICH_MEDIA_EXPANSIONS - The number of times an expanding ad was expanded.}
#'      \item{RICH_MEDIA_EXPANDING_TIME - The average amount of time(seconds) that an expanding ad is viewed in an
#' expanded state.}
#'      \item{RICH_MEDIA_INTERACTION_TIME - The average amount of time(seconds) that a user interacts with a rich media
#' ad.}
#'      \item{RICH_MEDIA_INTERACTION_COUNT - The number of times that a user interacts with a rich media ad.}
#'      \item{RICH_MEDIA_INTERACTION_RATE - The ratio of rich media ad interactions to the number of times the ad was
#' displayed. Represented as a percentage.}
#'      \item{RICH_MEDIA_AVERAGE_INTERACTION_TIME - The average amount of time(seconds) that a user interacts with a rich media
#' ad.}
#'      \item{RICH_MEDIA_INTERACTION_IMPRESSIONS - The number of impressions where a user interacted with a rich media ad.}
#'      \item{RICH_MEDIA_MANUAL_CLOSES - The number of times that a user manually closes a floating, expanding,
#' in-page with overlay, or in-page with floating ad.}
#'      \item{RICH_MEDIA_FULL_SCREEN_IMPRESSIONS - A metric that measures an impression only once when a user opens an ad in
#' full screen mode.}
#'      \item{RICH_MEDIA_VIDEO_INTERACTIONS - The number of times a user clicked on the graphical controls of a video
#' player.}
#'      \item{RICH_MEDIA_VIDEO_INTERACTION_RATE - The ratio of video interactions to video plays. Represented as a percentage.}
#'      \item{RICH_MEDIA_VIDEO_MUTES - The number of times a rich media video was muted.}
#'      \item{RICH_MEDIA_VIDEO_PAUSES - The number of times a rich media video was paused.}
#'      \item{RICH_MEDIA_VIDEO_PLAYES - The number of times a rich media video was played.}
#'      \item{RICH_MEDIA_VIDEO_MIDPOINTS - The number of times a rich media video was played upto midpoint.}
#'      \item{RICH_MEDIA_VIDEO_COMPLETES - The number of times a rich media video was fully played.}
#'      \item{RICH_MEDIA_VIDEO_REPLAYS - The number of times a rich media video was restarted.}
#'      \item{RICH_MEDIA_VIDEO_STOPS - The number of times a rich media video was stopped.}
#'      \item{RICH_MEDIA_VIDEO_UNMUTES - The number of times a rich media video was unmuted.}
#'      \item{RICH_MEDIA_VIDEO_VIEW_TIME - The average amount of time(seconds) that a rich media video was viewed per
#' view.}
#'      \item{RICH_MEDIA_VIDEO_VIEW_RATE - The percentage of a video watched by a user.}
#'      \item{RICH_MEDIA_CUSTOM_EVENT_TIME - The amount of time (seconds) that a user interacts with a rich media ad.}
#'      \item{RICH_MEDIA_CUSTOM_EVENT_COUNT - The number of times a user views and interacts with a specified part of a
#' rich media ad.}
#'      \item{VIDEO_VIEWERSHIP_START - The number of impressions where the video was played.}
#'      \item{VIDEO_VIEWERSHIP_FIRST_QUARTILE - The number of times the video played to 25\% of its length.}
#'      \item{VIDEO_VIEWERSHIP_MIDPOINT - The number of times the video reached its midpoint during play.}
#'      \item{VIDEO_VIEWERSHIP_THIRD_QUARTILE - The number of times the video played to 75\% of its length.}
#'      \item{VIDEO_VIEWERSHIP_COMPLETE - The number of times the video played to completion.}
#'      \item{VIDEO_VIEWERSHIP_AVERAGE_VIEW_RATE - Average percentage of the video watched by users.}
#'      \item{VIDEO_VIEWERSHIP_AVERAGE_VIEW_TIME - Average time(seconds) users watched the video.}
#'      \item{VIDEO_VIEWERSHIP_COMPLETION_RATE - Percentage of times the video played to the end.}
#'      \item{VIDEO_VIEWERSHIP_TOTAL_ERROR_COUNT - The number of times an error occurred, such as a VAST redirect error, a
#' video playback error, or an invalid response error.}
#'      \item{VIDEO_VIEWERSHIP_VIDEO_LENGTH - Duration of the video creative.}
#'      \item{VIDEO_VIEWERSHIP_SKIP_BUTTON_SHOWN - The number of times a skip button is shown in video.}
#'      \item{VIDEO_VIEWERSHIP_ENGAGED_VIEW - The number of engaged views i.e. ad is viewed to completion or for 30s,
#' whichever comes first.}
#'      \item{VIDEO_VIEWERSHIP_VIEW_THROUGH_RATE - View-through rate represented as a percentage.}
#'      \item{VIDEO_VIEWERSHIP_AUTO_PLAYS - Number of times that the publisher specified a video ad played
#' automatically.}
#'      \item{VIDEO_VIEWERSHIP_CLICK_TO_PLAYS - Number of times that the publisher specified a video ad was clicked to play.}
#'      \item{VIDEO_VIEWERSHIP_TOTAL_ERROR_RATE - Error rate is the percentage of video error count from (error count + total
#' impressions).}
#'      \item{VIDEO_ERRORS_VAST_2_ERROR_COUNT - Number of VAST2 video errors.}
#'      \item{VIDEO_ERRORS_VAST_3_ERROR_100_COUNT - Number of VAST3 video errors of type 100.}
#'      \item{VIDEO_ERRORS_VAST_3_ERROR_101_COUNT - Number of VAST3 video errors of type 101.}
#'      \item{VIDEO_ERRORS_VAST_3_ERROR_102_COUNT - Number of VAST3 video errors of type 102.}
#'      \item{VIDEO_ERRORS_VAST_3_ERROR_200_COUNT - Number of VAST3 video errors of type 200.}
#'      \item{VIDEO_ERRORS_VAST_3_ERROR_201_COUNT - Number of VAST3 video errors of type 201.}
#'      \item{VIDEO_ERRORS_VAST_3_ERROR_202_COUNT - Number of VAST3 video errors of type 202.}
#'      \item{VIDEO_ERRORS_VAST_3_ERROR_203_COUNT - Number of VAST3 video errors of type 203.}
#'      \item{VIDEO_ERRORS_VAST_3_ERROR_300_COUNT - Number of VAST3 video errors of type 300.}
#'      \item{VIDEO_ERRORS_VAST_3_ERROR_301_COUNT - Number of VAST3 video errors of type 301.}
#'      \item{VIDEO_ERRORS_VAST_3_ERROR_302_COUNT - Number of VAST3 video errors of type 302.}
#'      \item{VIDEO_ERRORS_VAST_3_ERROR_303_COUNT - Number of VAST3 video errors of type 303.}
#'      \item{VIDEO_ERRORS_VAST_3_ERROR_400_COUNT - Number of VAST3 video errors of type 400.}
#'      \item{VIDEO_ERRORS_VAST_3_ERROR_401_COUNT - Number of VAST3 video errors of type 401.}
#'      \item{VIDEO_ERRORS_VAST_3_ERROR_402_COUNT - Number of VAST3 video errors of type 402.}
#'      \item{VIDEO_ERRORS_VAST_3_ERROR_403_COUNT - Number of VAST3 video errors of type 403.}
#'      \item{VIDEO_ERRORS_VAST_3_ERROR_405_COUNT - Number of VAST3 video errors of type 405.}
#'      \item{VIDEO_ERRORS_VAST_3_ERROR_500_COUNT - Number of VAST3 video errors of type 500.}
#'      \item{VIDEO_ERRORS_VAST_3_ERROR_501_COUNT - Number of VAST3 video errors of type 501.}
#'      \item{VIDEO_ERRORS_VAST_3_ERROR_502_COUNT - Number of VAST3 video errors of type 502.}
#'      \item{VIDEO_ERRORS_VAST_3_ERROR_503_COUNT - Number of VAST3 video errors of type 503.}
#'      \item{VIDEO_ERRORS_VAST_3_ERROR_600_COUNT - Number of VAST3 video errors of type 600.}
#'      \item{VIDEO_ERRORS_VAST_3_ERROR_601_COUNT - Number of VAST3 video errors of type 601.}
#'      \item{VIDEO_ERRORS_VAST_3_ERROR_602_COUNT - Number of VAST3 video errors of type 602.}
#'      \item{VIDEO_ERRORS_VAST_3_ERROR_603_COUNT - Number of VAST3 video errors of type 603.}
#'      \item{VIDEO_ERRORS_VAST_3_ERROR_604_COUNT - Number of VAST3 video errors of type 604.}
#'      \item{VIDEO_ERRORS_VAST_3_ERROR_900_COUNT - Number of VAST3 video errors of type 900.}
#'      \item{VIDEO_ERRORS_VAST_3_ERROR_901_COUNT - Number of VAST3 video errors of type 901.}
#'      \item{VIDEO_INTERACTION_PAUSE - Video interaction event: The number of times user paused ad clip.}
#'      \item{VIDEO_INTERACTION_RESUME - Video interaction event: The number of times the user unpaused the video.}
#'      \item{VIDEO_INTERACTION_REWIND - Video interaction event: The number of times a user rewinds the video.}
#'      \item{VIDEO_INTERACTION_MUTE - Video interaction event: The number of times video player was in mute state
#' during play of ad clip.}
#'      \item{VIDEO_INTERACTION_UNMUTE - Video interaction event: The number of times a user unmutes the video.}
#'      \item{VIDEO_INTERACTION_COLLAPSE - Video interaction event: The number of times a user collapses a video,
#' either to its original size or to a different size.}
#'      \item{VIDEO_INTERACTION_EXPAND - Video interaction event: The number of times a user expands a video.}
#'      \item{VIDEO_INTERACTION_FULL_SCREEN - Video interaction event: The number of times ad clip played in full screen
#' mode.}
#'      \item{VIDEO_INTERACTION_AVERAGE_INTERACTION_RATE - Video interaction event: The number of user interactions with a video, on
#' average, such as pause, full screen, mute, etc.}
#'      \item{VIDEO_INTERACTION_VIDEO_SKIPS - Video interaction event: The number of times a skippable video is skipped.}
#'      \item{VIDEO_OPTIMIZATION_CONTROL_STARTS - The number of control starts.}
#'      \item{VIDEO_OPTIMIZATION_OPTIMIZED_STARTS - The number of optimized starts.}
#'      \item{VIDEO_OPTIMIZATION_CONTROL_COMPLETES - The number of control completes.}
#'      \item{VIDEO_OPTIMIZATION_OPTIMIZED_COMPLETES - The number of optimized completes.}
#'      \item{VIDEO_OPTIMIZATION_CONTROL_COMPLETION_RATE - The rate of control completions.}
#'      \item{VIDEO_OPTIMIZATION_OPTIMIZED_COMPLETION_RATE - The rate of optimized completions.}
#'      \item{VIDEO_OPTIMIZATION_COMPLETION_RATE_LIFT - The percentage by which optimized completion rate is greater than the
#' unoptimized completion rate. This is calculated as (( Column
#' VIDEO_OPTIMIZATION_OPTIMIZED_COMPLETION_RATE/ Column
#' VIDEO_OPTIMIZATION_CONTROL_COMPLETION_RATE) - 1) * 100 for an ad for which
#' the optimization feature has been enabled.}
#'      \item{VIDEO_OPTIMIZATION_CONTROL_SKIP_BUTTON_SHOWN - The number of control skip buttons shown.}
#'      \item{VIDEO_OPTIMIZATION_OPTIMIZED_SKIP_BUTTON_SHOWN - The number of optimized skip buttons shown.}
#'      \item{VIDEO_OPTIMIZATION_CONTROL_ENGAGED_VIEW - The number of control engaged views.}
#'      \item{VIDEO_OPTIMIZATION_OPTIMIZED_ENGAGED_VIEW - The number of optimized engaged views.}
#'      \item{VIDEO_OPTIMIZATION_CONTROL_VIEW_THROUGH_RATE - The control view-through rate.}
#'      \item{VIDEO_OPTIMIZATION_OPTIMIZED_VIEW_THROUGH_RATE - The optimized view-through rate.}
#'      \item{VIDEO_OPTIMIZATION_VIEW_THROUGH_RATE_LIFT - The percentage by which optimized view-through rate is greater than the
#' unoptimized view-through rate. This is calculated as (( Column
#' VIDEO_OPTIMIZATION_OPTIMIZED_VIEW_THROUGH_RATE/ Column
#' VIDEO_OPTIMIZATION_CONTROL_VIEW_THROUGH_RATE) - 1) * 100 for an ad for which
#' the optimization feature has been enabled.}
#'      \item{TOTAL_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS - The total number of impressions viewed on the user's screen.}
#'      \item{TOTAL_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS - The total number of impressions that were sampled and measured by active
#' view.}
#'      \item{TOTAL_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS_RATE - The percentage of total impressions viewed on the user's screen (out of the
#' total impressions measurable by active view).}
#'      \item{TOTAL_ACTIVE_VIEW_ELIGIBLE_IMPRESSIONS - Total number of impressions that were eligible to measure viewability.}
#'      \item{TOTAL_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS_RATE - The percentage of total impressions that were measurable by active view (out
#' of all the total impressions sampled for active view).}
#'      \item{AD_SERVER_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS - The number of impressions delivered by the ad server viewed on the user's
#' screen.}
#'      \item{AD_SERVER_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS - The number of impressions delivered by the ad server that were sampled, and
#' measurable by active view.}
#'      \item{AD_SERVER_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS_RATE - The percentage of impressions delivered by the ad server viewed on the
#' user's screen (out of the ad server impressions measurable by active view).}
#'      \item{AD_SERVER_ACTIVE_VIEW_ELIGIBLE_IMPRESSIONS - Total number of impressions delivered by the ad server that were eligible to
#' measure viewability.}
#'      \item{AD_SERVER_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS_RATE - The percentage of impressions delivered by the ad server that were
#' measurable by active view ( out of all the ad server impressions sampled for
#' active view).}
#'      \item{ADSENSE_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS - The number of impressions delivered by AdSense viewed on the user's screen,}
#'      \item{ADSENSE_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS - The number of impressions delivered by AdSense that were sampled, and
#' measurable by active view.}
#'      \item{ADSENSE_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS_RATE - The percentage of impressions delivered by AdSense viewed on the user's
#' screen (out of AdSense impressions measurable by active view).}
#'      \item{ADSENSE_ACTIVE_VIEW_ELIGIBLE_IMPRESSIONS - Total number of impressions delivered by AdSense that were eligible to
#' measure viewability.}
#'      \item{ADSENSE_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS_RATE - The percentage of impressions delivered by AdSense that were measurable by
#' active view ( out of all AdSense impressions sampled for active view).}
#'      \item{AD_EXCHANGE_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS - The number of impressions delivered by Ad Exchange viewed on the user's
#' screen,}
#'      \item{AD_EXCHANGE_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS - The number of impressions delivered by Ad Exchange that were sampled, and
#' measurable by active view.}
#'      \item{AD_EXCHANGE_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS_RATE - The percentage of impressions delivered by Ad Exchange viewed on the user's
#' screen (out of Ad Exchange impressions measurable by active view).}
#'      \item{AD_EXCHANGE_ACTIVE_VIEW_ELIGIBLE_IMPRESSIONS - Total number of impressions delivered by Ad Exchange that were eligible to
#' measure viewability.}
#'      \item{AD_EXCHANGE_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS_RATE - The percentage of impressions delivered by Ad Exchange that were measurable
#' by active view ( out of all Ad Exchange impressions sampled for active
#' view).}
#'      \item{VIEW_THROUGH_CONVERSIONS - Number of view-through conversions.}
#'      \item{CONVERSIONS_PER_THOUSAND_IMPRESSIONS - Number of view-through conversions per thousand impressions.}
#'      \item{CLICK_THROUGH_CONVERSIONS - Number of click-through conversions.}
#'      \item{CONVERSIONS_PER_CLICK - Number of click-through conversions per click.}
#'      \item{VIEW_THROUGH_REVENUE - Revenue for view-through conversions.}
#'      \item{CLICK_THROUGH_REVENUE - Revenue for click-through conversions.}
#'      \item{TOTAL_CONVERSIONS - Total number of conversions.}
#'      \item{TOTAL_CONVERSION_REVENUE - Total revenue for conversions.}
#'      \item{DYNAMIC_ALLOCATION_OPPORTUNITY_IMPRESSIONS_COMPETING_TOTAL - The number of impressions sent to Ad Exchange / AdSense, regardless of
#' whether they won or lost (total number of dynamic allocation impressions).}
#'      \item{DYNAMIC_ALLOCATION_OPPORTUNITY_UNFILLED_IMPRESSIONS_COMPETING - The number of unfilled queries that attempted dynamic allocation by Ad
#' Exchange / AdSense.}
#'      \item{DYNAMIC_ALLOCATION_OPPORTUNITY_ELIGIBLE_IMPRESSIONS_TOTAL - The number of Ad Exchange / AdSense and DFP impressions.}
#'      \item{DYNAMIC_ALLOCATION_OPPORTUNITY_IMPRESSIONS_NOT_COMPETING_TOTAL - The difference between eligible impressions and competing impressions in
#' dynamic allocation.}
#'      \item{DYNAMIC_ALLOCATION_OPPORTUNITY_IMPRESSIONS_NOT_COMPETING_PERCENT_TOTAL - The percentage of eligible impressions that are not competing in dynamic
#' allocation.}
#'      \item{DYNAMIC_ALLOCATION_OPPORTUNITY_SATURATION_RATE_TOTAL - The percent of eligible impressions participating in dynamic allocation.}
#'      \item{DYNAMIC_ALLOCATION_OPPORTUNITY_MATCH_RATE_TOTAL - The percent of total dynamic allocation queries that won.}
#'      \item{CONTRACTED_REVENUE_CONTRACTED_NET_REVENUE - The contracted net revenue of the ProposalLineItem.}
#'      \item{CONTRACTED_REVENUE_LOCAL_CONTRACTED_NET_REVENUE - The contracted net revenue in the local currency of the ProposalLineItem.
#' See CONTRACTED_REVENUE_CONTRACTED_NET_REVENUE}
#'      \item{CONTRACTED_REVENUE_CONTRACTED_GROSS_REVENUE - The contracted gross revenue of the ProposalLineItem, including agency
#' commission.}
#'      \item{CONTRACTED_REVENUE_LOCAL_CONTRACTED_GROSS_REVENUE - The contracted gross revenue in the local currency of the ProposalLineItem,
#' including agency commission. See CONTRACTED_REVENUE_CONTRACTED_GROSS_REVENUE}
#'      \item{CONTRACTED_REVENUE_CONTRACTED_VAT - The value added tax on contracted net revenue of the ProposalLineItem or
#' Proposal.}
#'      \item{CONTRACTED_REVENUE_LOCAL_CONTRACTED_VAT - The value added tax on contracted net revenue in the local currency of the
#' ProposalLineItem or Proposal. See CONTRACTED_REVENUE_CONTRACTED_VAT}
#'      \item{CONTRACTED_REVENUE_CONTRACTED_AGENCY_COMMISSION - The contracted agency commission of the ProposalLineItem or Proposal.}
#'      \item{CONTRACTED_REVENUE_LOCAL_CONTRACTED_AGENCY_COMMISSION - The contracted agency commission in the local currency of the
#' ProposalLineItem or Proposal. See
#' CONTRACTED_REVENUE_CONTRACTED_AGENCY_COMMISSION}
#'      \item{SALES_CONTRACT_CONTRACTED_IMPRESSIONS - The contracted impressions of the ProposalLineItem.}
#'      \item{SALES_CONTRACT_CONTRACTED_CLICKS - The contracted clicks of the ProposalLineItem.}
#'      \item{SALES_CONTRACT_CONTRACTED_VOLUME - The contracted volume of the ProposalLineItem. Volume represents impressions
#' for rate type CPM, clicks for CPC, and days for CPD.}
#'      \item{SALES_CONTRACT_BUDGET - The budget of the Proposal.}
#'      \item{SALES_CONTRACT_REMAINING_BUDGET - The remaining budget of the Proposal. It is calculated by subtracting the
#' contracted net revenue from the budget.}
#'      \item{SALES_CONTRACT_BUFFERED_IMPRESSIONS - The buffered impressions of the ProposalLineItem.}
#'      \item{SALES_CONTRACT_BUFFERED_CLICKS - The buffered clicks of the ProposalLineItem.}
#'      \item{SCHEDULED_SCHEDULED_IMPRESSIONS - The scheduled impressions of a ProposalLineItem. It is the sum of
#' SALES_CONTRACT_CONTRACTED_IMPRESSIONS and
#' SALES_CONTRACT_BUFFERED_IMPRESSIONS.}
#'      \item{SCHEDULED_SCHEDULED_CLICKS - The scheduled clicks of a ProposalLineItem. It is the sum of
#' SALES_CONTRACT_CONTRACTED_CLICKS and SALES_CONTRACT_BUFFERED_CLICKS.}
#'      \item{SCHEDULED_SCHEDULED_VOLUME - The scheduled volume of a ProposalLineItem. It is the sum of
#' SALES_CONTRACT_CONTRACTED_VOLUME and buffered volume.}
#'      \item{SCHEDULED_SCHEDULED_NET_REVENUE - The scheduled net revenue of a ProposalLineItem.}
#'      \item{SCHEDULED_LOCAL_SCHEDULED_NET_REVENUE - The scheduled net revenue in the local currency of a ProposalLineItem.}
#'      \item{SCHEDULED_SCHEDULED_GROSS_REVENUE - The scheduled gross revenue of a ProposalLineItem.}
#'      \item{SCHEDULED_LOCAL_SCHEDULED_GROSS_REVENUE - The scheduled gross revenue in the local currency of a ProposalLineItem.}
#'      \item{SALES_TOTAL_TOTAL_BUDGET - The total budget of the Proposal. It differs from SALES_CONTRACT_BUDGET
#' since it always contains the total budget, not the prorated budget.}
#'      \item{SALES_TOTAL_TOTAL_REMAINING_BUDGET - The total remaining budget of the Proposal. It differs from
#' SALES_CONTRACT_REMAINING_BUDGET since it always contains the total remaining
#' budget, not the prorated remaining budget.}
#'      \item{SALES_TOTAL_TOTAL_CONTRACTED_VOLUME - The total contracted volume of the ProposalLineItem. It differs from
#' SALES_CONTRACT_CONTRACTED_VOLUME that the volume is not prorated with regard
#' to the date range.}
#'      \item{SALES_TOTAL_TOTAL_CONTRACTED_NET_REVENUE - The total contracted net revenue of the ProposalLineItem. It differs from
#' CONTRACTED_REVENUE_CONTRACTED_NET_REVENUE that the revenue is not prorated
#' with regard to the date range.}
#'      \item{SALES_TOTAL_LOCAL_TOTAL_CONTRACTED_NET_REVENUE - The total contracted net revenue in the local currency of the
#' ProposalLineItem. It differs from
#' CONTRACTED_REVENUE_LOCAL_CONTRACTED_NET_REVENUE that the revenue is not
#' prorated with regard to the date range. See
#' SALES_TOTAL_TOTAL_CONTRACTED_NET_REVENUE}
#'      \item{SALES_TOTAL_TOTAL_CONTRACTED_GROSS_REVENUE - The total contracted gross revenue of the ProposalLineItem. It differs from
#' CONTRACTED_REVENUE_CONTRACTED_GROSS_REVENUE that the revenue is not prorated
#' with regard to the date range.}
#'      \item{SALES_TOTAL_LOCAL_TOTAL_CONTRACTED_GROSS_REVENUE - The total contracted gross revenue in the local currency of the
#' ProposalLineItem. It differs from
#' CONTRACTED_REVENUE_LOCAL_CONTRACTED_GROSS_REVENUE that the revenue is not
#' prorated with regard to the date range. See
#' SALES_TOTAL_TOTAL_CONTRACTED_GROSS_REVENUE}
#'      \item{SALES_TOTAL_TOTAL_CONTRACTED_AGENCY_COMMISSION - The total contracted agency commission of the ProposalLineItem. It differs
#' from CONTRACTED_REVENUE_CONTRACTED_AGENCY_COMMISSION that the revenue is not
#' prorated with regard to the date range.}
#'      \item{SALES_TOTAL_LOCAL_TOTAL_CONTRACTED_AGENCY_COMMISSION - The total contracted agency commission in the local currency of the
#' ProposalLineItem. It differs from
#' CONTRACTED_REVENUE_LOCAL_CONTRACTED_AGENCY_COMMISSION that the revenue is
#' not prorated with regard to the date range. See
#' SALES_TOTAL_TOTAL_CONTRACTED_AGENCY_COMMISSION}
#'      \item{SALES_TOTAL_TOTAL_CONTRACTED_NET_REVENUE_WITH_VAT - The total net revenue plus its value added tax of the ProposalLineItem. The
#' revenue is not prorated with regard to the date range.}
#'      \item{SALES_TOTAL_LOCAL_TOTAL_CONTRACTED_NET_REVENUE_WITH_VAT - The total net revenue plus its value added tax in the local currency of the
#' ProposalLineItem. The revenue is not prorated with regard to the date range.
#' See SALES_TOTAL_TOTAL_CONTRACTED_WITH_VAT}
#'      \item{SALES_TOTAL_TOTAL_SCHEDULED_VOLUME - The total scheduled volume of the ProposalLineItem. It differs from
#' SCHEDULED_SCHEDULED_VOLUME that the volume is not prorated with regard to
#' the date range.}
#'      \item{SALES_TOTAL_TOTAL_SCHEDULED_NET_REVENUE - The total scheduled net revenue of the ProposalLineItem. It differs from
#' SCHEDULED_SCHEDULED_NET_REVENUE that the revenue is not prorated with regard
#' to the date range.}
#'      \item{SALES_TOTAL_LOCAL_TOTAL_SCHEDULED_NET_REVENUE - The total scheduled net revenue in the local currency of the
#' ProposalLineItem. It differs from SCHEDULED_LOCAL_SCHEDULED_NET_REVENUE that
#' the revenue is not prorated with regard to the date range. See
#' SALES_TOTAL_TOTAL_SCHEDULED_NET_REVENUE}
#'      \item{SALES_TOTAL_TOTAL_SCHEDULED_GROSS_REVENUE - The total scheduled gross revenue of the ProposalLineItem. It differs from
#' SCHEDULED_SCHEDULED_GROSS_REVENUE that the revenue is not prorated with
#' regard to the date range.}
#'      \item{SALES_TOTAL_LOCAL_TOTAL_SCHEDULED_GROSS_REVENUE - The total scheduled gross revenue in the local currency of the
#' ProposalLineItem. It differs from SCHEDULED_LOCAL_SCHEDULED_GROSS_REVENUE
#' that the revenue is not prorated with regard to the date range. See
#' SALES_TOTAL_TOTAL_SCHEDULED_GROSS_REVENUE}
#'      \item{UNIFIED_REVENUE_UNRECONCILED_NET_REVENUE - The unreconciled net revenue of the ProposalLineItem. It is the portion of
#' UNIFIED_REVENUE_UNIFIED_NET_REVENUE coming from unreconciled DFP volume.}
#'      \item{UNIFIED_REVENUE_LOCAL_UNRECONCILED_NET_REVENUE - The unreconciled net revenue of the ProposalLineItem in local currency. It
#' is the portion of UNIFIED_REVENUE_LOCAL_UNIFIED_NET_REVENUE coming from
#' unreconciled DFP volume. See UNIFIED_REVENUE_UNRECONCILED_NET_REVENUE}
#'      \item{UNIFIED_REVENUE_UNRECONCILED_GROSS_REVENUE - The unreconciled gross revenue of the ProposalLineItem. It is the portion of
#' UNIFIED_REVENUE_UNIFIED_GROSS_REVENUE coming from unreconciled DFP volume.}
#'      \item{UNIFIED_REVENUE_LOCAL_UNRECONCILED_GROSS_REVENUE - The unreconciled gross revenue of the ProposalLineItem in local currency. It
#' is the portion of UNIFIED_REVENUE_LOCAL_UNIFIED_GROSS_REVENUE coming from
#' unreconciled DFP volume. See UNIFIED_REVENUE_UNRECONCILED_GROSS_REVENUE}
#'      \item{UNIFIED_REVENUE_FORECASTED_NET_REVENUE - The forecasted net revenue of the ProposalLineItem. It is the portion of
#' UNIFIED_REVENUE_UNIFIED_NET_REVENUE coming from forecasted DFP volume.}
#'      \item{UNIFIED_REVENUE_LOCAL_FORECASTED_NET_REVENUE - The forecasted net revenue of the ProposalLineItem in local currency. It is
#' the portion of UNIFIED_REVENUE_LOCAL_UNIFIED_NET_REVENUE coming from
#' forecasted DFP volume. See UNIFIED_REVENUE_FORECASTED_NET_REVENUE}
#'      \item{UNIFIED_REVENUE_FORECASTED_GROSS_REVENUE - The forecasted gross revenue of the ProposalLineItem. It is the portion of
#' UNIFIED_REVENUE_UNIFIED_GROSS_REVENUE coming from forecasted DFP volume.}
#'      \item{UNIFIED_REVENUE_LOCAL_FORECASTED_GROSS_REVENUE - The forecasted gross revenue of the ProposalLineItem in local currency. It
#' is the portion of UNIFIED_REVENUE_LOCAL_UNIFIED_GROSS_REVENUE coming from
#' forecasted DFP volume. See UNIFIED_REVENUE_FORECASTED_GROSS_REVENUE}
#'      \item{UNIFIED_REVENUE_UNIFIED_NET_REVENUE - The unified net revenue of the ProposalLineItem. It is a combination of
#' UNIFIED_REVENUE_UNRECONCILED_NET_REVENUE, BILLING_BILLABLE_NET_REVENUE, and
#' UNIFIED_REVENUE_FORECASTED_NET_REVENUE when query date range spans
#' historical delivery and forecasted delivery.}
#'      \item{UNIFIED_REVENUE_LOCAL_UNIFIED_NET_REVENUE - The unified net revenue of the ProposalLineItem in local currency. It is a
#' combination of UNIFIED_REVENUE_LOCAL_UNRECONCILED_NET_REVENUE,
#' BILLING_LOCAL_BILLABLE_NET_REVENUE, and
#' UNIFIED_REVENUE_LOCAL_FORECASTED_NET_REVENUE when query date range spans
#' historical delivery and forecasted delivery. See
#' UNIFIED_REVENUE_UNIFIED_NET_REVENUE}
#'      \item{UNIFIED_REVENUE_UNIFIED_GROSS_REVENUE - The unified net revenue of the ProposalLineItem. It is a combination of
#' UNIFIED_REVENUE_UNRECONCILED_GROSS_REVENUE, BILLING_BILLABLE_GROSS_REVENUE,
#' and UNIFIED_REVENUE_FORECASTED_GROSS_REVENUE when query date range spans
#' historical delivery and forecasted delivery.}
#'      \item{UNIFIED_REVENUE_LOCAL_UNIFIED_GROSS_REVENUE - The unified gross revenue of the ProposalLineItem in local currency. It is a
#' combination of UNIFIED_REVENUE_LOCAL_UNRECONCILED_GROSS_REVENUE,
#' BILLING_LOCAL_BILLABLE_GROSS_REVENUE, and
#' UNIFIED_REVENUE_LOCAL_FORECASTED_GROSS_REVENUE when query date range spans
#' historical delivery and forecasted delivery. See
#' UNIFIED_REVENUE_UNIFIED_GROSS_REVENUE}
#'      \item{UNIFIED_REVENUE_UNIFIED_AGENCY_COMMISSION - The unified agency commission of the ProposalLineItem. It is a combination
#' of the unreconciled agency commission, the
#' BILLING_BILLABLE_AGENCY_COMMISSION, and the forecasted agency commission
#' when query date range spans historical delivery and forecasted delivery.}
#'      \item{UNIFIED_REVENUE_LOCAL_UNIFIED_AGENCY_COMMISSION - The unified agency commission of the ProposalLineItem in local currency. It
#' is a combination of the unreconciled agency commission, the
#' BILLING_BILLABLE_AGENCY_COMMISSION, and the forecasted agency commission
#' when query date range spans historical delivery and forecasted delivery. See
#' UNIFIED_REVENUE_UNIFIED_AGENCY_COMMISSION}
#'      \item{EXPECTED_REVENUE_EXPECTED_NET_REVENUE - The expected revenue of the ProposalLineItem. It is equivalent to
#' UNIFIED_REVENUE_UNIFIED_NET_REVENUE when the ProposalLineItem is sold and
#' SALES_PIPELINE_PIPELINE_NET_REVENUE otherwise.}
#'      \item{EXPECTED_REVENUE_LOCAL_EXPECTED_NET_REVENUE - The expected revenue of the ProposalLineItem in local currency. It is
#' equivalent to UNIFIED_REVENUE_LOCAL_UNIFIED_NET_REVENUE when the
#' ProposalLineItem is sold and SALES_PIPELINE_LOCAL_PIPELINE_NET_REVENUE
#' otherwise. See EXPECTED_REVENUE_EXPECTED_NET_REVENUE}
#'      \item{EXPECTED_REVENUE_EXPECTED_GROSS_REVENUE - The expected gross revenue of the ProposalLineItem. It is equivalent to
#' UNIFIED_REVENUE_UNIFIED_GROSS_REVENUE when the ProposalLineItem is sold and
#' SALES_PIPELINE_PIPELINE_GROSS_REVENUE otherwise.}
#'      \item{EXPECTED_REVENUE_LOCAL_EXPECTED_GROSS_REVENUE - The expected gross revenue of the ProposalLineItem in local currency. It is
#' equivalent to UNIFIED_REVENUE_LOCAL_UNIFIED_GROSS_REVENUE when the
#' ProposalLineItem is sold and SALES_PIPELINE_LOCAL_PIPELINE_GROSS_REVENUE
#' otherwise. See EXPECTED_REVENUE_EXPECTED_GROSS_REVENUE}
#'      \item{SALES_PIPELINE_PIPELINE_NET_REVENUE - The pipeline net revenue of the ProposalLineItem. It is calculated by
#' multiplying probability to close by the contracted revenue for those unsold
#' ProposalLineItems. There is no revenue for those sold ProposalLineItems.}
#'      \item{SALES_PIPELINE_LOCAL_PIPELINE_NET_REVENUE - The pipeline net revenue in the local currency of the ProposalLineItem. It
#' is calculated by multiplying probability to close by the contracted revenue
#' for those unsold ProposalLineItems. There is no revenue for those sold
#' ProposalLineItems. See SALES_PIPELINE_PIPELINE_NET_REVENUE}
#'      \item{SALES_PIPELINE_PIPELINE_GROSS_REVENUE - The pipeline gross revenue of the ProposalLineItem. It is calculated by
#' multiplying probability to close by the contracted revenue including agency
#' commission for those unsold ProposalLineItems. There is no revenue for those
#' sold ProposalLineItems.}
#'      \item{SALES_PIPELINE_LOCAL_PIPELINE_GROSS_REVENUE - The pipeline gross revenue in the local currency of the ProposalLineItem. It
#' is calculated by multiplying probability to close by the contracted revenue
#' including agency commission for those unsold ProposalLineItems. There is no
#' revenue for those sold ProposalLineItems. See
#' SALES_PIPELINE_PIPELINE_GROSS_REVENUE}
#'      \item{SALES_PIPELINE_PIPELINE_AGENCY_COMMISSION - The pipeline agency commission of the ProposalLineItem. It is calculated by
#' multiplying probability to close by the contracted agency commission for
#' those unsold ProposalLineItems. There is no revenue for those sold
#' ProposalLineItems.}
#'      \item{SALES_PIPELINE_LOCAL_PIPELINE_AGENCY_COMMISSION - The pipeline agency commission in the local currency of the
#' ProposalLineItem. It is calculated by multiplying probability to close by
#' the contracted agency commission for those unsold ProposalLineItems. There
#' is no revenue for those sold ProposalLineItems. See
#' SALES_PIPELINE_PIPELINE_AGENCY_COMMISSION}
#'      \item{RECONCILIATION_DFP_VOLUME - The DFP volume of the ProposalLineItem, which is used for reconciliation.
#' Volume represents impressions for rate type CPM, clicks for CPC and days for
#' CPD.}
#'      \item{RECONCILIATION_THIRD_PARTY_VOLUME - The third party volume of the ProposalLineItem, which is used for
#' reconciliation. Volume represents impressions for rate type CPM, clicks for
#' CPC and days for CPD.}
#'      \item{RECONCILIATION_RECONCILED_VOLUME - The reconciled volume of the ProposalLineItem, which is used for
#' reconciliation. Volume represents impressions for rate type CPM, clicks for
#' CPC and days for CPD.}
#'      \item{RECONCILIATION_DISCREPANCY - The discrepancy between DFP volume and third party volume.}
#'      \item{RECONCILIATION_RECONCILED_REVENUE - The reconciled revenue of the LineItem.}
#'      \item{RECONCILIATION_IMPRESSION_DISCREPANCY - The discrepancy between DFP impressions and third party impressions.}
#'      \item{RECONCILIATION_CLICK_DISCREPANCY - The discrepancy between DFP clicks and third party clicks.}
#'      \item{RECONCILIATION_REVENUE_DISCREPANCY - The discrepancy between DFP revenue and third party revenue.}
#'      \item{BILLING_BILLABLE_NET_REVENUE - The billable net revenue of the ProposalLineItem. It is calculated from
#' reconciled volume and rate, with cap applied.}
#'      \item{BILLING_LOCAL_BILLABLE_NET_REVENUE - The billable net revenue in the local currency of the ProposalLineItem. It
#' is calculated from reconciled volume and rate, with cap applied. See
#' BILLING_BILLABLE_NET_REVENUE}
#'      \item{BILLING_BILLABLE_GROSS_REVENUE - The billable gross revenue of the ProposalLineItem. It is calculated from
#' reconciled volume and rate, with cap applied, and including agency
#' commission.}
#'      \item{BILLING_LOCAL_BILLABLE_GROSS_REVENUE - The billable gross revenue in the local currency of the ProposalLineItem. It
#' is calculated from reconciled volume and rate, with cap applied, and
#' including agency commission. See BILLING_BILLABLE_GROSS_REVENUE}
#'      \item{BILLING_BILLABLE_NET_REVENUE_BEFORE_MANUAL_ADJUSTMENT - The billable net revenue of the ProposalLineItem before manual adjustment.
#' It is calculated from reconciled volume and rate, with cap applied, before
#' manual adjustment.}
#'      \item{BILLING_LOCAL_BILLABLE_NET_REVENUE_BEFORE_MANUAL_ADJUSTMENT - The billable net revenue in local currency of the ProposalLineItem before
#' manual adjustment. It is calculated from reconciled volume and rate, with
#' cap applied, before manual adjustment. See
#' BILLING_BILLABLE_NET_REVENUE_BEFORE_MANUAL_ADJUSTMENT}
#'      \item{BILLING_BILLABLE_GROSS_REVENUE_BEFORE_MANUAL_ADJUSTMENT - The billable gross revenue of the ProposalLineItem before manual adjustment.
#' It is calculated from reconciled volume and rate, with cap applied, before
#' manual adjustment.}
#'      \item{BILLING_LOCAL_BILLABLE_GROSS_REVENUE_BEFORE_MANUAL_ADJUSTMENT - The billable net revenue in local currency of the ProposalLineItem before
#' manual adjustment. It is calculated from reconciled volume and rate, with
#' cap applied, before manual adjustment. See
#' BILLING_BILLABLE_GROSS_REVENUE_BEFORE_MANUAL_ADJUSTMENT}
#'      \item{BILLING_BILLABLE_VAT - The value added tax on billable net revenue of the ProposalLineItem or
#' Proposal.}
#'      \item{BILLING_LOCAL_BILLABLE_VAT - The value added tax on billable net revenue in the local currency of the
#' ProposalLineItem or Proposal. See BILLING_BILLABLE_VAT}
#'      \item{BILLING_BILLABLE_AGENCY_COMMISSION - The billable agency commission of the ProposalLineItem or Proposal.}
#'      \item{BILLING_LOCAL_BILLABLE_AGENCY_COMMISSION - The billable agency commission in the local currency of the ProposalLineItem
#' or Proposal. See BILLING_BILLABLE_AGENCY_COMMISSION}
#'      \item{BILLING_CAP_QUANTITY - The cap quantity of the ProposalLineItem for each cycle. Quantity represents
#' impressions for rate type CPM, clicks for CPC and days for CPD.}
#'      \item{BILLING_BILLABLE_VOLUME - The billable volume of the ProposalLineItem for each cycle. Billable volumes
#' are calculated by applying cap quantity to reconciled volumes. Volume
#' represents impressions for rate type CPM, clicks for CPC and days for CPD.}
#'      \item{BILLING_DELIVERY_ROLLOVER_FROM_PREVIOUS - The delivery rollover volume of the ProposalLineItem from previous cycle.
#' Volume represents impressions for rate type CPM, clicks for CPC and days for
#' CPD.}
#'      \item{BILLING_REALIZED_CPM - The CPM calcuated by BILLING_BILLABLE_NET_REVENUE and AD_SERVER_IMPRESSIONS.}
#'      \item{BILLING_REALIZED_RATE - The rate calcuated by BILLING_BILLABLE_NET_REVENUE and DFP volume.}
#'      \item{DISCOUNTS_BREAKDOWN_CONTRACTED_NET_OVERALL_DISCOUNT - The contracted net overall discount of the ProposalLineItem.}
#'      \item{DISCOUNTS_BREAKDOWN_BILLABLE_NET_OVERALL_DISCOUNT - The billable net overall discount of the ProposalLineItem.}
#'      \item{DISCOUNTS_BREAKDOWN_BILLABLE_NET_EXCLUDED_PREMIUMS - The billable net excluded premiums of the ProposalLineItem.}
#'      \item{DISCOUNTS_BREAKDOWN_BILLABLE_NET_ADVERTISER_DISCOUNT - The billable net advertiser discount of the ProposalLineItem.}
#'      \item{DISCOUNTS_BREAKDOWN_BILLABLE_NET_PRODUCT_ADJUSTMENT - The billable net product adjustment of the ProposalLineItem.}
#'      \item{DISCOUNTS_BREAKDOWN_BILLABLE_NET_PROPOSAL_DISCOUNT - The billable net proposal discount of the ProposalLineItem.}
#'      \item{DISCOUNTS_BREAKDOWN_CONTRACTED_NET_EXCLUDED_PREMIUMS - The contracted net excluded premiums of the ProposalLineItem.}
#'      \item{DISCOUNTS_BREAKDOWN_CONTRACTED_NET_ADVERTISER_DISCOUNT - The contracted net advertiser discount of the ProposalLineItem.}
#'      \item{DISCOUNTS_BREAKDOWN_CONTRACTED_NET_PRODUCT_ADJUSTMENT - The contracted net product adjustment of the ProposalLineItem.}
#'      \item{DISCOUNTS_BREAKDOWN_CONTRACTED_NET_PROPOSAL_DISCOUNT - The contracted net proposal discount of the ProposalLineItem.}
#'      \item{DISCOUNTS_BREAKDOWN_CONTRACTED_NET_NON_BILLABLE - The contracted non-billable (net) of the ProposalLineItem. The non-billable
#' means revenue that marked as make good, added value or barter.}
#'      \item{SALESPERSON_PERFORMANCE_SHARED_PIPELINE_NET_REVENUE - The shared pipeline net revenue of the ProposalLineItem. It is calculated by
#' multiplying salesperson credit by the pipeline net revenue.}
#'      \item{SALESPERSON_PERFORMANCE_SHARED_PIPELINE_GROSS_REVENUE - The shared pipeline gross revenue of the ProposalLineItem. It is calculated
#' by multiplying salesperson credit by the pipeline gross revenue.}
#'      \item{SALESPERSON_PERFORMANCE_SHARED_UNIFIED_NET_REVENUE - The shared unified net revenue of the ProposalLineItem. It is calculated by
#' multiplying salesperson credit by the unified net revenue.}
#'      \item{SALESPERSON_PERFORMANCE_SHARED_UNIFIED_GROSS_REVENUE - The shared unified gross revenue of the ProposalLineItem. It is calculated
#' by multiplying salesperson credit by the unified gross revenue.}
#'      \item{INVOICED_IMPRESSIONS - The number of invoiced impressions.}
#'      \item{INVOICED_UNFILLED_IMPRESSIONS - The number of invoiced unfilled impressions.}
#'      \item{NIELSEN_IMPRESSIONS - The total number of impressions tracked for Nielsen Digital Ad Ratings
#' measurement.}
#'      \item{NIELSEN_POPULATION_BASE - The population in the demographic.}
#'      \item{NIELSEN_UNIQUE_AUDIENCE - The total number of different people within the selected demographic who
#' were reached.}
#'      \item{NIELSEN_PERCENT_AUDIENCE_REACH - The unique audience reached as a percentage of the population base.}
#'      \item{NIELSEN_AVERAGE_FREQUENCY - The average number of times that a person within the target audience sees an
#' advertisement.}
#'      \item{NIELSEN_GROSS_RATING_POINTS - The unit of audience volume, which is based on the percentage of the reached
#' target audience population multiplied by the average frequency.}
#'      \item{NIELSEN_PERCENT_IMPRESSIONS_SHARE - The share of impressions that reached the target demographic.}
#'      \item{NIELSEN_PERCENT_POPULATION_SHARE - The share of the total population represented by the population base.}
#'      \item{NIELSEN_PERCENT_AUDIENCE_SHARE - The share of the unique audience in the demographic.}
#'      \item{NIELSEN_AUDIENCE_INDEX - The relative unique audience in the demographic compared with its share of
#' the overall population.}
#'      \item{NIELSEN_IMPRESSIONS_INDEX - The relative impressions per person in the demographic compared with the
#' impressions per person for the overall population.}
#'      \item{PARTNER_MANAGEMENT_HOST_IMPRESSIONS - The host impressions in the partner management.}
#'      \item{PARTNER_MANAGEMENT_HOST_CLICKS - The host clicks in the partner management.}
#'      \item{PARTNER_MANAGEMENT_HOST_CTR - The host CTR in the partner management.}
#'      \item{PARTNER_MANAGEMENT_HOST_REVENUE - The host revenue in the partner management.}
#'      \item{PARTNER_MANAGEMENT_HOST_ECPM - The host eCPM in the partner management.}
#'      \item{PARTNER_MANAGEMENT_PARTNER_REVENUE - The partner revenue in the partner management.}
#'      \item{PARTNER_MANAGEMENT_PARTNER_ECPM - The partner eCPM in the partner management.}
#'      \item{PARTNER_MANAGEMENT_UNFILLED_IMPRESSIONS - The unfilled impressions in the partner management.}
#'    }
#'   }
#'  \item{dimensionAttributes}{a DimensionAttribute - The list of break-down attributes being requested in this report. Some
#' DimensionAttribute values can only be used with certain Dimension values
#' that must be included in the dimensions attribute. The generated report will
#' contain the attributes in the same order as requested. This can take one of the following values: 
#'    \itemize{
#'      \item{LINE_ITEM_LABELS - Represents LineItem effectiveAppliedLabels as a comma separated list of
#' Label name for Dimension LINE_ITEM_NAME.}
#'      \item{LINE_ITEM_LABEL_IDS - Represents LineItem effectiveAppliedLabels as a comma separated list of
#' Label id for Dimension LINE_ITEM_NAME.}
#'      \item{LINE_ITEM_OPTIMIZABLE - Generated as true for Dimension LINE_ITEM_NAME which is eligible for
#' optimization, false otherwise. Can be used for filtering.}
#'      \item{LINE_ITEM_DELIVERY_PACING - Represents LineItem deliveryRateType for Dimension LINE_ITEM_NAME.}
#'      \item{LINE_ITEM_FREQUENCY_CAP - Represents LineItem frequencyCaps as a comma separated list of "FrequencyCap
#' maxImpressions impressions per/every FrequencyCap numTimeUnits FrequencyCap
#' timeUnit" (e.g. "10 impressions every day,500 impressions per lifetime") for
#' Dimension LINE_ITEM_NAME.}
#'      \item{LINE_ITEM_RECONCILIATION_STATUS - Represents the monthly reconciliation status of the line item for Dimension
#' LINE_ITEM_NAME and Dimension MONTH_YEAR.}
#'      \item{LINE_ITEM_LAST_RECONCILIATION_DATE_TIME - Represents the monthly last reconciliation date time of the line item for
#' Dimension LINE_ITEM_NAME and Dimension MONTH_YEAR.}
#'      \item{ADVERTISER_EXTERNAL_ID - Represents Company externalId for Dimension ADVERTISER_NAME.}
#'      \item{ADVERTISER_TYPE - Represents Company type for Dimension ADVERTISER_NAME. Can be used for
#' filtering.}
#'      \item{ADVERTISER_CREDIT_STATUS - Represents Company creditStatus for Dimension ADVERTISER_NAME. Can be used
#' for filtering.}
#'      \item{ADVERTISER_PRIMARY_CONTACT - Represents name and email address in the form of name(email) of primary
#' contact for Dimension ADVERTISER_NAME.}
#'      \item{ORDER_START_DATE_TIME - Represents Order startDateTime for Dimension ORDER_NAME. Can be used for
#' filtering.}
#'      \item{ORDER_END_DATE_TIME - Represents Order endDateTime for Dimension ORDER_NAME. Can be used for
#' filtering.}
#'      \item{ORDER_EXTERNAL_ID - Represents Order externalOrderId for Dimension ORDER_NAME.}
#'      \item{ORDER_PO_NUMBER - Represents Order poNumber for Dimension ORDER_NAME. Can be used for
#' filtering.}
#'      \item{ORDER_IS_PROGRAMMATIC - Represents Order orderIsProgrammatic for Dimension ORDER_NAME. Can be used
#' for filtering.}
#'      \item{ORDER_AGENCY - Represents the name of Order agencyId for Dimension ORDER_NAME.}
#'      \item{ORDER_AGENCY_ID - Represents Order agencyId for Dimension ORDER_NAME. Can be used for
#' filtering.}
#'      \item{ORDER_LABELS - Represents Order effectiveAppliedLabels as a comma separated list of Label
#' name for Dimension ORDER_NAME.}
#'      \item{ORDER_LABEL_IDS - Represents Order effectiveAppliedLabels as a comma separated list of Label
#' id for Dimension ORDER_NAME.}
#'      \item{ORDER_TRAFFICKER - The name and email address in the form of name(email) of the trafficker for
#' Dimension ORDER_NAME}
#'      \item{ORDER_TRAFFICKER_ID - Represents Order traffickerId for Dimension ORDER_NAME. Can be used for
#' filtering.}
#'      \item{ORDER_SECONDARY_TRAFFICKERS - The names and email addresses as a comma separated list of name(email) of
#' the Order secondaryTraffickerIds for Dimension ORDER_NAME.}
#'      \item{ORDER_SALESPERSON - The name and email address in the form of name(email) of the Order
#' salespersonId for Dimension ORDER_NAME.}
#'      \item{ORDER_SECONDARY_SALESPEOPLE - The names and email addresses as a comma separated list of name(email) of
#' the Order secondarySalespersonIds for Dimension ORDER_NAME.}
#'      \item{ORDER_LIFETIME_IMPRESSIONS - The total number of impressions delivered over the lifetime of an Dimension
#' ORDER_NAME.}
#'      \item{ORDER_LIFETIME_CLICKS - The total number of clicks delivered over the lifetime of an Dimension
#' ORDER_NAME.}
#'      \item{ORDER_BOOKED_CPM - The cost of booking all the CPM ads for Dimension ORDER_NAME.}
#'      \item{ORDER_BOOKED_CPC - The cost of booking all the CPC ads for Dimension ORDER_NAME.}
#'      \item{LINE_ITEM_START_DATE_TIME - Represents LineItem startDateTime for Dimension LINE_ITEM_NAME. Can be used
#' for filtering.}
#'      \item{LINE_ITEM_END_DATE_TIME - Represents LineItem endDateTime for Dimension LINE_ITEM_NAME. Can be used
#' for filtering.}
#'      \item{LINE_ITEM_EXTERNAL_ID - Represents LineItem externalId for Dimension LINE_ITEM_NAME. Can be used for
#' filtering.}
#'      \item{LINE_ITEM_COST_TYPE - Represents LineItem costType for Dimension LINE_ITEM_NAME. Can be used for
#' filtering.}
#'      \item{LINE_ITEM_COST_PER_UNIT - Represents LineItem costPerUnit for Dimension LINE_ITEM_NAME.}
#'      \item{LINE_ITEM_CURRENCY_CODE - Represents the 3 letter currency code for Dimension LINE_ITEM_NAME.}
#'      \item{LINE_ITEM_GOAL_QUANTITY - The total number of impressions, clicks or days that is reserved for
#' Dimension LINE_ITEM_NAME.}
#'      \item{LINE_ITEM_SPONSORSHIP_GOAL_PERCENTAGE - The ratio between the goal quantity for Dimension LINE_ITEM_NAME of
#' LineItemType SPONSORSHIP and the LINE_ITEM_GOAL_QUANTITY. Represented as a
#' number between 0..100.}
#'      \item{LINE_ITEM_LIFETIME_IMPRESSIONS - The total number of impressions delivered over the lifetime of a Dimension
#' LINE_ITEM_NAME.}
#'      \item{LINE_ITEM_LIFETIME_CLICKS - The total number of clicks delivered over the lifetime of a Dimension
#' LINE_ITEM_NAME.}
#'      \item{LINE_ITEM_PRIORITY - Represents LineItem priority for Dimension LINE_ITEM_NAME as a value between
#' 1 and 16. Can be used for filtering.}
#'      \item{CREATIVE_OR_CREATIVE_SET - Indicates if a creative is a regular creative or creative set. Values will
#' be 'Creative' or 'Creative set'}
#'      \item{MASTER_COMPANION_TYPE - The type of creative in a creative set - master or companion.}
#'      \item{LINE_ITEM_CONTRACTED_QUANTITY - Represents the LineItem contractedUnitsBought quantity for Dimension
#' LINE_ITEM_NAME.}
#'      \item{LINE_ITEM_DISCOUNT - Represents the LineItem discount for Dimension LINE_ITEM_NAME. The number is
#' either a percentage or an absolute value depending on LineItem discountType.}
#'      \item{LINE_ITEM_NON_CPD_BOOKED_REVENUE - The cost of booking for a non-CPD Dimension LINE_ITEM_NAME.}
#'      \item{ADVERTISER_LABELS - Represents Company appliedLabels as a comma separated list of Label name for
#' Dimension ADVERTISER_NAME.}
#'      \item{ADVERTISER_LABEL_IDS - Represents Company appliedLabels as a comma separated list of Label id for
#' Dimension ADVERTISER_NAME.}
#'      \item{CREATIVE_CLICK_THROUGH_URL - Represents the click-through URL for Dimension CREATIVE_NAME.}
#'      \item{CREATIVE_SSL_SCAN_RESULT - Represents whether a creative is SSL-compliant.}
#'      \item{CREATIVE_SSL_COMPLIANCE_OVERRIDE - Represents whether a creative's SSL status was overridden.}
#'      \item{LINE_ITEM_CREATIVE_START_DATE - Represents a LineItemCreativeAssociation startDateTime for a Dimension
#' LINE_ITEM_NAME and a Dimension CREATIVE_NAME. Includes the date without the
#' time.}
#'      \item{LINE_ITEM_CREATIVE_END_DATE - Represents a LineItemCreativeAssociation endDateTime for a Dimension
#' LINE_ITEM_NAME and a Dimension CREATIVE_NAME. Includes the date without the
#' time.}
#'      \item{PROPOSAL_START_DATE_TIME - Represents Proposal startDateTime for Dimension PROPOSAL_NAME.}
#'      \item{PROPOSAL_END_DATE_TIME - Represents Proposal endDateTime for Dimension PROPOSAL_NAME.}
#'      \item{PROPOSAL_CREATION_DATE_TIME - Represents Proposal creationDateTime for Dimension PROPOSAL_NAME. Can be
#' used for filtering.}
#'      \item{PROPOSAL_SOLD_DATE_TIME - Represents the sold time for Dimension PROPOSAL_NAME.}
#'      \item{PROPOSAL_IS_SOLD - Represents Proposal isSold for Dimension PROPOSAL_NAME. Can be used for
#' filtering.}
#'      \item{PROPOSAL_PROBABILITY_TO_CLOSE - Represents Proposal probabilityToClose for Dimension PROPOSAL_NAME.}
#'      \item{PROPOSAL_STATUS - Represents Proposal status for Dimension PROPOSAL_NAME, including those
#' post-sold status, e.g. DRAFT(SOLD). Can be used for filtering.}
#'      \item{PROPOSAL_ARCHIVAL_STATUS - Represents Proposal isArchived for Dimension PROPOSAL_NAME. Can be used for
#' filtering.}
#'      \item{PROPOSAL_CURRENCY - Represents Proposal currency for Dimension PROPOSAL_NAME.}
#'      \item{PROPOSAL_EXCHANGE_RATE - Represents Proposal exchangeRate for Dimension PROPOSAL_NAME.}
#'      \item{PROPOSAL_AGENCY_COMMISSION_RATE - Represents Proposal agencyCommission for Dimension PROPOSAL_NAME.}
#'      \item{PROPOSAL_VAT_RATE - Represents Proposal valueAddedTax for Dimension PROPOSAL_NAME.}
#'      \item{PROPOSAL_DISCOUNT - Represents Proposal proposalDiscount for Dimension PROPOSAL_NAME.}
#'      \item{PROPOSAL_ADVERTISER_DISCOUNT - Represents Proposal advertiserDiscount for Dimension PROPOSAL_NAME.}
#'      \item{PROPOSAL_ADVERTISER - Represents the advertiser name of Dimension PROPOSAL_NAME.}
#'      \item{PROPOSAL_ADVERTISER_ID - Represents the advertiser id of Dimension PROPOSAL_NAME.}
#'      \item{PROPOSAL_AGENCIES - Represents the agency names as a comma separated string for Dimension
#' PROPOSAL_NAME.}
#'      \item{PROPOSAL_AGENCY_IDS - Represents the agency ids as a comma separated string for Dimension
#' PROPOSAL_NAME.}
#'      \item{PROPOSAL_PO_NUMBER - Represents Proposal poNumber for Dimension PROPOSAL_NAME.}
#'      \item{PROPOSAL_PRIMARY_SALESPERSON - Represents name and email address in the form of name(email) of primary
#' salesperson for Dimension PROPOSAL_NAME.}
#'      \item{PROPOSAL_SECONDARY_SALESPEOPLE - Represents name and email addresses in the form of name(email) of secondary
#' salespeople as a comma separated string for Dimension PROPOSAL_NAME.}
#'      \item{PROPOSAL_CREATOR - Represents name and email address in the form of name(email) of creator for
#' Dimension PROPOSAL_NAME.}
#'      \item{PROPOSAL_SALES_PLANNERS - Represents name and email addresses in the form of name(email) of Proposal
#' salesPlannerIds as a comma separated list string for Dimension
#' PROPOSAL_NAME.}
#'      \item{PROPOSAL_PRICING_MODEL - Represents Proposal pricingModel for Dimension PROPOSAL_NAME.}
#'      \item{PROPOSAL_BILLING_SOURCE - Represents Proposal billingSource for Dimension PROPOSAL_NAME.}
#'      \item{PROPOSAL_BILLING_CAP - Represents Proposal billingCap for Dimension PROPOSAL_NAME.}
#'      \item{PROPOSAL_BILLING_SCHEDULE - Represents Proposal billingSchedule for Dimension PROPOSAL_NAME.}
#'      \item{PROPOSAL_APPLIED_TEAM_NAMES - Represents Proposal appliedTeamIds as a comma separated list of Team names
#' for Dimension PROPOSAL_NAME.}
#'      \item{PROPOSAL_APPROVAL_STAGE - Represents the approval stage for Dimension PROPOSAL_NAME.}
#'      \item{PROPOSAL_INVENTORY_RELEASE_DATE_TIME - Represents the inventory release date time for Dimension PROPOSAL_NAME.}
#'      \item{PROPOSAL_LOCAL_BUDGET - Represents Proposal budget in local currency for Dimension PROPOSAL_NAME.}
#'      \item{PROPOSAL_LOCAL_REMAINING_BUDGET - Represents the remaining budget in local currency for Dimension
#' PROPOSAL_NAME.}
#'      \item{PROPOSAL_LINE_ITEM_START_DATE_TIME - Represents ProposalLineItem startDateTime for Dimension
#' PROPOSAL_LINE_ITEM_NAME.}
#'      \item{PROPOSAL_LINE_ITEM_END_DATE_TIME - Represents ProposalLineItem endDateTime for Dimension
#' PROPOSAL_LINE_ITEM_NAME.}
#'      \item{PROPOSAL_LINE_ITEM_RATE_TYPE - Represents ProposalLineItem rateType for Dimension PROPOSAL_LINE_ITEM_NAME.
#' Can be used for filtering.}
#'      \item{PROPOSAL_LINE_ITEM_RESERVATION_STATUS - Represents the reservation status of Dimension PROPOSAL_LINE_ITEM_NAME. Can
#' be used for filtering.}
#'      \item{PROPOSAL_LINE_ITEM_COST_PER_UNIT - Represents ProposalLineItem costPerUnit for Dimension
#' PROPOSAL_LINE_ITEM_NAME.}
#'      \item{PROPOSAL_LINE_ITEM_LOCAL_COST_PER_UNIT - Represents ProposalLineItem costPerUnit in local currency for Dimension
#' PROPOSAL_LINE_ITEM_NAME. See PROPOSAL_LINE_ITEM_COST_PER_UNIT}
#'      \item{PROPOSAL_LINE_ITEM_COST_PER_UNIT_GROSS - Represents gross cost per unit for Dimension PROPOSAL_LINE_ITEM_NAME.}
#'      \item{PROPOSAL_LINE_ITEM_LOCAL_COST_PER_UNIT_GROSS - Represents gross cost per unit in local currency for Dimension
#' PROPOSAL_LINE_ITEM_NAME. See PROPOSAL_LINE_ITEM_COST_PER_UNIT_GROSS}
#'      \item{PROPOSAL_LINE_ITEM_TYPE_AND_PRIORITY - Represents line item type (if applicable) and line item priority (if
#' applicable) for Dimension PROPOSAL_LINE_ITEM_NAME.}
#'      \item{PROPOSAL_LINE_ITEM_SIZE - Represents the size of ProposalLineItem creativePlaceholders for Dimension
#' PROPOSAL_LINE_ITEM_NAME.}
#'      \item{PROPOSAL_LINE_ITEM_ARCHIVAL_STATUS - Represents ProposalLineItem isArchived for Dimension
#' PROPOSAL_LINE_ITEM_NAME. Can be used for filtering.}
#'      \item{PROPOSAL_LINE_ITEM_PRODUCT_ADJUSTMENT - Represents the product adjustment of Dimension PROPOSAL_LINE_ITEM_NAME.}
#'      \item{PROPOSAL_LINE_ITEM_BUFFER - Represents ProposalLineItem unitsBoughtBuffer for Dimension
#' PROPOSAL_LINE_ITEM_NAME.}
#'      \item{PROPOSAL_LINE_ITEM_TARGET_RATE_NET - Represents the target rate (net) of Dimension PROPOSAL_LINE_ITEM_NAME.}
#'      \item{PROPOSAL_LINE_ITEM_BILLING_SOURCE - Represents ProposalLineItem billingSource for Dimension
#' PROPOSAL_LINE_ITEM_NAME.}
#'      \item{PROPOSAL_LINE_ITEM_BILLING_CAP - Represents ProposalLineItem billingCap for Dimension
#' PROPOSAL_LINE_ITEM_NAME.}
#'      \item{PROPOSAL_LINE_ITEM_BILLING_SCHEDULE - Represents ProposalLineItem billingSchedule for Dimension
#' PROPOSAL_LINE_ITEM_NAME.}
#'      \item{PROPOSAL_LINE_ITEM_GOAL_PERCENTAGE - Represents ProposalLineItem unitsBought for Dimension
#' PROPOSAL_LINE_ITEM_NAME The attribute is available only if ProposalLineItem
#' lineItemType is of type LineItemType SPONSORSHIP, LineItemType HOUSE,
#' LineItemType NETWORK, or LineItemType BUMPER.}
#'      \item{PROPOSAL_LINE_ITEM_COST_ADJUSTMENT - Represents ProposalLineItem costAdjustment for Dimension
#' PROPOSAL_LINE_ITEM_NAME.}
#'      \item{PROPOSAL_LINE_ITEM_COMMENTS - Represents the ProposalLineItem notes comments for Dimension
#' PROPOSAL_LINE_ITEM_NAME.}
#'      \item{PROPOSAL_LINE_ITEM_RECONCILIATION_STATUS - Represents the monthly reconciliation status of the proposal line item for
#' Dimension PROPOSAL_LINE_ITEM_NAME and Dimension MONTH_YEAR.}
#'      \item{PROPOSAL_LINE_ITEM_LAST_RECONCILIATION_DATE_TIME - Represents the monthly last reconciliation date time of the proposal line
#' item for Dimension PROPOSAL_LINE_ITEM_NAME and Dimension MONTH_YEAR.}
#'      \item{PRODUCT_PACKAGE_ITEM_ARCHIVAL_STATUS - Represents the corresponding product package item's archival status of
#' Dimension PROPOSAL_LINE_ITEM_NAME. Not available as an attribute to report
#' on, but exists as an attribute in order to filter on it using PQL.}
#'      \item{PRODUCT_TEMPLATE_RATE_TYPE - Represents ProductTemplate rateType for Dimension PRODUCT_TEMPLATE_NAME.}
#'      \item{PRODUCT_TEMPLATE_STATUS - Represents ProductTemplate status for Dimension PRODUCT_TEMPLATE_NAME.}
#'      \item{PRODUCT_TEMPLATE_TYPE_AND_PRIORITY - Represents the line item type (if applicable) and line item priority (if
#' applicable) of Dimension PRODUCT_TEMPLATE_NAME.}
#'      \item{PRODUCT_TEMPLATE_PRODUCT_TYPE - Represents ProductTemplate productType for Dimension PRODUCT_TEMPLATE_NAME.}
#'      \item{PRODUCT_TEMPLATE_DESCRIPTION - Represents ProductTemplate description for Dimension PRODUCT_TEMPLATE_NAME.}
#'      \item{PRODUCT_PRODUCT_TEMPLATE_NAME - Represents the product template's name of Dimension PRODUCT_NAME.}
#'      \item{PRODUCT_RATE_TYPE - Represents Product rateType for Dimension PRODUCT_NAME.}
#'      \item{PRODUCT_STATUS - Represents Product status for Dimension PRODUCT_NAME.}
#'      \item{PRODUCT_TYPE_AND_PRIORITY - Represents the line item type (if applicable) and line item priority (if
#' applicable) of Dimension PRODUCT_NAME.}
#'      \item{PRODUCT_PRODUCT_TYPE - Represents the product type of Dimension PRODUCT_NAME.}
#'      \item{PRODUCT_NOTES - Represents Product notes for Dimension PRODUCT_NAME.}
#'      \item{PROPOSAL_AGENCY_TYPE - Represents the Company type of Dimension PROPOSAL_AGENCY_NAME.}
#'      \item{PROPOSAL_AGENCY_CREDIT_STATUS - Represents the Company creditStatus of Dimension PROPOSAL_AGENCY_NAME.}
#'      \item{PROPOSAL_AGENCY_EXTERNAL_ID - Represents Company externalId for Dimension PROPOSAL_AGENCY_NAME.}
#'      \item{PROPOSAL_AGENCY_COMMENT - Represents Company comment for Dimension PROPOSAL_AGENCY_NAME.}
#'      \item{SALESPEOPLE_PROPOSAL_CONTRIBUTION - Represents the Dimension ALL_SALESPEOPLE_NAME's contribution to a Dimension
#' PROPOSAL_NAME. This is different from SALESPERSON_PROPOSAL_CONTRIBUTION as
#' this will include both primary and secondary salespeople.}
#'      \item{SALESPERSON_PROPOSAL_CONTRIBUTION - Represents the Dimension SALESPERSON_NAME's contribution to a Dimension
#' PROPOSAL_NAME. See SALESPERSON_PROPOSAL_CONTRIBUTION.}
#'      \item{PRODUCT_PACKAGE_NOTES - Represents ProductPackage notes for Dimension PRODUCT_PACKAGE_NAME.}
#'      \item{PRODUCT_PACKAGE_ITEMS - Represents the products as a comma separated list of name for Dimension
#' PRODUCT_PACKAGE_NAME.}
#'      \item{PRODUCT_PACKAGE_STATUS - Represents ProductPackage status for Dimension PRODUCT_PACKAGE_NAME.}
#'      \item{PACKAGE_COMMENTS - Represents Package comments for Dimension PACKAGE_NAME.}
#'      \item{PACKAGE_START_DATE_TIME - Represents Package startDateTime for \{@@Dimension PACKAGE_NAME\}.}
#'      \item{PACKAGE_END_DATE_TIME - Represents Package endDateTime for \{@@Dimension PACKAGE_NAME\}.}
#'      \item{CONTENT_CMS_NAME - Represents the CmsContent displayName within the first element of Content
#' cmsContent for Dimension CONTENT_NAME.}
#'      \item{CONTENT_CMS_VIDEO_ID - Represents the CmsContent cmsContentId within the first element of Content
#' cmsContent for Dimension CONTENT_NAME.}
#'      \item{AD_UNIT_CODE - Represents AdUnit adUnitCode for Dimension AD_UNIT_NAME.}
#'    }
#'   }
#'  \item{customFieldIds}{a integer - The list of CustomField id being requested in this report. To add a
#' CustomField to the report, you must include its corresponding Dimension,
#' determined by the CustomField entityType, as a dimensions dimension.}
#'  \item{contentMetadataKeyHierarchyCustomTargetingKeyIds}{a integer - The list of content metadata hierarchy custom targeting key
#' CustomTargetingKey id IDs being requested in this report. Each of these IDs
#' must have been defined in the ContentMetadataKeyHierarchy content metadata
#' key hierarchy. This will include dimensions in the form of
#' CONTENT_HIERARCHY_CUSTOM_TARGETING_KEY[id]_ID and
#' CONTENT_HIERARCHY_CUSTOM_TARGETING_KEY[id]_VALUE where where ID is the ID of
#' the CustomTargetingValue id custom targeting value and VALUE is the
#' CustomTargetingValue name name.  To add CustomTargetingKey id IDs, you must
#' include Dimension CONTENT_HIERARCHY in dimensions, and specify a non-empty
#' list of custom targeting key IDs. The order of content hierarchy columns in
#' the report correspond to the place of Dimension CONTENT_HIERARCHY in
#' dimensions. For example, if dimensions contains the following dimensions in
#' the order: Dimension ADVERTISER_NAME, Dimension CONTENT_HIERARCHY and
#' Dimension COUNTRY_NAME, and contentMetadataKeyHierarchyCustomTargetingKeyIds
#' contains the following IDs in the order: 1001 and 1002. The order of
#' dimensions in the report will be: Dimension.ADVERTISER_NAME,
#' Dimension.CONTENT_HIERARCHY_CUSTOM_TARGETING_KEY[1001]_VALUE,
#' Dimension.CONTENT_HIERARCHY_CUSTOM_TARGETING_KEY[1002]_VALUE,
#' Dimension.COUNTRY_NAME, Dimension.ADVERTISER_ID,
#' Dimension.CONTENT_HIERARCHY_CUSTOM_TARGETING_KEY[1001]_ID,
#' Dimension.CONTENT_HIERARCHY_CUSTOM_TARGETING_KEY[1002]_ID,
#' Dimension.COUNTRY_CRITERIA_ID}
#'  \item{startDate}{a Date - The start date from which the reporting information is gathered. The
#' ReportQuery dateRangeType field must be set to DateRangeType CUSTOM_DATE in
#' order to use this.}
#'  \item{endDate}{a Date - The end date upto which the reporting information is gathered. The
#' ReportQuery dateRangeType field must be set to DateRangeType CUSTOM_DATE in
#' order to use this.}
#'  \item{dateRangeType}{a DateRangeType - The period of time for which the reporting data is being generated. In order
#' to define custom time periods, set this to DateRangeType CUSTOM_DATE. If set
#' to DateRangeType CUSTOM_DATE, then ReportQuery startDate and ReportQuery
#' endDate will be used. This can take one of the following values: 
#'    \itemize{
#'      \item{TODAY - The current day.}
#'      \item{YESTERDAY - The previous day.}
#'      \item{LAST_WEEK - The last week, from monday to sunday.}
#'      \item{LAST_MONTH - The previous month.}
#'      \item{REACH_LIFETIME - The last 5 months and the current month to date. This date range is only
#' usable for the columns Column REACH_FREQUENCY, Column REACH_AVERAGE_REVENUE
#' and Column REACH.}
#'      \item{CUSTOM_DATE - Specifying this value will enable the user to specify ReportQuery startDate
#' and ReportQuery endDate.}
#'      \item{NEXT_DAY - The next day.}
#'      \item{NEXT_90_DAYS - The next ninety days.}
#'      \item{NEXT_WEEK - The next week, from monday to sunday.}
#'      \item{NEXT_MONTH - The next month.}
#'      \item{CURRENT_AND_NEXT_MONTH - Beginning of the next day until the end of the next month.}
#'      \item{NEXT_QUARTER - The next quarter.}
#'      \item{NEXT_3_MONTHS - The next three months.}
#'      \item{NEXT_12_MONTHS - The next twelve months.}
#'    }
#'   }
#'  \item{statement}{a Statement - Specifies a filter to use for reporting on data. This filter will be used in
#' conjunction (joined with an AND statement) with the date range selected
#' through dateRangeType, startDate, and endDate and the dimension filters
#' selected through dimensionFilters. The syntax currently allowed for
#' Statement query is<br> [WHERE <condition> \{AND <condition> ...\}]<br>
#' <condition><br> &nbsp;&nbsp;&nbsp;&nbsp; := <property> = <value><br>
#' <condition><br> &nbsp;&nbsp;&nbsp;&nbsp; := <property> = <bind variable><br>
#' <condition> := <property> IN <list><br> <bind variable> := :<name><br> where
#' property is the enumeration name of a Dimension that can be filtered.  For
#' example, the statement "WHERE LINE_ITEM_ID IN (34344, 23235)" can be used to
#' generate a report for a specific set of line items Filtering on IDs is
#' highly recommended over filtering on names, especially for geographical
#' entities. When filtering on names, matching is case sensitive.}
#'  \item{timeZone}{a character - The time zone in the form of America/New_York which the startDate and
#' endDate are in, and the reporting information is gathered in. Defaults to
#' Network timeZone if it is null. All supported time zones can be found in the
#' Time_Zone PQL table with SupportedInReports being true. Only time zones that
#' are full hour offsets from Network timeZone are supported.}
#' }
#' 
#' \strong{RequiredError}
#' 
#' Errors due to missing required field.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.RequiredError}{Google Documentation for RequiredError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a RequiredError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{REQUIRED - Missing required field.}
#'    }
#'   }
#' }
#' 
#' \strong{ServerError}
#' 
#' Errors related to the server.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.ServerError}{Google Documentation for ServerError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a ServerError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{SERVER_ERROR - Indicates that an unexpected error occured.}
#'      \item{SERVER_BUSY - Indicates that the server is currently experiencing a high load. Please wait
#' and try your request again.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{SetValue}
#' 
#' Contains a set of Value Values. May not contain duplicates.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.SetValue}{Google Documentation for SetValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{values}{a Value - The values. They must all be the same type of Value and not contain
#' duplicates.}
#' }
#' 
#' \strong{SoapRequestHeader}
#' 
#' Represents the SOAP request header used by API requests.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.SoapRequestHeader}{Google Documentation for SoapRequestHeader}
#' \describe{
#'  \item{networkCode}{a character - The network code to use in the context of a request.}
#'  \item{applicationName}{a character - The name of client library application.}
#' }
#' 
#' \strong{SoapResponseHeader}
#' 
#' Represents the SOAP request header used by API responses.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.SoapResponseHeader}{Google Documentation for SoapResponseHeader}
#' \describe{
#'  \item{requestId}{a character}
#'  \item{responseTime}{a integer}
#' }
#' 
#' \strong{Statement}
#' 
#' Holds the query in PQL syntax. See link for how to form PQL.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.Statement}{Google Documentation for Statement}
#' \describe{
#'  \item{query}{a character - Holds the query in PQL syntax. See link for how to form PQL.}
#'  \item{values}{a String_ValueMapEntry - Holds keys and values for bind variables and their values. The key is the
#' name of the bind variable. The value is the literal value of the variable.
#' In the example "WHERE status = :bindStatus ORDER BY id LIMIT 30", the bind
#' variable, represented by :bindStatus is named bindStatus, which would also
#' be the parameter map key. The bind variable's value would be represented by
#' a parameter map value of type TextValue. The final result, for example,
#' would be an entry of "bindStatus" => StringParam("ACTIVE").}
#' }
#' 
#' \strong{StatementError}
#' 
#' An error that occurs while parsing Statement objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.StatementError}{Google Documentation for StatementError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a StatementError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{VARIABLE_NOT_BOUND_TO_VALUE - A bind variable has not been bound to a value.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{String_ValueMapEntry}
#' 
#' This represents an entry in a map with a key of type String and value of
#' type Value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.String_ValueMapEntry}{Google Documentation for String_ValueMapEntry}
#' \describe{
#'  \item{key}{a character}
#'  \item{value}{a Value}
#' }
#' 
#' \strong{StringLengthError}
#' 
#' Errors for Strings which do not meet given length constraints.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.StringLengthError}{Google Documentation for StringLengthError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a StringLengthError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{TOO_LONG}
#'      \item{TOO_SHORT}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{TextValue}
#' 
#' Contains a string value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.TextValue}{Google Documentation for TextValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a character - The string value.}
#' }
#' 
#' \strong{Value}
#' 
#' Value represents a value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService.Value}{Google Documentation for Value}
#' \describe{
#' }
#' 
#' 
#' 
#' @usage dfp_ReportService_object_factory(obj_type, obj_data)
#' 
#' @param obj_type a string from one of the object types described above
#' @param obj_data a \code{list} of \code{lists} or a \code{data.frame} with the required components to create
#' the obj_type specified. All input names must match the expected attributes for the object.
#' If submitting a list of attributes to create 1 object make sure to nest it inside top-level list, so that
#' it is a list of length 1 with 1 list of attributes to create the object.
#' @return a string of formatted XML that can be inserted into a SOAP request body to the APT
#' @export
dfp_ReportService_object_factory <- function(obj_type, obj_data){
 if(is.data.frame(obj_data)){
 sampled_names <- names(obj_data) } else if(is.list(obj_data)){
 sampled_names <- names(obj_data[[1]])
 } else { stop("obj_data must be a list or data.frame")
 }

 if(obj_type=='Date'){
 stopifnot(all(sampled_names %in% c('year', 'month', 'day')))
 }

 if(obj_type=='ReportDownloadOptions'){
 stopifnot(all(sampled_names %in% c('exportFormat', 'includeReportProperties', 'includeTotalsRow', 'useGzipCompression')))
 }

 if(obj_type=='ReportJob'){
 stopifnot(all(sampled_names %in% c('id', 'reportQuery', 'reportJobStatus')))
 }

 if(obj_type=='ReportQuery'){
 stopifnot(all(sampled_names %in% c('dimensions', 'adUnitView', 'columns', 'dimensionAttributes', 'customFieldIds', 'contentMetadataKeyHierarchyCustomTargetingKeyIds', 'startDate', 'endDate', 'dateRangeType', 'statement', 'timeZone')))
 }

}
#' 
#' getReportDownloadURL
#' 
#' Returns the URL at which the report file can be downloaded. <p> The report will be generated as a gzip archive, containing the report file itself.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService#getReportDownloadURL}{Google Documentation for getReportDownloadURL}
#' 
#' @usage dfp_getReportDownloadURL(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a getReportDownloadURLResponse 
#' @export
dfp_getReportDownloadURL <- function(request_data){

 request_body <- make_request_body(service='ReportService', root_name='getReportDownloadURL', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[[getReportDownloadURLResponse']])
  result <- if(is.null(response$rval)){
    NULL
  } else {
      ldply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               new_x <- as.data.frame(t(x), stringsAsFactors = F)
               return(new_x)
             }, .id=NULL)
  }
  return(response)
}
#' 
#' getReportDownloadUrlWithOptions
#' 
#' Returns the URL at which the report file can be downloaded, and allows for customization of the downloaded report. <p> By default, the report will be generated as a gzip archive, containing the report file itself. This can be changed by setting ReportDownloadOptions useGzipCompression to false.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService#getReportDownloadUrlWithOptions}{Google Documentation for getReportDownloadUrlWithOptions}
#' 
#' @usage dfp_getReportDownloadUrlWithOptions(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a getReportDownloadUrlWithOptionsResponse 
#' @export
dfp_getReportDownloadUrlWithOptions <- function(request_data){

 request_body <- make_request_body(service='ReportService', root_name='getReportDownloadUrlWithOptions', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[[getReportDownloadUrlWithOptionsResponse']])
  result <- if(is.null(response$rval)){
    NULL
  } else {
      ldply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               new_x <- as.data.frame(t(x), stringsAsFactors = F)
               return(new_x)
             }, .id=NULL)
  }
  return(response)
}
#' 
#' getReportJobStatus
#' 
#' Returns the ReportJobStatus of the report job with the specified ID.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService#getReportJobStatus}{Google Documentation for getReportJobStatus}
#' 
#' @usage dfp_getReportJobStatus(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a getReportJobStatusResponse 
#' @export
dfp_getReportJobStatus <- function(request_data){

 request_body <- make_request_body(service='ReportService', root_name='getReportJobStatus', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[[getReportJobStatusResponse']])
  result <- if(is.null(response$rval)){
    NULL
  } else {
      ldply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               new_x <- as.data.frame(t(x), stringsAsFactors = F)
               return(new_x)
             }, .id=NULL)
  }
  return(response)
}
#' 
#' runReportJob
#' 
#' Initiates the execution of a ReportQuery on the server. <p>The following fields are required: <ul> <li>ReportJob reportQuery</li> </ul>
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReportService#runReportJob}{Google Documentation for runReportJob}
#' 
#' @usage dfp_runReportJob(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a runReportJobResponse 
#' @export
dfp_runReportJob <- function(request_data){

 request_body <- make_request_body(service='ReportService', root_name='runReportJob', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[[runReportJobResponse']])
  result <- if(is.null(response$rval)){
    NULL
  } else {
      ldply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               new_x <- as.data.frame(t(x), stringsAsFactors = F)
               return(new_x)
             }, .id=NULL)
  }
  return(response)
}
#' 
