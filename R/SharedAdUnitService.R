#' SharedAdUnitService
#' 
#' Service for handling SharedAdUnit objects.
#' 
#' SharedAdUnitService Object Factory
#' 
#' A function to create a variety of objects that are part of the SharedAdUnitService
#' Note: not all objects here are inputs to the functions of this service so 
#' please consult each function for the required inputs
#' 
#' Below is a list of objects and their required components to be created with this function:
#' 
#' \strong{AdUnitSize}
#' 
#' An AdUnitSize represents the size of an ad in an ad unit. Starting with
#' v201108 this also represents the environment, and companions of a particular
#' ad in an ad unit. In most cases, it is a simple size with just a width and a
#' height (sometimes representing an aspect ratio).
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.AdUnitSize}{Google Documentation for AdUnitSize}
#' \describe{
#'  \item{size}{a Size -  The permissible creative size that can be served inside this ad unit.}
#'  \item{environmentType}{a EnvironmentType - The environment type of the ad unit size. The default value is
#' EnvironmentType BROWSER. This can take one of the following values:
#'    \itemize{
#'      \item{BROWSER - A regular web browser.}
#'      \item{VIDEO_PLAYER - Video players (such as Flash applications).}
#'    }
#'   }
#'  \item{companions}{a AdUnitSize -  The companions for this ad unit size. Companions are only valid if the
#' environment is EnvironmentType VIDEO_PLAYER. If the environment is
#' EnvironmentType BROWSER including companions results in an error.}
#'  \item{fullDisplayString}{a string -  The full (including companion sizes, if applicable) display string of the
#' size, e.g. "300x250" or "300x250v (180x150)"}
#' }
#' 
#' \strong{ApiError}
#' 
#' The API error base class that provides details about an error that occurred
#' while processing a service request. The OGNL field path is provided for
#' parsers to identify the request data element that may have caused the error.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.ApiError}{Google Documentation for ApiError}
#' \describe{
#'  \item{fieldPath}{a string -  The OGNL field path to identify cause of error.}
#'  \item{trigger}{a string -  The data that caused the error.}
#'  \item{errorString}{a string -  A simple string representation of the error and reason.}
#' }
#' 
#' \strong{ApiException}
#' 
#' Exception class for holding a list of service errors.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.ApiException}{Google Documentation for ApiException}
#' \describe{
#'  \item{message}{a string (inherited from ApplicationException) -  Error message.}
#'  \item{errors}{a ApiError -  List of errors.}
#' }
#' 
#' \strong{ApiVersionError}
#' 
#' Errors related to the usage of API versions.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.ApiVersionError}{Google Documentation for ApiVersionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.ApplicationException}{Google Documentation for ApplicationException}
#' \describe{
#'  \item{message}{a string -  Error message.}
#' }
#' 
#' \strong{ApproveSharedAdUnits}
#' 
#' Action to approve shared ad units.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.ApproveSharedAdUnits}{Google Documentation for ApproveSharedAdUnits}
#' \describe{
#'  \item{extends SharedAdUnitAction}{see documentation for SharedAdUnitAction}
#' }
#' 
#' \strong{AuthenticationError}
#' 
#' An error for an exception that occurred when authenticating.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.AuthenticationError}{Google Documentation for AuthenticationError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.BooleanValue}{Google Documentation for BooleanValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a boolean -  The boolean value.}
#' }
#' 
#' \strong{CollectionSizeError}
#' 
#' Error for the size of the collection being too large
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.CollectionSizeError}{Google Documentation for CollectionSizeError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.CommonError}{Google Documentation for CommonError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.Date}{Google Documentation for Date}
#' \describe{
#'  \item{year}{a integer -  Year (e.g., 2009)}
#'  \item{month}{a integer -  Month (1..12)}
#'  \item{day}{a integer -  Day (1..31)}
#' }
#' 
#' \strong{DateTime}
#' 
#' Represents a date combined with the time of day.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.DateTime}{Google Documentation for DateTime}
#' \describe{
#'  \item{date}{a Date}
#'  \item{hour}{a integer}
#'  \item{minute}{a integer}
#'  \item{second}{a integer}
#'  \item{timeZoneID}{a string}
#' }
#' 
#' \strong{DateTimeValue}
#' 
#' Contains a date-time value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.DateTimeValue}{Google Documentation for DateTimeValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a DateTime -  The DateTime value.}
#' }
#' 
#' \strong{DateValue}
#' 
#' Contains a date value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.DateValue}{Google Documentation for DateValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a Date -  The Date value.}
#' }
#' 
#' \strong{FeatureError}
#' 
#' Errors related to feature management. If you attempt using a feature that is
#' not available to the current network you'll receive a FeatureError with the
#' missing feature as the trigger.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.FeatureError}{Google Documentation for FeatureError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.InternalApiError}{Google Documentation for InternalApiError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.NotNullError}{Google Documentation for NotNullError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.NumberValue}{Google Documentation for NumberValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a string -  The numeric value represented as a string.}
#' }
#' 
#' \strong{ObjectValue}
#' 
#' Contains an object value.  This object is experimental! ObjectValue is an
#' experimental, innovative, and rapidly changing new feature for DFP.
#' Unfortunately, being on the bleeding edge means that we may make
#' backwards-incompatible changes to ObjectValue. We will inform the community
#' when this feature is no longer experimental.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.ObjectValue}{Google Documentation for ObjectValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#' }
#' 
#' \strong{ParseError}
#' 
#' Lists errors related to parsing.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.ParseError}{Google Documentation for ParseError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.PermissionError}{Google Documentation for PermissionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.PublisherQueryLanguageContextError}{Google Documentation for PublisherQueryLanguageContextError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.PublisherQueryLanguageSyntaxError}{Google Documentation for PublisherQueryLanguageSyntaxError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.QuotaError}{Google Documentation for QuotaError}
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
#' \strong{RejectSharedAdUnits}
#' 
#' Action to reject shared ad units.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.RejectSharedAdUnits}{Google Documentation for RejectSharedAdUnits}
#' \describe{
#'  \item{extends SharedAdUnitAction}{see documentation for SharedAdUnitAction}
#' }
#' 
#' \strong{ServerError}
#' 
#' Errors related to the server.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.ServerError}{Google Documentation for ServerError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.SetValue}{Google Documentation for SetValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{values}{a Value -  The values. They must all be the same type of Value and not contain
#' duplicates.}
#' }
#' 
#' \strong{SharedAdUnit}
#' 
#' An ad unit that is shared from a distributor network.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.SharedAdUnit}{Google Documentation for SharedAdUnit}
#' \describe{
#'  \item{id}{a integer -  The ID of the shared ad unit.}
#'  \item{name}{a string -  The name of the shared ad unit.}
#'  \item{distributorName}{a string -  The name of the distribution partner's network name.}
#'  \item{contentProviderAdUnitId}{a integer -  The ID of the AdUnit, in the content provider network, that this shared ad
#' unit is linked to. If the shared ad unit was never approved, this value will
#' be null, as there will be no corresponding ad unit within the content
#' provider network.}
#'  \item{status}{a SharedAdUnitStatus - The status of the shared ad unit. This can take one of the following values:
#'    \itemize{
#'      \item{PENDING - The initial status of a shared ad unit; this indicates that a distributor
#' network has shared an ad unit with a content provider network, but the
#' content provider has yet to decide whether it's approved or rejected. In
#' this case, the content provider will be unable to target the corresponding
#' ad unit, and thus, the content provider line items that target this ad unit
#' will not serve.}
#'      \item{APPROVED - This indicates the content provider has approved the corresponding ad unit
#' for shared selling. The ad unit will now be eligible for targeting within
#' the content provider network, and any line items targeting this ad unit will
#' be eligible to be served.}
#'      \item{REJECTED - This indicates the content provider has rejected the corresponding ad unit
#' for shared selling. The ad unit will not be eligible for targeting within
#' the content provider network, and any line items targeting this ad unit will
#' not be eligible to be served.}
#'      \item{UNSHARED - This indicates that a previously shared ad unit has now been unshared by the
#' distributor network. The corresponding ad unit will not be eligible for
#' targeting within the content provider network, and any line items targeting
#' this ad unit will not be eligible to be served.}
#'      \item{PLACEHOLDER - This indicates that the corresponding ad unit is an ancestor of a shared ad
#' unit, which is synchronized in order to maintain identical hierarchies
#' between the distributor and content provider networks. A content provider's
#' line item which targets this ad unit will serve, but only for requests from
#' explicitly or implicitly shared lower-level ad units.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{targetPlatform}{a TargetPlatform - The target platform of the ad unit being shared. This can take one of the following values:
#'    \itemize{
#'      \item{WEB - The desktop web.}
#'      \item{MOBILE - Mobile devices.}
#'      \item{ANY - An universal target platform that combines mobile and desktop features.}
#'    }
#'   }
#'  \item{targetWindow}{a AdUnit.TargetWindow - The target window of the ad unit being shared. This can take one of the following values:
#'    \itemize{
#'      \item{TOP - Specifies that the link should open in the full body of the page.}
#'      \item{BLANK - Specifies that the link should open in a new window.}
#'    }
#'   }
#'  \item{adUnitSizes}{a AdUnitSize -  The sizes of the ad unit being shared.}
#' }
#' 
#' \strong{SharedAdUnitAction}
#' 
#' Represents the actions that can be performed on SharedAdUnit objects. May take one of the actions listed below.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.SharedAdUnitAction}{Google Documentation for SharedAdUnitAction}
#' \describe{
#'  \item{ApproveSharedAdUnits}{Action to approve shared ad units.}
#'  \item{RejectSharedAdUnits}{Action to reject shared ad units.}
#' }
#' 
#' \strong{SharedAdUnitPage}
#' 
#' Captures a page of SharedAdUnit objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.SharedAdUnitPage}{Google Documentation for SharedAdUnitPage}
#' \describe{
#'  \item{totalResultSetSize}{a integer -  The size of the total result set to which this page belongs.}
#'  \item{startIndex}{a integer -  The absolute index in the total result set on which this page begins.}
#'  \item{results}{a SharedAdUnit -  The collection of shared ad units contained within this page.}
#' }
#' 
#' \strong{Size}
#' 
#' Represents the dimensions of an AdUnit, LineItem or Creative.  For
#' interstitial size (out-of-page), native, ignored and fluid size, Size must
#' be 1x1.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.Size}{Google Documentation for Size}
#' \describe{
#'  \item{width}{a integer -  The width of the AdUnit, LineItem or Creative.}
#'  \item{height}{a integer -  The height of the AdUnit, LineItem or Creative.}
#'  \item{isAspectRatio}{a boolean -  True if this size represents an aspect ratio, false otherwise.}
#' }
#' 
#' \strong{SoapRequestHeader}
#' 
#' Represents the SOAP request header used by API requests.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.SoapRequestHeader}{Google Documentation for SoapRequestHeader}
#' \describe{
#'  \item{networkCode}{a string -  The network code to use in the context of a request.}
#'  \item{applicationName}{a string -  The name of client library application.}
#' }
#' 
#' \strong{SoapResponseHeader}
#' 
#' Represents the SOAP request header used by API responses.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.SoapResponseHeader}{Google Documentation for SoapResponseHeader}
#' \describe{
#'  \item{requestId}{a string}
#'  \item{responseTime}{a integer}
#' }
#' 
#' \strong{Statement}
#' 
#' Captures the WHERE, ORDER BY and LIMIT clauses of a PQL query. Statements
#' are typically used to retrieve objects of a predefined domain type, which
#' makes SELECT clause unnecessary.  An example query text might be "WHERE
#' status = 'ACTIVE' ORDER BY id LIMIT 30".  Statements support bind variables.
#' These are substitutes for literals and can be thought of as input parameters
#' to a PQL query.  An example of such a query might be "WHERE id = :idValue".
#' Statements also support use of the LIKE keyword. This provides partial and
#' wildcard string matching.  An example of such a query might be "WHERE name
#' LIKE 'startswith\%'".  If using an API version newer than V201010, the value
#' for the variable idValue must then be set with an object of type Value and
#' is one of NumberValue, TextValue or BooleanValue.  If using an API version
#' older than or equal to V201010, the value for the variable idValue must then
#' be set with an object of type Param and is one of DoubleParam, LongParam or
#' StringParam.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.Statement}{Google Documentation for Statement}
#' \describe{
#'  \item{query}{a string -  Holds the query in PQL syntax. See link for how to form PQL.}
#'  \item{values}{a String_ValueMapEntry -  Holds keys and values for bind variables and their values. The key is the
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.StatementError}{Google Documentation for StatementError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.String_ValueMapEntry}{Google Documentation for String_ValueMapEntry}
#' \describe{
#'  \item{key}{a string}
#'  \item{value}{a Value}
#' }
#' 
#' \strong{TextValue}
#' 
#' Contains a string value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.TextValue}{Google Documentation for TextValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a string -  The string value.}
#' }
#' 
#' \strong{UniqueError}
#' 
#' An error for a field which must satisfy a uniqueness constraint
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.UniqueError}{Google Documentation for UniqueError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#' }
#' 
#' \strong{UpdateResult}
#' 
#' Represents the result of performing an action on objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.UpdateResult}{Google Documentation for UpdateResult}
#' \describe{
#'  \item{numChanges}{a integer -  The number of objects that were changed as a result of performing the
#' action.}
#' }
#' 
#' \strong{Value}
#' 
#' Value represents a value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SharedAdUnitService.Value}{Google Documentation for Value}
#' \describe{
#' }
#' 
#' 
#' 
#' @usage dfp_SharedAdUnitService_object_factory(obj_type, obj_data)
#' 
#' @param obj_type a string from one of the object types described below
#' @param obj_data a \code{list} of \code{lists} or a \code{data.frame} with the required components to create
#' the obj_type specified. All input names must match the expected attributes for the object.
#' If submitting a list of attributes to create 1 object make sure to nest it inside top-level list, so that
#' it is a list of length 1 with 1 list of attributes to create the object.
#' @return a string of formatted XML that can be inserted into a SOAP request body to the API
#' @export
dfp_SharedAdUnitService_object_factory <- function(obj_type, obj_data){

  if(is.data.frame(obj_data)){
    sampled_names <- names(obj_data)
  } else if(is.list(obj_data)){
    sampled_names <- names(obj_data[[1]])
  } else {
    stop("obj_data must be a list or data.frame")
  }

  if(obj_type=='AdUnitSize'){
    stopifnot(all(sampled_names %in% c('size', 'environmentType', 'companions', 'fullDisplayString')))
  }

  if(obj_type=='SharedAdUnit'){
    stopifnot(all(sampled_names %in% c('id', 'name', 'distributorName', 'contentProviderAdUnitId', 'status', 'targetPlatform', 'targetWindow', 'adUnitSizes')))
  }

  if(obj_type=='Size'){
    stopifnot(all(sampled_names %in% c('width', 'height', 'isAspectRatio')))
  }

}
#' 
#' getSharedAdUnitsByStatement
#' 
#' Gets a SharedAdUnitPage of SharedAdUnit objects that satisfy the given Statement query. The following fields are supported for filtering:  a set of shared ad units 
#' \itemize{
#'   \item{id}
#'   \item{name}
#' }
#' 
#' @usage dfp_getSharedAdUnitsByStatement(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a getSharedAdUnitsByStatementResponse
#' @export
dfp_getSharedAdUnitsByStatement <- function(request_data){

  request_body <- make_request_body(service='SharedAdUnitService', root_name='getSharedAdUnitsByStatement', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getSharedAdUnitsByStatementResponse']])$rval
  response <- if(is.null(response)) NULL else xmlToList(response)
  return(response)
}
#' 
#' performSharedAdUnitAction
#' 
#' Performs actions on shared ad unit objects that match the given Statement query. a set of shared ad units on which the action was performed.
#' 
#' @usage dfp_performSharedAdUnitAction()
#' @return a \code{list} containing all the elements of a performSharedAdUnitActionResponse
#' @export
dfp_performSharedAdUnitAction <- function(){

  request_body <- make_request_body(service='SharedAdUnitService', root_name='performSharedAdUnitAction', data=NULL)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['performSharedAdUnitActionResponse']])$rval
  response <- if(is.null(response)) NULL else xmlToList(response)
  return(response)
}
#' 
