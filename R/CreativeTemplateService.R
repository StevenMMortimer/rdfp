#' CreativeTemplateService
#' 
#' Provides methods for retrieving CreativeTemplate objects.
#' 
#' CreativeTemplateService Object Factory
#' 
#' A function to create a variety of objects that are part of the CreativeTemplateService
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.ApiError}{Google Documentation for ApiError}
#' \describe{
#'  \item{fieldPath}{a character - The OGNL field path to identify cause of error.}
#'  \item{trigger}{a character - The data that caused the error.}
#'  \item{errorString}{a character - A simple string representation of the error and reason.}
#' }
#' 
#' \strong{ApiException}
#' 
#' Exception class for holding a list of service errors.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.ApiException}{Google Documentation for ApiException}
#' \describe{
#'  \item{message}{a character (inherited from ApplicationException) - Error message.}
#'  \item{errors}{a ApiError - List of errors.}
#' }
#' 
#' \strong{ApiVersionError}
#' 
#' Errors related to the usage of API versions.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.ApiVersionError}{Google Documentation for ApiVersionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.ApplicationException}{Google Documentation for ApplicationException}
#' \describe{
#'  \item{message}{a character - Error message.}
#' }
#' 
#' \strong{AssetCreativeTemplateVariable}
#' 
#' Represents a file asset variable defined in a creative template.  Use
#' AssetCreativeTemplateVariableValue to specify the value for this variable
#' when creating TemplateCreative from the TemplateCreative.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.AssetCreativeTemplateVariable}{Google Documentation for AssetCreativeTemplateVariable}
#' \describe{
#'  \item{label}{a character (inherited from CreativeTemplateVariable) - Label that is displayed to users when creating TemplateCreative from the
#' CreativeTemplate. This attribute is required and has a maximum length of 127
#' characters.}
#'  \item{uniqueName}{a character (inherited from CreativeTemplateVariable) - Unique name used to identify the variable. This attribute is read-only and
#' is assigned by Google, by deriving from label, when a creative template
#' variable is created.}
#'  \item{description}{a character (inherited from CreativeTemplateVariable) - A descriptive help text that is displayed to users along with the label.
#' This attribute is required and has a maximum length of 255 characters.}
#'  \item{isRequired}{a boolean (inherited from CreativeTemplateVariable) - true if this variable is required to be filled in by users when creating
#' TemplateCreative from the CreativeTemplate.}
#'  \item{mimeTypes}{a AssetCreativeTemplateVariable.MimeType - A set of supported mime types. This set can be empty or null if there's no
#' constraint, meaning files of any mime types are allowed. This can take one of the following values: 
#'    \itemize{
#'      \item{JPG}
#'      \item{PNG}
#'      \item{GIF}
#'      \item{SWF}
#'    }
#'   }
#' }
#' 
#' \strong{AuthenticationError}
#' 
#' An error for an exception that occurred when authenticating.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.AuthenticationError}{Google Documentation for AuthenticationError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.BooleanValue}{Google Documentation for BooleanValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a boolean - The boolean value.}
#' }
#' 
#' \strong{CollectionSizeError}
#' 
#' Error for the size of the collection being too large
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.CollectionSizeError}{Google Documentation for CollectionSizeError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.CommonError}{Google Documentation for CommonError}
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
#' \strong{CreativeTemplate}
#' 
#' A template upon which a creative can be created.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.CreativeTemplate}{Google Documentation for CreativeTemplate}
#' \describe{
#'  \item{id}{a integer - Uniquely identifies the CreativeTemplate. This attribute is read-only and is
#' assigned by Google when a creative template is created.}
#'  \item{name}{a character - The name of the creative template. This attribute is required and has a
#' maximum length of 255 characters.}
#'  \item{description}{a character - The description of the creative template. This attribute is optional.}
#'  \item{variables}{a CreativeTemplateVariable - The list of creative template variables. This attribute is required.}
#'  \item{snippet}{a character - The snippet of the creative template, with placeholders for the associated
#' variables. This attribute is required.}
#'  \item{status}{a CreativeTemplateStatus - The status of the CreativeTemplate. This attribute is read-only and is
#' assigned by Google. This can take one of the following values: 
#'    \itemize{
#'      \item{ACTIVE - The CreativeTemplate is active}
#'      \item{INACTIVE - The CreativeTemplate is inactive. Users cannot create new creatives from
#' this template, but existing ones can be edited and continue to serve}
#'      \item{DELETED - The CreativeTemplate is deleted. Creatives created from this
#' CreativeTemplate can no longer serve.}
#'    }
#'   }
#'  \item{type}{a CreativeTemplateType - The type of the CreativeTemplate. Publisher can only create user-defined
#' template This can take one of the following values: 
#'    \itemize{
#'      \item{SYSTEM_DEFINED - Creative templates that Google defines for users to use.}
#'      \item{USER_DEFINED - Arbitrary creative templates that users can define as they see fit. Such
#' templates are bound to a specific network and can only be used with
#' creatives being created under the network.}
#'    }
#'   }
#'  \item{isInterstitial}{a boolean - true if this creative template produces interstitial creatives.}
#'  \item{isNativeEligible}{a boolean - true if this creative template produces native-eligible creatives.}
#' }
#' 
#' \strong{CreativeTemplateError}
#' 
#' A catch-all error that lists all generic errors associated with
#' CreativeTemplate.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.CreativeTemplateError}{Google Documentation for CreativeTemplateError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a CreativeTemplateError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{CANNOT_PARSE_CREATIVE_TEMPLATE - The XML of the creative template definition is malformed and cannot be
#' parsed.}
#'      \item{VARIABLE_DUPLICATE_UNIQUE_NAME - A creative template has multiple variables with the same uniqueName.}
#'      \item{VARIABLE_INVALID_UNIQUE_NAME - The creative template contains a variable with invalid characters. Valid
#' characters are letters, numbers, spaces, forward slashes, dashes, and
#' underscores.}
#'      \item{LIST_CHOICE_DUPLICATE_VALUE - Multiple choices for a CreativeTemplateListStringVariable have the same
#' value.}
#'      \item{LIST_CHOICE_NEEDS_DEFAULT - The choices for a CreativeTemplateListStringVariable do not contain the
#' default value.}
#'      \item{LIST_CHOICES_EMPTY - There are no choices specified for the list variable.}
#'      \item{NO_TARGET_PLATFORMS - No target platform is assigned to a creative template.}
#'      \item{MULTIPLE_TARGET_PLATFORMS - More than one target platform is assigned to a single creative template.}
#'      \item{UNRECOGNIZED_PLACEHOLDER - The formatter contains a placeholder which is not defined as a variable.}
#'      \item{PLACEHOLDERS_NOT_IN_FORMATTER - There are variables defined which are not being used in the formatter.}
#'      \item{MISSING_INTERSTITIAL_MACRO - The creative template is interstitial, but the formatter doesn't contain an
#' interstitial macro.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{CreativeTemplatePage}
#' 
#' Captures a page of CreativeTemplate objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.CreativeTemplatePage}{Google Documentation for CreativeTemplatePage}
#' \describe{
#'  \item{totalResultSetSize}{a integer - The size of the total result set to which this page belongs.}
#'  \item{startIndex}{a integer - The absolute index in the total result set on which this page begins.}
#'  \item{results}{a CreativeTemplate - The collection of creative templates contained within this page.}
#' }
#' 
#' \strong{CreativeTemplateVariable}
#' 
#' Represents a variable defined in a creative template.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.CreativeTemplateVariable}{Google Documentation for CreativeTemplateVariable}
#' \describe{
#'  \item{label}{a character - Label that is displayed to users when creating TemplateCreative from the
#' CreativeTemplate. This attribute is required and has a maximum length of 127
#' characters.}
#'  \item{uniqueName}{a character - Unique name used to identify the variable. This attribute is read-only and
#' is assigned by Google, by deriving from label, when a creative template
#' variable is created.}
#'  \item{description}{a character - A descriptive help text that is displayed to users along with the label.
#' This attribute is required and has a maximum length of 255 characters.}
#'  \item{isRequired}{a boolean - true if this variable is required to be filled in by users when creating
#' TemplateCreative from the CreativeTemplate.}
#' }
#' 
#' \strong{Date}
#' 
#' Represents a date.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.Date}{Google Documentation for Date}
#' \describe{
#'  \item{year}{a integer - Year (e.g., 2009)}
#'  \item{month}{a integer - Month (1..12)}
#'  \item{day}{a integer - Day (1..31)}
#' }
#' 
#' \strong{DateTime}
#' 
#' Represents a date combined with the time of day.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.DateTime}{Google Documentation for DateTime}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.DateTimeValue}{Google Documentation for DateTimeValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a DateTime - The DateTime value.}
#' }
#' 
#' \strong{DateValue}
#' 
#' Contains a date value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.DateValue}{Google Documentation for DateValue}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.FeatureError}{Google Documentation for FeatureError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.InternalApiError}{Google Documentation for InternalApiError}
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
#' \strong{InvalidUrlError}
#' 
#' Lists all errors associated with URLs.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.InvalidUrlError}{Google Documentation for InvalidUrlError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a InvalidUrlError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{ILLEGAL_CHARACTERS - The URL contains invalid characters.}
#'      \item{INVALID_FORMAT - The format of the URL is not allowed. This could occur for a number of
#' reasons. For example, if an invalid scheme is specified (like "ftp://") or
#' if a port is specified when not required, or if a query was specified when
#' not required.}
#'      \item{INSECURE_SCHEME - URL contains insecure scheme.}
#'      \item{NO_SCHEME - The URL does not contain a scheme.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{ListStringCreativeTemplateVariable}
#' 
#' Represents a list variable defined in a creative template. This is similar
#' to StringCreativeTemplateVariable, except that there are possible choices to
#' choose from. Use StringCreativeTemplateVariableValue to specify the value
#' for this variable when creating a TemplateCreative from a CreativeTemplate.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.ListStringCreativeTemplateVariable}{Google Documentation for ListStringCreativeTemplateVariable}
#' \describe{
#'  \item{defaultValue}{a character (inherited from StringCreativeTemplateVariable) - Default value to be filled in when creating creatives from the creative
#' template.}
#'  \item{choices}{a ListStringCreativeTemplateVariable.VariableChoice - The values within the list users need to select from.}
#'  \item{allowOtherChoice}{a boolean - true if a user can specifiy an 'other' value. For example, if a variable
#' called backgroundColor is defined as a list with values: red, green, blue,
#' this boolean can be set to allow a user to enter a value not on the list
#' such as purple.}
#' }
#' 
#' \strong{ListStringCreativeTemplateVariable.VariableChoice}
#' 
#' Stores variable choices that users can select from
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.ListStringCreativeTemplateVariable.VariableChoice}{Google Documentation for ListStringCreativeTemplateVariable.VariableChoice}
#' \describe{
#'  \item{label}{a character - Label that users can select from. This is displayed to users when creating a
#' TemplateCreative. This attribute is intended to be more descriptive than
#' value. This attribute is required and has a maximum length of 255
#' characters.}
#'  \item{value}{a character - Value that users can select from. When creating a TemplateCreative, the
#' value in StringCreativeTemplateVariableValue should match this value, if you
#' intend to select this value. This attribute is required and has a maximum
#' length of 255 characters.}
#' }
#' 
#' \strong{LongCreativeTemplateVariable}
#' 
#' Represents a long variable defined in a creative template.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.LongCreativeTemplateVariable}{Google Documentation for LongCreativeTemplateVariable}
#' \describe{
#'  \item{label}{a character (inherited from CreativeTemplateVariable) - Label that is displayed to users when creating TemplateCreative from the
#' CreativeTemplate. This attribute is required and has a maximum length of 127
#' characters.}
#'  \item{uniqueName}{a character (inherited from CreativeTemplateVariable) - Unique name used to identify the variable. This attribute is read-only and
#' is assigned by Google, by deriving from label, when a creative template
#' variable is created.}
#'  \item{description}{a character (inherited from CreativeTemplateVariable) - A descriptive help text that is displayed to users along with the label.
#' This attribute is required and has a maximum length of 255 characters.}
#'  \item{isRequired}{a boolean (inherited from CreativeTemplateVariable) - true if this variable is required to be filled in by users when creating
#' TemplateCreative from the CreativeTemplate.}
#'  \item{defaultValue}{a integer - Default value to be filled in when creating creatives from the creative
#' template.}
#' }
#' 
#' \strong{NotNullError}
#' 
#' Caused by supplying a null value for an attribute that cannot be null.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.NotNullError}{Google Documentation for NotNullError}
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
#' \strong{NullError}
#' 
#' Errors associated with violation of a NOT NULL check.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.NullError}{Google Documentation for NullError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a NullError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{NULL_CONTENT - Specified list/container must not contain any null elements}
#'    }
#'   }
#' }
#' 
#' \strong{NumberValue}
#' 
#' Contains a numeric value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.NumberValue}{Google Documentation for NumberValue}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.ObjectValue}{Google Documentation for ObjectValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#' }
#' 
#' \strong{ParseError}
#' 
#' Lists errors related to parsing.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.ParseError}{Google Documentation for ParseError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.PermissionError}{Google Documentation for PermissionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.PublisherQueryLanguageContextError}{Google Documentation for PublisherQueryLanguageContextError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.PublisherQueryLanguageSyntaxError}{Google Documentation for PublisherQueryLanguageSyntaxError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.QuotaError}{Google Documentation for QuotaError}
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
#' \strong{RangeError}
#' 
#' A list of all errors associated with the Range constraint.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.RangeError}{Google Documentation for RangeError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a RangeError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{TOO_HIGH}
#'      \item{TOO_LOW}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{RequiredError}
#' 
#' Errors due to missing required field.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.RequiredError}{Google Documentation for RequiredError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.RequiredNumberError}{Google Documentation for RequiredNumberError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.ServerError}{Google Documentation for ServerError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.SetValue}{Google Documentation for SetValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{values}{a Value - The values. They must all be the same type of Value and not contain
#' duplicates.}
#' }
#' 
#' \strong{SoapRequestHeader}
#' 
#' Represents the SOAP request header used by API requests.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.SoapRequestHeader}{Google Documentation for SoapRequestHeader}
#' \describe{
#'  \item{networkCode}{a character - The network code to use in the context of a request.}
#'  \item{applicationName}{a character - The name of client library application.}
#' }
#' 
#' \strong{SoapResponseHeader}
#' 
#' Represents the SOAP request header used by API responses.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.SoapResponseHeader}{Google Documentation for SoapResponseHeader}
#' \describe{
#'  \item{requestId}{a character}
#'  \item{responseTime}{a integer}
#' }
#' 
#' \strong{Statement}
#' 
#' Holds the query in PQL syntax. See link for how to form PQL.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.Statement}{Google Documentation for Statement}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.StatementError}{Google Documentation for StatementError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.String_ValueMapEntry}{Google Documentation for String_ValueMapEntry}
#' \describe{
#'  \item{key}{a character}
#'  \item{value}{a Value}
#' }
#' 
#' \strong{StringCreativeTemplateVariable}
#' 
#' Represents a string variable defined in a creative template.  Use
#' StringCreativeTemplateVariableValue to specify the value for this variable
#' when creating TemplateCreative from the TemplateCreative.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.StringCreativeTemplateVariable}{Google Documentation for StringCreativeTemplateVariable}
#' \describe{
#'  \item{label}{a character (inherited from CreativeTemplateVariable) - Label that is displayed to users when creating TemplateCreative from the
#' CreativeTemplate. This attribute is required and has a maximum length of 127
#' characters.}
#'  \item{uniqueName}{a character (inherited from CreativeTemplateVariable) - Unique name used to identify the variable. This attribute is read-only and
#' is assigned by Google, by deriving from label, when a creative template
#' variable is created.}
#'  \item{description}{a character (inherited from CreativeTemplateVariable) - A descriptive help text that is displayed to users along with the label.
#' This attribute is required and has a maximum length of 255 characters.}
#'  \item{isRequired}{a boolean (inherited from CreativeTemplateVariable) - true if this variable is required to be filled in by users when creating
#' TemplateCreative from the CreativeTemplate.}
#'  \item{defaultValue}{a character - Default value to be filled in when creating creatives from the creative
#' template.}
#' }
#' 
#' \strong{StringLengthError}
#' 
#' Errors for Strings which do not meet given length constraints.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.StringLengthError}{Google Documentation for StringLengthError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.TextValue}{Google Documentation for TextValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a character - The string value.}
#' }
#' 
#' \strong{UniqueError}
#' 
#' An error for a field which must satisfy a uniqueness constraint
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.UniqueError}{Google Documentation for UniqueError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#' }
#' 
#' \strong{UrlCreativeTemplateVariable}
#' 
#' Represents a url variable defined in a creative template.  Use
#' UrlCreativeTemplateVariableValue to specify the value for this variable when
#' creating TemplateCreative from the TemplateCreative
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.UrlCreativeTemplateVariable}{Google Documentation for UrlCreativeTemplateVariable}
#' \describe{
#'  \item{label}{a character (inherited from CreativeTemplateVariable) - Label that is displayed to users when creating TemplateCreative from the
#' CreativeTemplate. This attribute is required and has a maximum length of 127
#' characters.}
#'  \item{uniqueName}{a character (inherited from CreativeTemplateVariable) - Unique name used to identify the variable. This attribute is read-only and
#' is assigned by Google, by deriving from label, when a creative template
#' variable is created.}
#'  \item{description}{a character (inherited from CreativeTemplateVariable) - A descriptive help text that is displayed to users along with the label.
#' This attribute is required and has a maximum length of 255 characters.}
#'  \item{isRequired}{a boolean (inherited from CreativeTemplateVariable) - true if this variable is required to be filled in by users when creating
#' TemplateCreative from the CreativeTemplate.}
#'  \item{defaultValue}{a character - Default value to be filled in when creating creatives from the creative
#' template.}
#'  \item{isTrackingUrl}{a boolean - When true, if the URL is identified as from a known vendor, cache-busting
#' macros will automatically be inserted upon save.}
#' }
#' 
#' \strong{Value}
#' 
#' Value represents a value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService.Value}{Google Documentation for Value}
#' \describe{
#' }
#' 
#' 
#' 
#' @usage dfp_CreativeTemplateService_object_factory(obj_type, obj_data)
#' 
#' @param obj_type a string from one of the object types described above
#' @param obj_data a \code{list} of \code{lists} or a \code{data.frame} with the required components to create
#' the obj_type specified. All input names must match the expected attributes for the object.
#' If submitting a list of attributes to create 1 object make sure to nest it inside top-level list, so that
#' it is a list of length 1 with 1 list of attributes to create the object.
#' @return a string of formatted XML that can be inserted into a SOAP request body to the APT
#' @export
dfp_CreativeTemplateService_object_factory <- function(obj_type, obj_data){
 if(is.data.frame(obj_data)){
 sampled_names <- names(obj_data) } else if(is.list(obj_data)){
 sampled_names <- names(obj_data[[1]])
 } else { stop("obj_data must be a list or data.frame")
 }

 if(obj_type=='AssetCreativeTemplateVariable'){
 stopifnot(all(sampled_names %in% c('label', 'uniqueName', 'description', 'isRequired', 'mimeTypes')))
 }

 if(obj_type=='CreativeTemplate'){
 stopifnot(all(sampled_names %in% c('id', 'name', 'description', 'variables', 'snippet', 'status', 'type', 'isInterstitial', 'isNativeEligible')))
 }

 if(obj_type=='CreativeTemplateVariable'){
 stopifnot(all(sampled_names %in% c('label', 'uniqueName', 'description', 'isRequired')))
 }

 if(obj_type=='Date'){
 stopifnot(all(sampled_names %in% c('year', 'month', 'day')))
 }

 if(obj_type=='ListStringCreativeTemplateVariable'){
 stopifnot(all(sampled_names %in% c('defaultValue', 'choices', 'allowOtherChoice')))
 }

 if(obj_type=='ListStringCreativeTemplateVariable.VariableChoice'){
 stopifnot(all(sampled_names %in% c('label', 'value')))
 }

 if(obj_type=='LongCreativeTemplateVariable'){
 stopifnot(all(sampled_names %in% c('label', 'uniqueName', 'description', 'isRequired', 'defaultValue')))
 }

 if(obj_type=='StringCreativeTemplateVariable'){
 stopifnot(all(sampled_names %in% c('label', 'uniqueName', 'description', 'isRequired', 'defaultValue')))
 }

 if(obj_type=='UrlCreativeTemplateVariable'){
 stopifnot(all(sampled_names %in% c('label', 'uniqueName', 'description', 'isRequired', 'defaultValue', 'isTrackingUrl')))
 }

}
#' 
#' getCreativeTemplatesByStatement
#' 
#' Gets a CreativeTemplatePage of CreativeTemplate objects that satisfy the given Statement query. The following fields are supported for filtering:  a set of creative templates. 
#' \itemize{
#'   \item{id}
#'   \item{name}
#'   \item{type}
#'   \item{status}
#' }
#' 
#' @importFrom plyr llply ldply
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeTemplateService#getCreativeTemplatesByStatement}{Google Documentation for getCreativeTemplatesByStatement}
#' 
#' @usage dfp_getCreativeTemplatesByStatement(request_data, as_df=FALSE)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into a \code{data.frame}
#' @return a \code{data.frame} or \code{list} containing all the elements of a getCreativeTemplatesByStatementResponse 
#' @export
dfp_getCreativeTemplatesByStatement <- function(request_data, as_df=FALSE){
 request_body <- make_request_body(service='CreativeTemplateService', root_name='getCreativeTemplatesByStatement', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getCreativeTemplatesByStatementResponse']])
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
