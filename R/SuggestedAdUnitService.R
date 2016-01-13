#' SuggestedAdUnitService
#' 
#' This service provides operations for retrieving and approving
#' SuggestedAdUnit objects.
#' Publishers may create ad tags that lack a
#' corresponding ad unit defined in DFP, in order to gather information about
#' potential ads without needing to create dummy ad units and make them
#' available for targeting in line items. Any undefined ad unit to receive
#' more than ten serving requests in the past week is treated as a 'suggested
#' ad unit'. These can be queried by the client and selectively approved.
#' Approval causes a new ad unit to be created based on the suggested ad unit.
#' Unapproved suggested ad units cease to exist whenever their corresponding
#' ad tag has been served fewer than ten times in the past seven days.
#' This
#' service is only available to Premium publishers. Before use, suggested ad
#' units must be enabled for the client's network. This can be done in the UI:
#' in the Inventory tab, click "Network settings" in the left-hand panel, then
#' enable the checkbox "Get suggestions for new ad units." If suggested ad
#' units are not enabled, then #getSuggestedAdUnitsByStatement will always
#' return an empty page.
#' 
#' SuggestedAdUnitService Object Factory
#' 
#' A function to create a variety of objects that are part of the SuggestedAdUnitService
#' Note: not all objects here are inputs to the functions of this service so 
#' please consult each function for the required inputs
#' 
#' Below is a list of objects and their required components to be created with this function:
#' 
#' \strong{AdUnitParent}
#' 
#' The summary of a parent AdUnit.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.AdUnitParent}{Google Documentation for AdUnitParent}
#' \describe{
#'  \item{id}{a character - The ID of the parent AdUnit. This value is readonly and is populated by
#' Google.}
#'  \item{name}{a character - The name of the parent AdUnit. This value is readonly and is populated by
#' Google.}
#'  \item{adUnitCode}{a character - A string used to uniquely identify the ad unit for the purposes of serving
#' the ad. This attribute is read-only and is assigned by Google when an ad
#' unit is created.}
#' }
#' 
#' \strong{AdUnitSize}
#' 
#' An AdUnitSize represents the size of an ad in an ad unit. Starting with
#' v201108 this also represents the environment, and companions of a particular
#' ad in an ad unit. In most cases, it is a simple size with just a width and a
#' height (sometimes representing an aspect ratio).
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.AdUnitSize}{Google Documentation for AdUnitSize}
#' \describe{
#'  \item{size}{a Size - The permissible creative size that can be served inside this ad unit.}
#'  \item{environmentType}{a EnvironmentType - The environment type of the ad unit size. The default value is
#' EnvironmentType BROWSER. This can take one of the following values: 
#'    \itemize{
#'      \item{BROWSER - A regular web browser.}
#'      \item{VIDEO_PLAYER - Video players (such as Flash applications).}
#'    }
#'   }
#'  \item{companions}{a AdUnitSize - The companions for this ad unit size. Companions are only valid if the
#' environment is EnvironmentType VIDEO_PLAYER. If the environment is
#' EnvironmentType BROWSER including companions results in an error.}
#'  \item{fullDisplayString}{a character - The full (including companion sizes, if applicable) display string of the
#' size, e.g. "300x250" or "300x250v (180x150)"}
#' }
#' 
#' \strong{ApiError}
#' 
#' The API error base class that provides details about an error that occurred
#' while processing a service request. The OGNL field path is provided for
#' parsers to identify the request data element that may have caused the error.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.ApiError}{Google Documentation for ApiError}
#' \describe{
#'  \item{fieldPath}{a character - The OGNL field path to identify cause of error.}
#'  \item{trigger}{a character - The data that caused the error.}
#'  \item{errorString}{a character - A simple string representation of the error and reason.}
#' }
#' 
#' \strong{ApiException}
#' 
#' Exception class for holding a list of service errors.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.ApiException}{Google Documentation for ApiException}
#' \describe{
#'  \item{message}{a character (inherited from ApplicationException) - Error message.}
#'  \item{errors}{a ApiError - List of errors.}
#' }
#' 
#' \strong{ApiVersionError}
#' 
#' Errors related to the usage of API versions.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.ApiVersionError}{Google Documentation for ApiVersionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.ApplicationException}{Google Documentation for ApplicationException}
#' \describe{
#'  \item{message}{a character - Error message.}
#' }
#' 
#' \strong{ApproveSuggestedAdUnit}
#' 
#' Action to approve SuggestedAdUnit objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.ApproveSuggestedAdUnit}{Google Documentation for ApproveSuggestedAdUnit}
#' \describe{
#'  \item{extends SuggestedAdUnitAction}{see documentation for SuggestedAdUnitAction}
#' }
#' 
#' \strong{AuthenticationError}
#' 
#' An error for an exception that occurred when authenticating.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.AuthenticationError}{Google Documentation for AuthenticationError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.BooleanValue}{Google Documentation for BooleanValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a boolean - The boolean value.}
#' }
#' 
#' \strong{CollectionSizeError}
#' 
#' Error for the size of the collection being too large
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.CollectionSizeError}{Google Documentation for CollectionSizeError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.CommonError}{Google Documentation for CommonError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.Date}{Google Documentation for Date}
#' \describe{
#'  \item{year}{a integer - Year (e.g., 2009)}
#'  \item{month}{a integer - Month (1..12)}
#'  \item{day}{a integer - Day (1..31)}
#' }
#' 
#' \strong{DateTime}
#' 
#' Represents a date combined with the time of day.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.DateTime}{Google Documentation for DateTime}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.DateTimeValue}{Google Documentation for DateTimeValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a DateTime - The DateTime value.}
#' }
#' 
#' \strong{DateValue}
#' 
#' Contains a date value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.DateValue}{Google Documentation for DateValue}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.FeatureError}{Google Documentation for FeatureError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.InternalApiError}{Google Documentation for InternalApiError}
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
#' \strong{InventoryUnitSizesError}
#' 
#' An error specifically for InventoryUnitSizes.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.InventoryUnitSizesError}{Google Documentation for InventoryUnitSizesError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a InventoryUnitSizesError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{INVALID_SIZES - A size in the ad unit is too large or too small.}
#'      \item{INVALID_SIZE_FOR_PLATFORM - A size is an aspect ratio, but the ad unit is not a mobile ad unit.}
#'      \item{VIDEO_FEATURE_MISSING - A size is video, but the video feature is not enabled.}
#'      \item{VIDEO_MOBILE_LINE_ITEM_FEATURE_MISSING - A size is video in a mobile ad unit, but the mobile video feature is not
#' enabled.}
#'      \item{INVALID_SIZE_FOR_MASTER - A size that has companions must have an environment of VIDEO_PLAYER.}
#'      \item{INVALID_SIZE_FOR_COMPANION - A size that is a companion must have an environment of BROWSER.}
#'      \item{DUPLICATE_MASTER_SIZES - Duplicate video master sizes are not allowed.}
#'      \item{ASPECT_RATIO_NOT_SUPPORTED - A size is an aspect ratio, but aspect ratio sizes are not enabled.}
#'      \item{VIDEO_COMPANIONS_NOT_SUPPORTED - A video size has companions, but companions are not allowed for the network}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{LabelEntityAssociationError}
#' 
#' Errors specific to creating label entity associations.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.LabelEntityAssociationError}{Google Documentation for LabelEntityAssociationError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a LabelEntityAssociationError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{DUPLICATE_ASSOCIATION - The label has already been attached to the entity.}
#'      \item{INVALID_ASSOCIATION - A label is being applied to an entity that does not support that entity
#' type.}
#'      \item{DUPLICATE_ASSOCIATION_WITH_NEGATION - The same label is being applied and negated to the same entity.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{NotNullError}
#' 
#' Caused by supplying a null value for an attribute that cannot be null.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.NotNullError}{Google Documentation for NotNullError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.NumberValue}{Google Documentation for NumberValue}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.ObjectValue}{Google Documentation for ObjectValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#' }
#' 
#' \strong{ParseError}
#' 
#' Lists errors related to parsing.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.ParseError}{Google Documentation for ParseError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.PermissionError}{Google Documentation for PermissionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.PublisherQueryLanguageContextError}{Google Documentation for PublisherQueryLanguageContextError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.PublisherQueryLanguageSyntaxError}{Google Documentation for PublisherQueryLanguageSyntaxError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.QuotaError}{Google Documentation for QuotaError}
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
#' \strong{RequiredError}
#' 
#' Errors due to missing required field.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.RequiredError}{Google Documentation for RequiredError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.ServerError}{Google Documentation for ServerError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.SetValue}{Google Documentation for SetValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{values}{a Value - The values. They must all be the same type of Value and not contain
#' duplicates.}
#' }
#' 
#' \strong{Size}
#' 
#' Represents the dimensions of an AdUnit, LineItem or Creative.  For
#' interstitial size (out-of-page), native, ignored and fluid size, Size must
#' be 1x1.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.Size}{Google Documentation for Size}
#' \describe{
#'  \item{width}{a integer - The width of the AdUnit, LineItem or Creative.}
#'  \item{height}{a integer - The height of the AdUnit, LineItem or Creative.}
#'  \item{isAspectRatio}{a boolean - True if this size represents an aspect ratio, false otherwise.}
#' }
#' 
#' \strong{SoapRequestHeader}
#' 
#' Represents the SOAP request header used by API requests.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.SoapRequestHeader}{Google Documentation for SoapRequestHeader}
#' \describe{
#'  \item{networkCode}{a character - The network code to use in the context of a request.}
#'  \item{applicationName}{a character - The name of client library application.}
#' }
#' 
#' \strong{SoapResponseHeader}
#' 
#' Represents the SOAP request header used by API responses.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.SoapResponseHeader}{Google Documentation for SoapResponseHeader}
#' \describe{
#'  \item{requestId}{a character}
#'  \item{responseTime}{a integer}
#' }
#' 
#' \strong{Statement}
#' 
#' Holds the query in PQL syntax. See link for how to form PQL.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.Statement}{Google Documentation for Statement}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.StatementError}{Google Documentation for StatementError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.String_ValueMapEntry}{Google Documentation for String_ValueMapEntry}
#' \describe{
#'  \item{key}{a character}
#'  \item{value}{a Value}
#' }
#' 
#' \strong{SuggestedAdUnit}
#' 
#' A SuggestedAdUnit represents a suggestion for a new ad unit, based on an ad
#' tag that has been served at least ten times in the past week, but which does
#' not correspond to a defined ad unit. This type is read-only.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.SuggestedAdUnit}{Google Documentation for SuggestedAdUnit}
#' \describe{
#'  \item{id}{a character - The unique ID of the suggested ad unit. After API version 201311 this field
#' will be a numerical ID. Earlier versions will return a string value which is
#' the complete path to the suggested ad unit with path elements separated by
#' '/' characters. This attribute is read-only and is populated by Google.}
#'  \item{numRequests}{a integer - Returns the number of times the ad tag corresponding to this suggested ad
#' unit has been served in the previous week. Suggested ad units are only
#' created when they have been served at least ten times in that period. This
#' attribute is read-only and is populated by Google.}
#'  \item{path}{a character - The hierarchical path from the parentPath last existing ad unit after this
#' and all suggested parent ad units have been created. Each path element is a
#' separate ad unit code in the returned list. This attribute is read-only and
#' is populated by Google.}
#'  \item{parentPath}{a AdUnitParent - The existing hierarchical path leading up to, and including, the parent of
#' the first suggested ad unit in the ad unit hierarchy. The parentPath and the
#' path make up the full path of the suggested ad unit after it is approved.
#' This attribute is read-only and is populated by Google.
#' <strong>Note:</strong> The ad unit code for each of the parent ad units will
#' not be provided.}
#'  \item{targetWindow}{a AdUnit.TargetWindow - The target attribute of the underlying ad tag, as defined in the AdUnit.
#' This attribute is read-only and is populated by Google. This can take one of the following values: 
#'    \itemize{
#'      \item{TOP - Specifies that the link should open in the full body of the page.}
#'      \item{BLANK - Specifies that the link should open in a new window.}
#'    }
#'   }
#'  \item{targetPlatform}{a TargetPlatform - The target platform for the browser that clicked the underlying ad tag. This
#' attribute is read-only and is populated by Google. This can take one of the following values: 
#'    \itemize{
#'      \item{WEB - The desktop web.}
#'      \item{MOBILE - Mobile devices.}
#'      \item{ANY - An universal target platform that combines mobile and desktop features.}
#'    }
#'   }
#'  \item{suggestedAdUnitSizes}{a AdUnitSize - The target sizes associated with this SuggestedAdUnit. This attribute is
#' read-only and is populated by Google.}
#' }
#' 
#' \strong{SuggestedAdUnitAction}
#' 
#' Represents the actions that can be performed on SuggestedAdUnit objects. May take one of the actions listed below.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.SuggestedAdUnitAction}{Google Documentation for SuggestedAdUnitAction}
#' \describe{
#'  \item{ApproveSuggestedAdUnit}{Action to approve SuggestedAdUnit objects.}
#' }
#' 
#' \strong{SuggestedAdUnitPage}
#' 
#' Contains a page of SuggestedAdUnit objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.SuggestedAdUnitPage}{Google Documentation for SuggestedAdUnitPage}
#' \describe{
#'  \item{totalResultSetSize}{a integer - The size of the total result set to which this page belongs.}
#'  \item{startIndex}{a integer - The absolute index in the total result set on which this page begins.}
#'  \item{results}{a SuggestedAdUnit - The collection of suggested ad units contained within this page.}
#' }
#' 
#' \strong{SuggestedAdUnitUpdateResult}
#' 
#' Represents the result of performing an action on SuggestedAdUnit objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.SuggestedAdUnitUpdateResult}{Google Documentation for SuggestedAdUnitUpdateResult}
#' \describe{
#'  \item{newAdUnitIds}{a character - The ids of the AdUnit objects that were created in response to a
#' performSuggestedAdUnitAction call.}
#'  \item{numChanges}{a integer - The number of objects that were changed as a result of performing the
#' action.}
#' }
#' 
#' \strong{TextValue}
#' 
#' Contains a string value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.TextValue}{Google Documentation for TextValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a character - The string value.}
#' }
#' 
#' \strong{TypeError}
#' 
#' An error for a field which is an invalid type.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.TypeError}{Google Documentation for TypeError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#' }
#' 
#' \strong{UniqueError}
#' 
#' An error for a field which must satisfy a uniqueness constraint
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.UniqueError}{Google Documentation for UniqueError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#' }
#' 
#' \strong{Value}
#' 
#' Value represents a value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService.Value}{Google Documentation for Value}
#' \describe{
#' }
#' 
#' 
#' 
#' @usage dfp_SuggestedAdUnitService_object_factory(obj_type, obj_data)
#' 
#' @param obj_type a string from one of the object types described above
#' @param obj_data a \code{list} of \code{lists} or a \code{data.frame} with the required components to create
#' the obj_type specified. All input names must match the expected attributes for the object.
#' If submitting a list of attributes to create 1 object make sure to nest it inside top-level list, so that
#' it is a list of length 1 with 1 list of attributes to create the object.
#' @return a string of formatted XML that can be inserted into a SOAP request body to the APT
#' @export
dfp_SuggestedAdUnitService_object_factory <- function(obj_type, obj_data){
 if(is.data.frame(obj_data)){
 sampled_names <- names(obj_data) } else if(is.list(obj_data)){
 sampled_names <- names(obj_data[[1]])
 } else { stop("obj_data must be a list or data.frame")
 }

 if(obj_type=='AdUnitParent'){
 stopifnot(all(sampled_names %in% c('id', 'name', 'adUnitCode')))
 }

 if(obj_type=='AdUnitSize'){
 stopifnot(all(sampled_names %in% c('size', 'environmentType', 'companions', 'fullDisplayString')))
 }

 if(obj_type=='Date'){
 stopifnot(all(sampled_names %in% c('year', 'month', 'day')))
 }

 if(obj_type=='Size'){
 stopifnot(all(sampled_names %in% c('width', 'height', 'isAspectRatio')))
 }

 if(obj_type=='SuggestedAdUnit'){
 stopifnot(all(sampled_names %in% c('id', 'numRequests', 'path', 'parentPath', 'targetWindow', 'targetPlatform', 'suggestedAdUnitSizes')))
 }

}
#' 
#' getSuggestedAdUnitsByStatement
#' 
#' Gets a SuggestedAdUnitPage of SuggestedAdUnit objects that satisfy the filter query. There is a system-enforced limit of 1000 on the number of suggested ad units that are suggested at any one time.  <strong>Note:</strong> After API version 201311, the id field will only be numerical. a set of suggested ad units 
#' \itemize{
#'   \item{id}
#'   \item{numRequests}
#' }
#' 
#' @importFrom plyr llply ldply
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService#getSuggestedAdUnitsByStatement}{Google Documentation for getSuggestedAdUnitsByStatement}
#' 
#' @usage dfp_getSuggestedAdUnitsByStatement(request_data, as_df=TRUE)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into a \code{data.frame}
#' @return a \code{data.frame} or \code{list} containing all the elements of a getSuggestedAdUnitsByStatementResponse 
#' @export
dfp_getSuggestedAdUnitsByStatement <- function(request_data, as_df=TRUE){
 request_body <- make_request_body(service='SuggestedAdUnitService', root_name='getSuggestedAdUnitsByStatement', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getSuggestedAdUnitsByStatementResponse']])
  result <- if(is.null(response$rval)){
    NULL
  } else if (as_df){
      if(length(response[grepl('rval', names(response))])==1 &
          names(response[grepl('rval', names(response))][[1]])[1]=='totalResultSetSize' &
           names(response[grepl('rval', names(response))][[1]])[2]=='startIndex'){
            ldply(tail(response[grepl('rval', names(response))]$rval, -2),             .fun=function(x){
                 x <- xmlToList(x)
                 x[sapply(x, is.null)] <- NA
                 new_x <- as.data.frame(x, stringsAsFactors = F)
                 return(new_x)
             }, .id=NULL)
      } else {
      ldply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               x[sapply(x, is.null)] <- NA
               new_x <- as.data.frame(x, stringsAsFactors = F)
               return(new_x)
             }, .id=NULL)
      }
  } else {
      llply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               return(x)
             })
  }
  return(result)
}
#' 
#' performSuggestedAdUnitAction
#' 
#' Performs actions on SuggestedAdUnit objects that match the given Statement query. The following fields are supported for filtering:  a set of suggested ad units 
#' \itemize{
#'   \item{id}
#'   \item{numRequests}
#' }
#' 
#' @importFrom plyr llply ldply
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/SuggestedAdUnitService#performSuggestedAdUnitAction}{Google Documentation for performSuggestedAdUnitAction}
#' 
#' @usage dfp_performSuggestedAdUnitAction(request_data, as_df=TRUE)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into a \code{data.frame}
#' @return a \code{data.frame} or \code{list} containing all the elements of a performSuggestedAdUnitActionResponse 
#' @export
dfp_performSuggestedAdUnitAction <- function(request_data, as_df=TRUE){
 request_body <- make_request_body(service='SuggestedAdUnitService', root_name='performSuggestedAdUnitAction', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['performSuggestedAdUnitActionResponse']])
  result <- if(is.null(response$rval)){
    NULL
  } else if (as_df){
      if(length(response[grepl('rval', names(response))])==1 &
          names(response[grepl('rval', names(response))][[1]])[1]=='totalResultSetSize' &
           names(response[grepl('rval', names(response))][[1]])[2]=='startIndex'){
            ldply(tail(response[grepl('rval', names(response))]$rval, -2),             .fun=function(x){
                 x <- xmlToList(x)
                 x[sapply(x, is.null)] <- NA
                 new_x <- as.data.frame(x, stringsAsFactors = F)
                 return(new_x)
             }, .id=NULL)
      } else {
      ldply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               x[sapply(x, is.null)] <- NA
               new_x <- as.data.frame(x, stringsAsFactors = F)
               return(new_x)
             }, .id=NULL)
      }
  } else {
      llply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               return(x)
             })
  }
  return(result)
}
#' 
