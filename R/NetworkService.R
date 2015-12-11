#' NetworkService
#' 
#' Provides operations for retrieving information related to the publisher's
#' networks. This service can be used to obtain the list of all networks that
#' the current login has access to, or to obtain information about a specific
#' network.
#' 
#' NetworkService Object Factory
#' 
#' A function to create a variety of objects that are part of the NetworkService
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService.ApiError}{Google Documentation for ApiError}
#' \describe{
#'  \item{fieldPath}{a character - The OGNL field path to identify cause of error.}
#'  \item{trigger}{a character - The data that caused the error.}
#'  \item{errorString}{a character - A simple string representation of the error and reason.}
#' }
#' 
#' \strong{ApiException}
#' 
#' Exception class for holding a list of service errors.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService.ApiException}{Google Documentation for ApiException}
#' \describe{
#'  \item{message}{a character (inherited from ApplicationException) - Error message.}
#'  \item{errors}{a ApiError - List of errors.}
#' }
#' 
#' \strong{ApiVersionError}
#' 
#' Errors related to the usage of API versions.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService.ApiVersionError}{Google Documentation for ApiVersionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService.ApplicationException}{Google Documentation for ApplicationException}
#' \describe{
#'  \item{message}{a character - Error message.}
#' }
#' 
#' \strong{AuthenticationError}
#' 
#' An error for an exception that occurred when authenticating.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService.AuthenticationError}{Google Documentation for AuthenticationError}
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
#' \strong{CollectionSizeError}
#' 
#' Error for the size of the collection being too large
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService.CollectionSizeError}{Google Documentation for CollectionSizeError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService.CommonError}{Google Documentation for CommonError}
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
#' \strong{ExchangeRateError}
#' 
#' Lists all errors associated with ExchangeRate objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService.ExchangeRateError}{Google Documentation for ExchangeRateError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a ExchangeRateError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{INVALID_CURRENCY_CODE - The currency code is invalid and does not follow ISO 4217.}
#'      \item{UNSUPPORTED_CURRENCY_CODE - The currency code is not supported.}
#'      \item{CURRENCY_CODE_ALREADY_EXISTS - The currency code already exists. When creating an exchange rate, its
#' currency should not be associated with any existing exchange rate. When
#' creating a list of exchange rates, there should not be two exchange rates
#' associated with same currency.}
#'      \item{INVALID_EXCHANGE_RATE - The exchange rate value is invalid. When the ExchangeRate refreshRate is
#' ExchangeRateRefreshRate FIXED, the ExchangeRate exchangeRate should be
#' larger than 0. Otherwise it is invalid.}
#'      \item{EXCHANGE_RATE_NOT_FOUND - The exchange rate value is not found. When the ExchangeRate refreshRate is
#' ExchangeRateRefreshRate DAILY or ExchangeRateRefreshRate MONTHLY, the
#' ExchangeRate exchangeRate should be assigned by Google. It is not found if
#' Google cannot find such an exchange rate.}
#'      \item{CANNOT_DELETE_EXCHANGE_RATE_WITH_ACTIVE_RATE_CARDS - The exchange rate cannot be deleted as it is still being used by active rate
#' cards.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{FeatureError}
#' 
#' Errors related to feature management. If you attempt using a feature that is
#' not available to the current network you'll receive a FeatureError with the
#' missing feature as the trigger.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService.FeatureError}{Google Documentation for FeatureError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService.InternalApiError}{Google Documentation for InternalApiError}
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
#' \strong{InvalidEmailError}
#' 
#' Caused by supplying a value for an email attribute that is not a valid email
#' address.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService.InvalidEmailError}{Google Documentation for InvalidEmailError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a InvalidEmailError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{INVALID_FORMAT - The value is not a valid email address.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{Network}
#' 
#' Network represents a network.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService.Network}{Google Documentation for Network}
#' \describe{
#'  \item{id}{a integer - The unique ID of the Network. This value is readonly and is assigned by
#' Google.}
#'  \item{displayName}{a character - The display name of the network.}
#'  \item{networkCode}{a character - The network code. If the current login has access to multiple networks, then
#' the network code must be provided in the SOAP request headers for all
#' requests. Otherwise, it is optional to provide the network code in the SOAP
#' headers. This field is read-only.}
#'  \item{propertyCode}{a character - The property code. This field is read-only.}
#'  \item{timeZone}{a character - The time zone associated with the delivery of orders and reporting. This
#' field is read-only.}
#'  \item{currencyCode}{a character - The primary currency code. This field is read-only.}
#'  \item{secondaryCurrencyCodes}{a character - Currencies that can be used as an alternative to the Network currencyCode
#' for trafficking LineItem line items.}
#'  \item{effectiveRootAdUnitId}{a character - The AdUnit id of the top most ad unit to which descendant ad units can be
#' added. Should be used for the AdUnit parentId when first building inventory
#' hierarchy. This field is read-only.}
#'  \item{contentBrowseCustomTargetingKeyId}{a integer - The ID of the CustomTargetingKey that is used to categorize video content in
#' DFP. Values of this CustomTargetingKey can be used as part of the Targeting
#' contentTargeting for targeting line items to video categories. Additionally,
#' you can use the values of this key with the ContentService to search for all
#' Content that are associated to a particular key/value combination.}
#'  \item{isTest}{a boolean - Whether this is a test network. This field is read-only.}
#' }
#' 
#' \strong{NetworkError}
#' 
#' An error for a network.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService.NetworkError}{Google Documentation for NetworkError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a NetworkError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{MULTI_CURRENCY_NOT_SUPPORTED - Multi-currency support is not enabled for this network. This is a premium
#' feature.}
#'      \item{UNSUPPORTED_CURRENCY - Currency provided is not supported.}
#'      \item{NETWORK_CURRENCY_CANNOT_BE_SAME_AS_SECONDARY - The network currency cannot also be specified as a secondary currency.}
#'      \item{CANNOT_DELETE_CURRENCY_WITH_ACTIVE_RATE_CARDS - The currency cannot be deleted as it is still being used by active rate
#' cards.}
#'    }
#'   }
#' }
#' 
#' \strong{NotNullError}
#' 
#' Caused by supplying a null value for an attribute that cannot be null.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService.NotNullError}{Google Documentation for NotNullError}
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
#' \strong{ParseError}
#' 
#' Lists errors related to parsing.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService.ParseError}{Google Documentation for ParseError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService.PermissionError}{Google Documentation for PermissionError}
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
#' \strong{PrecisionError}
#' 
#' List all errors associated with number precisions.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService.PrecisionError}{Google Documentation for PrecisionError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a PrecisionError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{WRONG_PRECISION - The lowest N digits of the number must be zero.}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService.PublisherQueryLanguageContextError}{Google Documentation for PublisherQueryLanguageContextError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService.PublisherQueryLanguageSyntaxError}{Google Documentation for PublisherQueryLanguageSyntaxError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService.QuotaError}{Google Documentation for QuotaError}
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
#' \strong{RequiredCollectionError}
#' 
#' A list of all errors to be used for validating sizes of collections.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService.RequiredCollectionError}{Google Documentation for RequiredCollectionError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a RequiredCollectionError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{REQUIRED - A required collection is missing.}
#'      \item{TOO_LARGE - Collection size is too large.}
#'      \item{TOO_SMALL - Collection size is too small.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{RequiredError}
#' 
#' Errors due to missing required field.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService.RequiredError}{Google Documentation for RequiredError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a RequiredError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{REQUIRED - Missing required field.}
#'    }
#'   }
#' }
#' 
#' \strong{RequiredNumberError}
#' 
#' A list of all errors to be used in conjunction with required number
#' validators.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService.RequiredNumberError}{Google Documentation for RequiredNumberError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a RequiredNumberError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{REQUIRED}
#'      \item{TOO_LARGE}
#'      \item{TOO_SMALL}
#'      \item{TOO_LARGE_WITH_DETAILS}
#'      \item{TOO_SMALL_WITH_DETAILS}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{ServerError}
#' 
#' Errors related to the server.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService.ServerError}{Google Documentation for ServerError}
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
#' \strong{SoapRequestHeader}
#' 
#' Represents the SOAP request header used by API requests.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService.SoapRequestHeader}{Google Documentation for SoapRequestHeader}
#' \describe{
#'  \item{networkCode}{a character - The network code to use in the context of a request.}
#'  \item{applicationName}{a character - The name of client library application.}
#' }
#' 
#' \strong{SoapResponseHeader}
#' 
#' Represents the SOAP request header used by API responses.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService.SoapResponseHeader}{Google Documentation for SoapResponseHeader}
#' \describe{
#'  \item{requestId}{a character}
#'  \item{responseTime}{a integer}
#' }
#' 
#' \strong{StatementError}
#' 
#' An error that occurs while parsing Statement objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService.StatementError}{Google Documentation for StatementError}
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
#' \strong{StringLengthError}
#' 
#' Errors for Strings which do not meet given length constraints.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService.StringLengthError}{Google Documentation for StringLengthError}
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
#' \strong{TypeError}
#' 
#' An error for a field which is an invalid type.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService.TypeError}{Google Documentation for TypeError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#' }
#' 
#' \strong{UniqueError}
#' 
#' An error for a field which must satisfy a uniqueness constraint
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService.UniqueError}{Google Documentation for UniqueError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#' }
#' 
#' 
#' 
#' @usage dfp_NetworkService_object_factory(obj_type, obj_data)
#' 
#' @param obj_type a string from one of the object types described above
#' @param obj_data a \code{list} of \code{lists} or a \code{data.frame} with the required components to create
#' the obj_type specified. All input names must match the expected attributes for the object.
#' If submitting a list of attributes to create 1 object make sure to nest it inside top-level list, so that
#' it is a list of length 1 with 1 list of attributes to create the object.
#' @return a string of formatted XML that can be inserted into a SOAP request body to the APT
#' @export
dfp_NetworkService_object_factory <- function(obj_type, obj_data){
 if(is.data.frame(obj_data)){
 sampled_names <- names(obj_data) } else if(is.list(obj_data)){
 sampled_names <- names(obj_data[[1]])
 } else { stop("obj_data must be a list or data.frame")
 }

 if(obj_type=='Network'){
 stopifnot(all(sampled_names %in% c('id', 'displayName', 'networkCode', 'propertyCode', 'timeZone', 'currencyCode', 'secondaryCurrencyCodes', 'effectiveRootAdUnitId', 'contentBrowseCustomTargetingKeyId', 'isTest')))
 }

}
#' 
#' getAllNetworks
#' 
#' Returns the list of Network objects to which the current login has access. <p> Intended to be used without a network code in the SOAP header when the login may have more than one network associated with it. </p>
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService#getAllNetworks}{Google Documentation for getAllNetworks}
#' 
#' @usage dfp_getAllNetworks()
#' @return a \code{list} containing all the elements of a getAllNetworksResponse 
#' @export
dfp_getAllNetworks <- function(){

 request_body <- make_request_body(service='NetworkService', root_name='getAllNetworks', data=NULL)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[[getAllNetworksResponse']])
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
#' getCurrentNetwork
#' 
#' Returns the current network for which requests are being made.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService#getCurrentNetwork}{Google Documentation for getCurrentNetwork}
#' 
#' @usage dfp_getCurrentNetwork()
#' @return a \code{list} containing all the elements of a getCurrentNetworkResponse 
#' @export
dfp_getCurrentNetwork <- function(){

 request_body <- make_request_body(service='NetworkService', root_name='getCurrentNetwork', data=NULL)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[[getCurrentNetworkResponse']])
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
#' makeTestNetwork
#' 
#' Creates a new blank network for testing purposes using the current login. <p> Each login(i.e. email address) can only have one test network. Data from any of your existing networks will not be transferred to the new test network. Once the test network is created, the test network can be used in the API by supplying the Network networkCode in the SOAP header or by logging into the DFP UI. <p> Test networks are limited in the following ways: <ul> <li>Test networks cannot serve ads.</li> <li>Because test networks cannot serve ads, reports will always come back without data.</li> <li>Since forecasting requires serving history, forecast service results will be faked. See ForecastService for more info.</li> <li>Test networks are, by default, small business networks and do not have any premium features. To have additional features turned on, please contact your account manager. </li> <li>Test networks are limited to 10,000 objects per entity type.</li> </ul> </p>
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService#makeTestNetwork}{Google Documentation for makeTestNetwork}
#' 
#' @usage dfp_makeTestNetwork()
#' @return a \code{list} containing all the elements of a makeTestNetworkResponse 
#' @export
dfp_makeTestNetwork <- function(){

 request_body <- make_request_body(service='NetworkService', root_name='makeTestNetwork', data=NULL)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[[makeTestNetworkResponse']])
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
#' updateNetwork
#' 
#' Updates the specified network. Currently, only the network display name can be updated.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/NetworkService#updateNetwork}{Google Documentation for updateNetwork}
#' 
#' @usage dfp_updateNetwork(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a updateNetworkResponse 
#' @export
dfp_updateNetwork <- function(request_data){

 request_body <- make_request_body(service='NetworkService', root_name='updateNetwork', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[[updateNetworkResponse']])
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
