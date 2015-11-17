#' ProposalService
#' 
#' Provides methods for adding, updating and retrieving Proposal objects.
#' #' To use this service, you need to have the new sales management solution
#' enabled on your network. If you do not see a "Sales" tab in <a
#' href="https://www.google.com/dfp">DoubleClick for Publishers (DFP)</a>, you
#' will not be able to use this service.
#' 
#' ProposalService Object Factory
#' 
#' A function to create a variety of objects that are part of the ProposalService
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.ApiError}{Google Documentation for ApiError}
#' \describe{
#'  \item{fieldPath}{a string -  The OGNL field path to identify cause of error.}
#'  \item{trigger}{a string -  The data that caused the error.}
#'  \item{errorString}{a string -  A simple string representation of the error and reason.}
#' }
#' 
#' \strong{ApiException}
#' 
#' Exception class for holding a list of service errors.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.ApiException}{Google Documentation for ApiException}
#' \describe{
#'  \item{message}{a string (inherited from ApplicationException) -  Error message.}
#'  \item{errors}{a ApiError -  List of errors.}
#' }
#' 
#' \strong{ApiVersionError}
#' 
#' Errors related to the usage of API versions.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.ApiVersionError}{Google Documentation for ApiVersionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.ApplicationException}{Google Documentation for ApplicationException}
#' \describe{
#'  \item{message}{a string -  Error message.}
#' }
#' 
#' \strong{AppliedLabel}
#' 
#' Represents a Label that can be applied to an entity. To negate an inherited
#' label, create an AppliedLabel with labelId as the inherited label's ID and
#' isNegated set to true.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.AppliedLabel}{Google Documentation for AppliedLabel}
#' \describe{
#'  \item{labelId}{a integer -  The ID of a created Label.}
#'  \item{isNegated}{a boolean -  isNegated should be set to true to negate the effects of labelId.}
#' }
#' 
#' \strong{ArchiveProposals}
#' 
#' The action used for archiving Proposal objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.ArchiveProposals}{Google Documentation for ArchiveProposals}
#' \describe{
#'  \item{extends ProposalAction}{see documentation for ProposalAction}
#' }
#' 
#' \strong{AudienceSegmentError}
#' 
#' Errors that could occur on audience segment related requests.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.AudienceSegmentError}{Google Documentation for AudienceSegmentError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a AudienceSegmentError.Reason - This can take one of the following values:
#'    \itemize{
#'      \item{FIRST_PARTY_AUDIENCE_SEGMENT_NOT_SUPPORTED - First party audience segment is not supported.}
#'      \item{ONLY_RULE_BASED_FIRST_PARTY_AUDIENCE_SEGMENTS_CAN_BE_CREATED - Only rule-based first-party audience segments can be created.}
#'      \item{AUDIENCE_SEGMENT_ID_NOT_FOUND - Audience segment for the given id is not found.}
#'      \item{INVALID_AUDIENCE_SEGMENT_RULE - Audience segment rule is invalid.}
#'      \item{AUDIENCE_SEGMENT_RULE_TOO_LONG - Audience segment rule contains too many ad units and/or custom criteria.}
#'      \item{INVALID_AUDIENCE_SEGMENT_NAME - Audience segment name is invalid.}
#'      \item{DUPLICATE_AUDIENCE_SEGMENT_NAME - Audience segment with this name already exists.}
#'      \item{INVALID_AUDIENCE_SEGMENT_DESCRIPTION - Audience segment description is invalid.}
#'      \item{INVALID_AUDIENCE_SEGMENT_PAGEVIEWS - Audience segment pageviews value is invalid. It must be between 1 and 12.}
#'      \item{INVALID_AUDIENCE_SEGMENT_RECENCY - Audience segment recency value is invalid. It must be between 1 and 90 if
#' pageviews > 1.}
#'      \item{INVALID_AUDIENCE_SEGMENT_MEMBERSHIP_EXPIRATION - Audience segment membership expiration value is invalid. It must be between
#' 1 and 180.}
#'      \item{INVALID_AUDIENCE_SEGMENT_CUSTOM_KEY_NAME - The given custom key cannot be part of audience segment rule due to
#' unsupported characters.}
#'      \item{INVALID_AUDIENCE_SEGMENT_CUSTOM_VALUE_NAME - The given custom value cannot be part of audience segment rule due to
#' unsupported characters.}
#'      \item{INVALID_AUDIENCE_SEGMENT_CUSTOM_VALUE_MATCH_TYPE - Broad-match custom value cannot be part of audience segment rule.}
#'      \item{INVALID_NESTED_FIRST_PARTY_AUDIENCE_SEGMENT - Audience segment rule cannot contain itself.}
#'      \item{INVALID_NESTED_THIRD_PARTY_AUDIENCE_SEGMENT - Audience segment rule cannot contain a nested third-party segment.}
#'      \item{INACTIVE_NESTED_AUDIENCE_SEGMENT - Audience segment rule cannot contain a nested inactive segment.}
#'      \item{AUDIENCE_SEGMENT_GLOBAL_LICENSE_ERROR - An error occured when purchasing global licenses.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{AuthenticationError}
#' 
#' An error for an exception that occurred when authenticating.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.AuthenticationError}{Google Documentation for AuthenticationError}
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
#' \strong{AvailableBillingError}
#' 
#' Lists all errors associated with the availability of billing settings based
#' on proposal network settings.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.AvailableBillingError}{Google Documentation for AvailableBillingError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a AvailableBillingError.Reason - This can take one of the following values:
#'    \itemize{
#'      \item{BILLING_SOURCE_IS_NOT_AVAILABLE - The billing source provided is not available in proposal network settings.}
#'      \item{BILLING_SCHEDULE_IS_NOT_AVAILABLE - The billing schedule provided is not available in proposal network settings.}
#'      \item{BILLING_CAP_IS_NOT_AVAILABLE - The billing cap provided is not available in proposal network settings.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{BaseCustomFieldValue}
#' 
#' The value of a CustomField for a particular entity.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.BaseCustomFieldValue}{Google Documentation for BaseCustomFieldValue}
#' \describe{
#'  \item{customFieldId}{a integer -  Id of the CustomField to which this value belongs. This attribute is
#' required.}
#' }
#' 
#' \strong{BillingError}
#' 
#' Lists all errors associated with the billing settings of a proposal or
#' proposal line item.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.BillingError}{Google Documentation for BillingError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a BillingError.Reason - The error reason represented by an enum. This can take one of the following values:
#'    \itemize{
#'      \item{UNSUPPORTED_BILLING_SCHEDULE - Found unsupported billing schedule.}
#'      \item{UNSUPPORTED_BILLING_CAP - Found unsupported billing cap.}
#'      \item{MISSING_BILLING_SOURCE - Billing source is missing when either billing scheule or billing cap is
#' provided.}
#'      \item{MISSING_BILLING_SCHEDULE - Billing schedule is missing when the provided billing source is CONSTRACTED.}
#'      \item{MISSING_BILLING_CAP - Billing cap is missing when the provided billing source is not CONSTRACTED.}
#'      \item{INVALID_BILLING_SOURCE_FOR_OFFLINE - The billing source is invalid for offline proposal line item.}
#'      \item{UPDATE_BILLING_NOT_ALLOWED - Billing settings cannot be updated once the proposal has been approved.}
#'      \item{MISSING_BILLING_BASE - Billing base is missing when the provided billing source is CONTRACTED.}
#'      \item{INVALID_BILLING_BASE - The billing base is invalid for the provided billing source.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{BooleanValue}
#' 
#' Contains a boolean value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.BooleanValue}{Google Documentation for BooleanValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a boolean -  The boolean value.}
#' }
#' 
#' \strong{BypassProposalWorkflowRules}
#' 
#' The action used to bypass all rules associated with WorkflowRequest
#' WorkflowRequests for Proposal objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.BypassProposalWorkflowRules}{Google Documentation for BypassProposalWorkflowRules}
#' \describe{
#'  \item{extends ProposalAction}{see documentation for ProposalAction}
#' }
#' 
#' \strong{CollectionSizeError}
#' 
#' Error for the size of the collection being too large
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.CollectionSizeError}{Google Documentation for CollectionSizeError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.CommonError}{Google Documentation for CommonError}
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
#' \strong{CustomFieldValue}
#' 
#' The value of a CustomField that does not have a CustomField dataType of
#' CustomFieldDataType DROP_DOWN.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.CustomFieldValue}{Google Documentation for CustomFieldValue}
#' \describe{
#'  \item{customFieldId}{a integer (inherited from BaseCustomFieldValue) -  Id of the CustomField to which this value belongs. This attribute is
#' required.}
#'  \item{value}{a Value -  The value for this field. The appropriate type of Value is determined by the
#' CustomField dataType of the CustomField that this conforms to.}
#' }
#' 
#' \strong{CustomFieldValueError}
#' 
#' Errors specific to editing custom field values
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.CustomFieldValueError}{Google Documentation for CustomFieldValueError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a CustomFieldValueError.Reason - The error reason represented by an enum. This can take one of the following values:
#'    \itemize{
#'      \item{CUSTOM_FIELD_NOT_FOUND - An attempt was made to modify or create a CustomFieldValue for a CustomField
#' that does not exist.}
#'      \item{CUSTOM_FIELD_INACTIVE - An attempt was made to create a new value for a custom field that is
#' inactive.}
#'      \item{CUSTOM_FIELD_OPTION_NOT_FOUND - An attempt was made to modify or create a CustomFieldValue corresponding to
#' a CustomFieldOption that could not be found.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{Date}
#' 
#' Represents a date.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.Date}{Google Documentation for Date}
#' \describe{
#'  \item{year}{a integer -  Year (e.g., 2009)}
#'  \item{month}{a integer -  Month (1..12)}
#'  \item{day}{a integer -  Day (1..31)}
#' }
#' 
#' \strong{DateTime}
#' 
#' Represents a date combined with the time of day.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.DateTime}{Google Documentation for DateTime}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.DateTimeValue}{Google Documentation for DateTimeValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a DateTime -  The DateTime value.}
#' }
#' 
#' \strong{DateValue}
#' 
#' Contains a date value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.DateValue}{Google Documentation for DateValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a Date -  The Date value.}
#' }
#' 
#' \strong{DropDownCustomFieldValue}
#' 
#' A CustomFieldValue for a CustomField that has a CustomField dataType of
#' CustomFieldDataType DROP_DOWN
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.DropDownCustomFieldValue}{Google Documentation for DropDownCustomFieldValue}
#' \describe{
#'  \item{customFieldId}{a integer (inherited from BaseCustomFieldValue) -  Id of the CustomField to which this value belongs. This attribute is
#' required.}
#'  \item{customFieldOptionId}{a integer -  The CustomFieldOption id ID of the CustomFieldOption for this value.}
#' }
#' 
#' \strong{EntityChildrenLimitReachedError}
#' 
#' Lists errors relating to having too many children on an entity.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.EntityChildrenLimitReachedError}{Google Documentation for EntityChildrenLimitReachedError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a EntityChildrenLimitReachedError.Reason - This can take one of the following values:
#'    \itemize{
#'      \item{LINE_ITEM_LIMIT_FOR_ORDER_REACHED - The number of line items on the order exceeds the max number of line items
#' allowed per order in the network.}
#'      \item{CREATIVE_ASSOCIATION_LIMIT_FOR_LINE_ITEM_REACHED - The number of creatives associated with the line item exceeds the max number
#' of creatives allowed to be associated with a line item in the network.}
#'      \item{AD_UNIT_LIMIT_FOR_PLACEMENT_REACHED - The number of ad units on the placement exceeds the max number of ad units
#' allowed per placement in the network.}
#'      \item{TARGETING_EXPRESSION_LIMIT_FOR_LINE_ITEM_REACHED - The number of targeting expressions on the line item exceeds the max number
#' of targeting expressions allowed per line item in the network.}
#'      \item{CUSTOM_TARGETING_VALUES_FOR_KEY_LIMIT_REACHED - The number of custom targeting values for the free-form or predefined custom
#' targeting key exceeds the max number allowed.}
#'      \item{TARGETING_EXPRESSION_LIMIT_FOR_CREATIVES_ON_LINE_ITEM_REACHED - The total number of targeting expressions on the creatives for the line item
#' exceeds the max number allowed per line item in the network.}
#'      \item{ATTACHMENT_LIMIT_FOR_PROPOSAL_REACHED - The number of attachments added to the proposal exceeds the max number
#' allowed per proposal in the network.}
#'      \item{PROPOSAL_LINE_ITEM_LIMIT_FOR_PROPOSAL_REACHED - The number of proposal line items on the proposal exceeds the max number
#' allowed per proposal in the network.}
#'      \item{PRODUCT_LIMIT_FOR_PRODUCT_PACKAGE_REACHED - The number of product package items on the product package exceeds the max
#' number allowed per product package in the network.}
#'      \item{PRODUCT_TEMPLATE_AND_PRODUCT_BASE_RATE_LIMIT_FOR_RATE_CARD_REACHED - The number of product template and product base rates on the rate card
#' (including excluded product base rates) exceeds the max number allowed per
#' rate card in the network.}
#'      \item{PRODUCT_PACKAGE_ITEM_BASE_RATE_LIMIT_FOR_RATE_CARD_REACHED - The number of product package item base rates on the rate card exceeds the
#' max number allowed per rate card in the network.}
#'      \item{PREMIUM_LIMIT_FOR_RATE_CARD_REACHED - The number of premiums of the rate card exceeds the max number allowed per
#' rate card in the network.}
#'      \item{AD_UNIT_LIMIT_FOR_AD_EXCLUSION_RULE_TARGETING_REACHED - The number of ad units on AdExclusionRule inventoryTargeting exceeds the max
#' number of ad units allowed per ad exclusion rule inventory targeting in the
#' network.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{EntityLimitReachedError}
#' 
#' An error that occurs when creating an entity if the limit on the number of
#' allowed entities for a network has already been reached.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.EntityLimitReachedError}{Google Documentation for EntityLimitReachedError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a EntityLimitReachedError.Reason - This can take one of the following values:
#'    \itemize{
#'      \item{CUSTOM_TARGETING_VALUES_LIMIT_REACHED - The number of custom targeting values exceeds the max number allowed in the
#' network.}
#'      \item{AD_EXCLUSION_RULES_LIMIT_REACHED - The number of ad exclusion rules exceeds the max number allowed in the
#' network.}
#'      \item{FIRST_PARTY_AUDIENCE_SEGMENTS_LIMIT_REACHED - The number of first party audience segments exceeds the max number allowed
#' in the network.}
#'      \item{PLACEMENTS_LIMIT_REACHED - The number of active placements exceeds the max number allowed in the
#' network.}
#'      \item{LINE_ITEMS_LIMIT_REACHED - The number of line items excceeds the max number allowed in the network.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{ExchangeRateError}
#' 
#' Lists all errors associated with ExchangeRate objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.ExchangeRateError}{Google Documentation for ExchangeRateError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.FeatureError}{Google Documentation for FeatureError}
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
#' \strong{ForecastError}
#' 
#' Errors that can result from a forecast request.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.ForecastError}{Google Documentation for ForecastError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a ForecastError.Reason - The reason for the forecast error. This can take one of the following values:
#'    \itemize{
#'      \item{SERVER_NOT_AVAILABLE - The forecast could not be retrieved due to a server side connection problem.
#' Please try again soon.}
#'      \item{INTERNAL_ERROR - There was an unexpected internal error.}
#'      \item{NO_FORECAST_YET - The forecast could not be retrieved because there is not enough forecasting
#' data available yet. It may take up to one week before enough data is
#' available.}
#'      \item{NOT_ENOUGH_INVENTORY - There's not enough inventory for the requested reservation.}
#'      \item{SUCCESS - No error from forecast.}
#'      \item{ZERO_LENGTH_RESERVATION - The requested reservation is of zero length. No forecast is returned.}
#'      \item{EXCEEDED_QUOTA - The number of requests made per second is too high and has exceeded the
#' allowable limit. The recommended approach to handle this error is to wait
#' about 5 seconds and then retry the request. Note that this does not
#' guarantee the request will succeed. If it fails again, try increasing the
#' wait time.  Another way to mitigate this error is to limit requests to 2 per
#' second. Once again this does not guarantee that every request will succeed,
#' but may help reduce the number of times you receive this error.}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.InternalApiError}{Google Documentation for InternalApiError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.InvalidUrlError}{Google Documentation for InvalidUrlError}
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
#' \strong{LabelEntityAssociationError}
#' 
#' Errors specific to creating label entity associations.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.LabelEntityAssociationError}{Google Documentation for LabelEntityAssociationError}
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
#' \strong{LineItemOperationError}
#' 
#' Lists all errors for executing operations on line items
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.LineItemOperationError}{Google Documentation for LineItemOperationError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a LineItemOperationError.Reason - The error reason represented by an enum. This can take one of the following values:
#'    \itemize{
#'      \item{NOT_ALLOWED - The operation is not allowed due to lack of permissions.}
#'      \item{NOT_APPLICABLE - The operation is not applicable for the current state of the LineItem.}
#'      \item{HAS_COMPLETED - The LineItem is completed. A LineItemAction cannot be applied to a line item
#' that is completed.}
#'      \item{HAS_NO_ACTIVE_CREATIVES - The LineItem has no active creatives. A line item cannot be activated with
#' no active creatives.}
#'      \item{CANNOT_ACTIVATE_LEGACY_DFP_LINE_ITEM - A LineItem of type LineItemType LEGACY_DFP cannot be Activated.}
#'      \item{CANNOT_DELETE_DELIVERED_LINE_ITEM - Deleting an LineItem that has delivered is not allowed}
#'      \item{CANNOT_RESERVE_COMPANY_CREDIT_STATUS_NOT_ACTIVE - Reservation cannot be made for line item because the LineItem advertiserId
#' it is associated with has Company creditStatus that is not ACTIVE or
#' ON_HOLD.}
#'      \item{CANNOT_ACTIVATE_INVALID_COMPANY_CREDIT_STATUS - Cannot activate line item because the LineItem advertiserId it is associated
#' with has Company creditStatus that is not ACTIVE, INACTIVE, or ON_HOLD.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{Money}
#' 
#' Represents a money amount.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.Money}{Google Documentation for Money}
#' \describe{
#'  \item{currencyCode}{a string -  Three letter currency code in string format.}
#'  \item{microAmount}{a integer -  Money values are always specified in terms of micros which are a millionth
#' of the fundamental currency unit. For US dollars, $1 is 1,000,000 micros.}
#' }
#' 
#' \strong{NotNullError}
#' 
#' Caused by supplying a null value for an attribute that cannot be null.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.NotNullError}{Google Documentation for NotNullError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.NumberValue}{Google Documentation for NumberValue}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.ObjectValue}{Google Documentation for ObjectValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#' }
#' 
#' \strong{PackageActionError}
#' 
#' Lists all errors for executing actions on Package objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.PackageActionError}{Google Documentation for PackageActionError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a PackageActionError.Reason - The error reason represented by an enum. This can take one of the following values:
#'    \itemize{
#'      \item{PROPOSAL_LINE_ITEMS_HAVE_BEEN_CREATED - The operation is not applicable because the proposal line items under these
#' packages have already been created.}
#'      \item{PROPOSAL_NOT_EDITABLE - The operation is not applicable because the containing proposal is not
#' editable.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{PackageError}
#' 
#' Lists all errors associated with Package objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.PackageError}{Google Documentation for PackageError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a PackageError.Reason - The error reason represented by an enum. This can take one of the following values:
#'    \itemize{
#'      \item{INVAILD_PRODUCT_PACKAGE - Package cannot be created from an inactive or archived product package.}
#'      \item{INACTIVE_RATE_CARD - The rate card is inactive.}
#'      \item{PRODUCT_PACKAGE_NOT_IN_RATE_CARD - There is no association between the product package and the rate card.}
#'      \item{HAS_NO_UNARCHIVED_PRODUCT_PACKAGE_ITEM - There are no unarchived product package items in this product package.}
#'      \item{NOT_SAME_RATE_CARD - The package's rate card is not the same as other packages or proposal line
#' items in the proposal.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{ParseError}
#' 
#' Lists errors related to parsing.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.ParseError}{Google Documentation for ParseError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.PermissionError}{Google Documentation for PermissionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.PrecisionError}{Google Documentation for PrecisionError}
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
#' \strong{ProductError}
#' 
#' A catch-all error that lists all generic errors associated with Product.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.ProductError}{Google Documentation for ProductError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a ProductError.Reason - This can take one of the following values:
#'    \itemize{
#'      \item{TEMPLATE_NOT_FOUND - The specified template is not found.}
#'      \item{MALFORMED_PRODUCT_ID - The productId is not correctly formed.}
#'      \item{BAD_PRODUCT_ID_FEATURE - The productId does not match the expanded features configured in its product
#' template.}
#'      \item{BAD_PRODUCT_TEMPLATE_ID - The template id specified in the parameters does not match the template id
#' implied in the productId.}
#'      \item{CANNOT_UPDATE_ARCHIVED_PRODUCT - Cannot update an archived product.}
#'      \item{QUERY_TOO_LARGE - The query is too large to be processed.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{Proposal}
#' 
#' A Proposal represents an agreement between an interactive advertising seller
#' and a buyer that specifies the details of an advertising campaign.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.Proposal}{Google Documentation for Proposal}
#' \describe{
#'  \item{id}{a integer -  The unique ID of the Proposal. This attribute is readonly and is assigned by
#' Google.}
#'  \item{dfpOrderId}{a integer -  The unique ID of corresponding Order. This attribute is readonly. This will
#' be null if the Proposal has not been pushed to DFP.}
#'  \item{name}{a string -  The name of the Proposal. This value is required to create a proposal and
#' has a maximum length of 255 characters. This attribute is copied to Order
#' name when the proposal turns into an order. This attribute can be configured
#' as editable after the proposal has been submitted. Please check with your
#' network administrator for editable fields configuration.}
#'  \item{pricingModel}{a PricingModel - The option to specify whether the Proposal uses the Net or Gross pricing
#' model. This field is optional and defaults to PricingModel NET. This can take one of the following values:
#'    \itemize{
#'      \item{NET - Indicates using net pricing model to calculate the price.}
#'      \item{GROSS - Indicates using gross pricing model to calculate the price.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{startDateTime}{a DateTime -  The date and time at which the order and line items associated with the
#' Proposal are eligible to begin serving. This attribute is readonly and is
#' derived from the proposal line item of the proposal which has the earliest
#' ProposalLineItem startDateTime. This attribute will be null, if this
#' proposal has no related line items, or none of its line items have a start
#' time.}
#'  \item{endDateTime}{a DateTime -  The date and time at which the order and line items associated with the
#' Proposal stop being served. This attribute is readonly and is derived from
#' the proposal line item of the proposal which has the latest ProposalLineItem
#' endDateTime. This attribute will be null, if this proposal has no related
#' line items, or none of its line items have an end time.}
#'  \item{timeZoneId}{a string -  The time zone ID in tz database format (e.g. "America/Los_Angeles") for this
#' Proposal. The startDateTime and endDateTime will be returned in this time
#' zone. This attribute is optional and defaults to the network?s time zone.}
#'  \item{status}{a ProposalStatus - The status of the Proposal. This attribute is readonly. This can take one of the following values:
#'    \itemize{
#'      \item{DRAFT - Indicates that the Proposal has just been created or retracted but no
#' approval has been requested yet.}
#'      \item{PENDING_APPROVAL - Indicates that a request for approval has been made for the Proposal.}
#'      \item{APPROVED - Indicates that the Proposal has been approved and is ready to serve.}
#'      \item{REJECTED - Indicates that the Proposal has been rejected in the approval workflow.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{isArchived}{a boolean -  The archival status of the Proposal. This attribute is readonly.}
#'  \item{advertiser}{a ProposalCompanyAssociation -  The advertiser, to which this Proposal belongs, and a set of Contact objects
#' associated with the advertiser. The ProposalCompanyAssociation type of this
#' attribute should be ProposalCompanyAssociationType ADVERTISER. This
#' attribute is required when the proposal turns into an order, and its
#' ProposalCompanyAssociation companyId will be copied to Order advertiserId.
#' This attribute becomes readonly once the Proposal has been pushed.}
#'  \item{agencies}{a ProposalCompanyAssociation -  List of agencies and the set of Contact objects associated with each agency.
#' This attribute is optional. A Proposal only has at most one Company with
#' ProposalCompanyAssociationType PRIMARY_AGENCY type, but a Company can appear
#' more than once with different ProposalCompanyAssociationType values. If
#' primary agency exists, its ProposalCompanyAssociation companyId will be
#' copied to Order agencyId when the proposal turns into an order.}
#'  \item{probabilityOfClose}{a integer -  The probability to close this Proposal. This percentage value is in terms of
#' millipercent, and should be multiples of 10 with the range from 0 to 100000.
#' This attribute is required and will be used to calculate the revenue in
#' reporting.}
#'  \item{billingCap}{a BillingCap - The billing cap of this Proposal. This attribute is optional and default
#' value is BillingCap CAPPED_CUMULATIVE. Either this attribute or
#' billingSchedule will be used, according to the billingSource. This attribute
#' can be configured as editable after the proposal has been submitted. Please
#' check with your network administrator for editable fields configuration. This can take one of the following values:
#'    \itemize{
#'      \item{NO_CAP - There is no cap for each billing month.}
#'      \item{CAPPED_CUMULATIVE - Use a billing source of capped actuals with a billing cap of cumulative to
#' bill your advertiser up to a campaign's capped amount, regardless of the
#' number of impressions that are served each month.}
#'      \item{CAPPED_PER_BILLING_CYCLE - Use a billing source of capped actuals with a billing cap of the billing
#' cycle to bill your advertiser up to a capped amount for each billing cycle
#' of a campaign, regardless of the number of impressions that are served.}
#'      \item{CAPPED_CUMULATIVE_PER_BILLING_CYCLE - Use a billing source of capped actuals with a billing cap of cumulative per
#' billing cycle to bill your advertiser up to a capped amount for each billing
#' cycle of a campaign and carry forward the balance of over- or
#' under-delivered impressions towards the number of impressions delivered in
#' future billing cycles of the campaign.}
#'      \item{CAPPED_WITH_ROLLOVER_PER_BILLING_CYCLE - Use a billing source of capped actuals with a billing cap of cumulative per
#' billing cycle to bill your advertiser up to a capped amount for each cycle
#' of a campaign and carry forward the balance of over- or under-delivered
#' impressions towards the number of impressions delivered in future cycles of
#' the campaign.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{billingSchedule}{a BillingSchedule - The billing schedule of this Proposal. This attribute is optional and
#' default value is BillingSchedule PRORATED. Either this attribute or
#' billingCap will be used, according to the billingSource. This attribute can
#' be configured as editable after the proposal has been submitted. Please
#' check with your network administrator for editable fields configuration. This can take one of the following values:
#'    \itemize{
#'      \item{PREPAID - Charged based on the contracted value after the first month of the campaign.}
#'      \item{END_OF_THE_CAMPAIGN - Charged based on the contracted value after the last month of the campaign.}
#'      \item{STRAIGHTLINE - Use a billing source of contracted with a billing schedule of straightline
#' to bill your advertiser the same amount each month, regardless of the number
#' of days in each month.}
#'      \item{PRORATED - Use a billing source of contracted with a billing schedule of prorated to
#' bill your advertiser proportionally based on the amount of days in each
#' month.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{billingSource}{a BillingSource - The billing source of this Proposal. This attribute is optional and default
#' value is BillingSource THIRD_PARTY_VOLUME. If the value is BillingSource
#' CONTRACTED, the billingSchedule will be used for billing, otherwise the
#' billingCap will be used. This attribute can be configured as editable after
#' the proposal has been submitted. Please check with your network
#' administrator for editable fields configuration. This can take one of the following values:
#'    \itemize{
#'      \item{CONTRACTED - Charge based on the quantity of impressions, clicks, or days booked,
#' regardless of what actually delivered.}
#'      \item{DFP_VOLUME - Charge based on what actually delivered counted by DFP}
#'      \item{THIRD_PARTY_VOLUME - Charge based on what actually delivered counted by third party ads server}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{billingBase}{a BillingBase - The billing base of this Proposal. For example, for a flat fee BillingSource
#' CONTRACTED contracted billingSource, set this to BillingBase REVENUE. This
#' attribute is optional and defaults to BillingBase VOLUME. This attribute can
#' be configured as editable after the proposal has been submitted. Please
#' check with your network administrator for editable fields configuration. This can take one of the following values:
#'    \itemize{
#'      \item{VOLUME - Billing calculation (eg. proration) should be based on volume.}
#'      \item{REVENUE - Billing calculation (eg. proration) should be based on revenue.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{poNumber}{a string -  User defined purchase order number for the Proposal. This attribute is
#' optional and has a maximum length of 63 characters. It is copied to Order
#' poNumber when the proposal turns into an order. This attribute can be
#' configured as editable after the proposal has been submitted. Please check
#' with your network administrator for editable fields configuration.}
#'  \item{notes}{a string -  Provides any additional notes that may annotate the Proposal. This attribute
#' is optional and has a maximum length of 65,535 characters. This attribute
#' can be configured as editable after the proposal has been submitted. Please
#' check with your network administrator for editable fields configuration.}
#'  \item{budget}{a Money -  The total budget allocated for all the proposal line items belonging to the
#' Proposal. It supports precision of 2 decimal places in terms of the
#' fundamental currency unit, so the Money microAmount must be multiples of
#' 10000. This attribute is optional and default value is 0. The Money
#' currencyCode is readonly.}
#'  \item{primarySalesperson}{a SalespersonSplit -  The primary salesperson who brokered the transaction with the advertiser.
#' This attribute is required when the proposal turns into an order. This
#' attribute can be configured as editable after the proposal has been
#' submitted. Please check with your network administrator for editable fields
#' configuration.}
#'  \item{secondarySalespeople}{a SalespersonSplit -  List of secondary salespeople who are responsible for the sales of the
#' Proposal besides primary salesperson. This attribute is optional. A proposal
#' could have 8 secondary salespeople at most, but must also have a
#' primarySalesperson if any secondary salesperson exists. This attribute can
#' be configured as editable after the proposal has been submitted. Please
#' check with your network administrator for editable fields configuration.}
#'  \item{salesPlannerIds}{a integer -  List of unique IDs of User objects who are the sales planners of the
#' Proposal. This attribute is optional. A proposal could have 8 sales planners
#' at most. This attribute can be configured as editable after the proposal has
#' been submitted. Please check with your network administrator for editable
#' fields configuration.}
#'  \item{primaryTraffickerId}{a integer -  The unique ID of the User who is primary trafficker and is responsible for
#' trafficking the Proposal. This attribute is required when the proposal turns
#' into an order, and will be copied to Order primaryTraffickerId . This
#' attribute can be configured as editable after the proposal has been
#' submitted. Please check with your network administrator for editable fields
#' configuration.}
#'  \item{secondaryTraffickerIds}{a integer -  List of unique IDs of User objects who are responsible for trafficking the
#' Proposal besides the primary trafficker. This attribute is optional. A
#' proposal could have 8 secondary traffickers at most, but must also have a
#' primary trafficker if any secondary trafficker exists. This attribute can be
#' configured as editable after the proposal has been submitted. Please check
#' with your network administrator for editable fields configuration.}
#'  \item{appliedTeamIds}{a integer -  The IDs of all teams that the Proposal is on directly. This attribute is
#' optional. This attribute can be configured as editable after the proposal
#' has been submitted. Please check with your network administrator for
#' editable fields configuration.}
#'  \item{customFieldValues}{a BaseCustomFieldValue -  The values of the custom fields associated with the Proposal. This attribute
#' is optional. This attribute can be configured as editable after the proposal
#' has been submitted. Please check with your network administrator for
#' editable fields configuration.}
#'  \item{appliedLabels}{a AppliedLabel -  The set of labels applied directly to the Proposal. This attribute is
#' optional.}
#'  \item{effectiveAppliedLabels}{a AppliedLabel -  Contains the set of labels applied directly to the proposal as well as those
#' inherited ones. If a label has been negated, only the negated label is
#' returned. This field is readonly and is assigned by Google.}
#'  \item{advertiserDiscount}{a integer -  The discount applied to the Proposal according to the advertiser. The
#' percentage value is stored as millipercents, and must be multiples of 10
#' with the range from 0 to 99990. This attribute is optional and default value
#' is 0.}
#'  \item{proposalDiscount}{a integer -  The proposal discount, which will be applied to all ProposalLineItem objects
#' in the Proposal. The percentage value is stored as millipercents, and must
#' be multiples of 10 with the range from 0 to 99990. This attribute is
#' optional and default value is 0.}
#'  \item{currencyCode}{a string -  The currency code of this Proposal. This attribute is optional and defaults
#' to network's currency code.}
#'  \item{exchangeRate}{a integer -  The exchange rate from the currencyCode to the Network currencyCode
#' network's currency. The value is stored as the exchange rate times
#' 10,000,000,000 truncated to a long. This attribute is readonly and is
#' assigned by Google when first created or updated with refreshExchangeRate
#' set to true. This attribute is ignored if the feature is not enabled.}
#'  \item{refreshExchangeRate}{a boolean -  Set this field to true to update the exchangeRate to the latest exchange
#' rate when updating the proposal. This attribute is optional and defaults to
#' false. This attribute is ignored if the feature is not enabled.}
#'  \item{agencyCommission}{a integer -  The commission for the primary agency of the Proposal. The percentage value
#' is stored as millipercents, and must be multiples of 10 with the range from
#' 0 to 99990. This attribute is optional and default value is 0.}
#'  \item{valueAddedTax}{a integer -  The value added tax (VAT) applied on final cost of the Proposal. The
#' percentage value is stored as millipercents, and must be multiples of 10
#' with the range from 0 to 100000. This attribute is optional and default
#' value is 0.}
#'  \item{isSold}{a boolean -  Indicates whether the proposal has been sold, i.e., corresponds to whether
#' the status of an Order is OrderStatus APPROVED or OrderStatus PAUSED. This
#' attribute is readonly.}
#'  \item{approvalStatus}{a ProposalApprovalStatus - The approval status of the Proposal for the active user or null if the
#' active user has no action needed. This attribute is readonly and is assigned
#' by Google. This can take one of the following values:
#'    \itemize{
#'      \item{PENDING - Indicates that the Proposal is pending on active user's approval.}
#'      \item{NON_PENDING - Indicates that active user is the approver, and the related approval
#' action(s) of the Proposal has been performed or not activated yet, or the
#' proposal is retracted.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{lastModifiedDateTime}{a DateTime -  The date and time this Proposal was last modified. This attribute is
#' readonly and is assigned by Google when a Proposal is updated.}
#'  \item{resources}{a ProposalLink -  The list of resources on this Proposal. This attribute is optional. This
#' attribute can be configured as editable after the proposal has been
#' submitted. Please check with your network administrator for editable fields
#' configuration.}
#'  \item{actualExpiryTime}{a DateTime -  The actual date and time at which the inventory reserved by the Proposal
#' will expire. This field is read-only / assigned by Google.}
#'  \item{expectedExpiryTime}{a DateTime -  The expected date and time at which the inventory reserved by the Proposal
#' will expire. This field is read-only / assigned by Google.}
#'  \item{thirdPartyAdServerId}{a integer -  A predefined third party ad server, which will be used to fill in
#' reconciliation. All predefined third party ad servers can be found in the
#' Third_Party_Company PQL table. If actual third party ad server is not in the
#' predefined list, this field is set to 0, and actual third party ad server
#' name is set in customThirdPartyAdServerName. Third party ad server is
#' optional. By default, this field is 0, and customThirdPartyAdServerName is
#' null which means no third party ad server is specified.}
#'  \item{customThirdPartyAdServerName}{a string -  When actual third party ad server is not in the predefined list,
#' thirdPartyAdServerId is set to 0, and actual third party ad server name is
#' set here. When thirdPartyAdServerId is not 0, this field is ignored.}
#'  \item{lastRetractionDetails}{a RetractionDetails -  Details describing the most recent proposal retraction. This field is
#' readonly and assigned by Google.}
#' }
#' 
#' \strong{ProposalAction}
#' 
#' Represents the actions that can be performed on Proposal objects. May take one of the actions listed below.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.ProposalAction}{Google Documentation for ProposalAction}
#' \describe{
#'  \item{ArchiveProposals}{The action used for archiving Proposal objects.}
#'  \item{BypassProposalWorkflowRules}{The action used to bypass all rules associated with WorkflowRequest
#' WorkflowRequests for Proposal objects.}
#'  \item{RetractProposals}{The action used for retracting Proposal objects.}
#'  \item{SubmitProposalsForApprovalBypassValidation}{The action used for submitting Proposal objects for approval and bypassing
#' workflow validation.}
#'  \item{SubmitProposalsForApproval}{The action used for submitting Proposal objects for approval.}
#'  \item{UnarchiveProposals}{The action used for unarchiving Proposal objects.}
#' }
#' 
#' \strong{ProposalActionError}
#' 
#' Lists all errors associated with performing actions on Proposal objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.ProposalActionError}{Google Documentation for ProposalActionError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a ProposalActionError.Reason - The error reason represented by an enum. This can take one of the following values:
#'    \itemize{
#'      \item{NOT_APPLICABLE - The operation is not applicable to the current state.}
#'      \item{IS_ARCHIVED - The operation cannot be applied because the proposal is archived.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{ProposalCompanyAssociation}
#' 
#' A ProposalCompanyAssociation represents a Company associated with the
#' Proposal and a set of Contact objects belonging to the company.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.ProposalCompanyAssociation}{Google Documentation for ProposalCompanyAssociation}
#' \describe{
#'  \item{companyId}{a integer -  The unique ID of the Company associated with the Proposal. This attribute is
#' required.}
#'  \item{type}{a ProposalCompanyAssociationType - The association type of the Company and Proposal. This attribute is
#' required. This can take one of the following values:
#'    \itemize{
#'      \item{PRIMARY_AGENCY - The company is a primary agency.}
#'      \item{BILLING_AGENCY - The company is a billing agency.}
#'      \item{BRANDING_AGENCY - The company is a branding agency.}
#'      \item{OTHER_AGENCY - The company is other type of agency.}
#'      \item{ADVERTISER - The company is advertiser.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{contactIds}{a integer -  List of unique IDs for Contact objects of the Company. This attribute is
#' optional.}
#' }
#' 
#' \strong{ProposalError}
#' 
#' Lists all errors associated with proposals.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.ProposalError}{Google Documentation for ProposalError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a ProposalError.Reason - The error reason represented by an enum. This can take one of the following values:
#'    \itemize{
#'      \item{AD_SERVER_UNKNOWN_ERROR - Unknown error from ad-server}
#'      \item{AD_SERVER_API_ERROR - Ad-server reports an api error for the operation.}
#'      \item{UPDATE_ADVERTISER_NOT_ALLOWED - Advertiser cannot be updated once the proposal has been reserved.}
#'      \item{UPDATE_PROPOSAL_NOT_ALLOWED - Proposal cannot be updated when its status is not DRAFT or it is archived.}
#'      \item{INVALID_CONTACT - Contact associated with a proposal does not belong to the specific company.}
#'      \item{DUPLICATED_CONTACT - Contact associated with a proposal's advertiser or agency is duplicated.}
#'      \item{UNACCEPTABLE_COMPANY_CREDIT_STATUS - A proposal cannot be created or updated because the company it is associated
#' with has Company creditStatus that is not ACTIVE or ON_HOLD.}
#'      \item{PRIMARY_AGENCY_REQUIRED - Cannot have other agencies without a primary agency.}
#'      \item{PRIMARY_AGENCY_NOT_UNIQUE - Cannot have more than one primary agency.}
#'      \item{DUPLICATED_COMPANY_ASSOCIATION - Advertiser or agency associated with a proposal is duplicated.}
#'      \item{DUPLICATED_SALESPERSON - Found duplicated primary or secondary sales person.}
#'      \item{DUPLICATED_SALES_PLANNER - Found duplicated sales planner.}
#'      \item{DUPLICATED_TRAFFICKER - Found duplicated primary or secondary trafficker.}
#'      \item{HAS_NO_UNARCHIVED_PROPOSAL_LINEITEMS - The proposal has no unarchived proposal line items.}
#'      \item{UNSUPPORTED_PROPOSAL_CURRENCY_CODE - The currency code of the proposal is not supported by the current network.
#' All supported currencies can be found in the union of Network currencyCode
#' and Network secondaryCurrencyCodes.}
#'      \item{INVALID_POC - The POC value of the proposal is invalid.}
#'      \item{UPDATE_CURRENCY_NOT_ALLOWED - Currency cannot be updated once the proposal has been reserved.}
#'      \item{UPDATE_TIME_ZONE_NOT_ALLOWED - Time zone cannot be updated once the proposal has been sold.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{ProposalLineItemError}
#' 
#' Lists all errors associated with proposal line items.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.ProposalLineItemError}{Google Documentation for ProposalLineItemError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a ProposalLineItemError.Reason - The error reason represented by an enum. This can take one of the following values:
#'    \itemize{
#'      \item{NOT_SAME_RATE_CARD - The proposal line item's rate card is not the same as other proposal line
#' items in the proposal.}
#'      \item{LINE_ITEM_TYPE_NOT_ALLOWED - The proposal line item's type is not yet supported by DFP Sales Manager.}
#'      \item{END_DATE_TIME_NOT_AFTER_START_TIME - The proposal line item's end date time is not after its start date time.}
#'      \item{END_DATE_TIME_TOO_LATE - The proposal line item's end date time is after 1/1/2037.}
#'      \item{START_DATE_TIME_IS_IN_PAST - The proposal line item's start date time is in past.}
#'      \item{END_DATE_TIME_IS_IN_PAST - The proposal line item's end date time is in past.}
#'      \item{FRONTLOADED_NOT_ALLOWED - Frontloaded delivery rate type is not allowed.}
#'      \item{ALL_ROADBLOCK_NOT_ALLOWED - Roadblocking to display all creatives is not allowed.}
#'      \item{CREATIVE_SET_ROADBLOCK_NOT_ALLOWED - Roadblocking to display all master and companion creative set is not
#' allowed.}
#'      \item{ALREADY_STARTED - Some changes may not be allowed because the related line item has already
#' started.}
#'      \item{CONFLICT_WITH_PRODUCT - The setting is conflict with product's restriction.}
#'      \item{VIOLATE_BUILT_IN_TARGETING_COMPATIBILITY_RESTRICTION - The proposal line item's setting violates the product's built-in targeting
#' compatibility restriction.}
#'      \item{VIOLATE_BUILT_IN_TARGETING_LOCKED_RESTRICTION - The proposal line item's setting violates the product's built-in targeting
#' locked restriction.}
#'      \item{MOBILE_TECH_CRITERIA_NOT_SUPPORTED - Cannot target mobile-only targeting criteria.}
#'      \item{UNSUPPORTED_TARGETING_TYPE - The targeting criteria type is unsupported.}
#'      \item{WRONG_COST - The contracted cost does not match with what calculated from final rate and
#' units bought.}
#'      \item{CALCULATED_COST_TOO_HIGH - The cost calculated from cost per unit and units is too high.}
#'      \item{INVALID_PRIORITY_FOR_LINE_ITEM_TYPE - The line item priority is invalid if it's different than the default.}
#'      \item{UPDATE_PROPOSAL_LINE_ITEM_NOT_ALLOWED - Propsoal line item cannot update when it is archived.}
#'      \item{CANNOT_UPDATE_TO_OR_FROM_CREATIVE_SET_ROADBLOCK - A proposal line item cannot be updated from having RoadblockingType
#' CREATIVE_SET to having a different RoadblockingType, or vice versa.}
#'      \item{SEQUENTIAL_CREATIVE_ROTATION_NOT_ALLOWED - Serving creatives exactly in sequential order is not allowed.}
#'      \item{UPDATE_RESERVATION_NOT_ALLOWED - Proposal line item cannot update its reservation detail once start
#' delivering.}
#'      \item{INVALID_COMPANION_DELIVERY_OPTION_FOR_ROADBLOCKING_TYPE - The companion delivery option is not valid for the roadblocking type.}
#'      \item{INCONSISTENT_ROADBLOCK_TYPE - Roadblocking type is inconsistent with creative placeholders. If the
#' roadblocking type is creative set, creative placeholders should contain
#' companions, and vice versa.}
#'      \item{INVALID_UNITS_BOUGHT_BUFFER - UnitsBoughtBuffer is only applicable to standard line item with CPC/CPM
#' type.}
#'      \item{INVALID_VALUES_FOR_CLICK_TRACKING_LINE_ITEM_TYPE - One or more values on the proposal line item are not valid for a
#' LineItemType CLICK_TRACKING line item type.}
#'      \item{UPDATE_COST_ADJUSTMENT_NOT_ALLOWED - Proposal line item cannot update its cost adjustment after first approval.}
#'      \item{UNSUPPORTED_RATE_CARD_CURRENCY_CODE - The currency code of the proposal line item's rate card is not supported by
#' the current network. All supported currencies can be found in the union of
#' Network currencyCode and Network secondaryCurrencyCodes.}
#'      \item{END_DATE_TIME_IS_BEFORE_LAST_PAUSED_TIME - The corresponding line item is paused, but the proposal line item's end date
#' time is before the last paused time.}
#'      \item{VIDEO_INVALID_ROADBLOCKING - Video line items cannot have roadblocking options.}
#'      \item{UPDATE_TIME_ZONE_NOT_ALLOWED - Time zone cannot be updated once the proposal line item has been sold.}
#'      \item{SIZE_REQUIRED - At least one size must be specified.}
#'      \item{COMPANION_NOT_ALLOWED - A placeholder contains companions but the roadblocking type is not
#' RoadblockingType CREATIVE_SET or the ProductType product type is offline.}
#'      \item{MISSING_COMPANION - A placeholder does not contain companions but the roadblocking type is
#' RoadblockingType CREATIVE_SET.}
#'      \item{DUPLICATED_MASTER_SIZE - A placeholder's master size is the same as another placeholder's master
#' size.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{ProposalLink}
#' 
#' A link that can be added as a resource to a Proposal.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.ProposalLink}{Google Documentation for ProposalLink}
#' \describe{
#'  \item{id}{a integer -  The unique ID of the ProposalLink. This attribute is readonly and is
#' assigned by Google.}
#'  \item{name}{a string -  The name of the ProposalLink. Must be unique under the same Proposal. This
#' attribute is required and has a maximum length of 255 characters.}
#'  \item{creatorId}{a integer -  The unique ID of the User who created the ProposalLink. This attribute is
#' readonly and is assigned by Google.}
#'  \item{url}{a string -  The link to the ProposalLink resource. This attribute is required.}
#'  \item{description}{a string -  The description for the ProposalLink. This attribute is optional and has a
#' maximum length of 1023 characters.}
#'  \item{creationDateTime}{a DateTime -  The creation time of the ProposalLink. This attribute is readonly and is
#' assigned by Google when the ProposalLink is created.}
#' }
#' 
#' \strong{ProposalPage}
#' 
#' Captures a page of Proposal objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.ProposalPage}{Google Documentation for ProposalPage}
#' \describe{
#'  \item{totalResultSetSize}{a integer -  The size of the total result set to which this page belongs.}
#'  \item{startIndex}{a integer -  The absolute index in the total result set on which this page begins.}
#'  \item{results}{a Proposal -  The collection of proposals contained within this page.}
#' }
#' 
#' \strong{PublisherQueryLanguageContextError}
#' 
#' An error that occurs while executing a PQL query contained in a Statement
#' object.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.PublisherQueryLanguageContextError}{Google Documentation for PublisherQueryLanguageContextError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.PublisherQueryLanguageSyntaxError}{Google Documentation for PublisherQueryLanguageSyntaxError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.QuotaError}{Google Documentation for QuotaError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.RangeError}{Google Documentation for RangeError}
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
#' \strong{RequiredCollectionError}
#' 
#' A list of all errors to be used for validating sizes of collections.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.RequiredCollectionError}{Google Documentation for RequiredCollectionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.RequiredError}{Google Documentation for RequiredError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.RequiredNumberError}{Google Documentation for RequiredNumberError}
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
#' \strong{RetractionDetails}
#' 
#' Details describing why a Proposal was retracted.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.RetractionDetails}{Google Documentation for RetractionDetails}
#' \describe{
#'  \item{retractionReasonId}{a integer -  The ID of the reason for why the Proposal was retracted.}
#'  \item{comments}{a string -  Comments on why the Proposal was retracted. This field is optional and has a
#' maximum length of 1023 characters.}
#' }
#' 
#' \strong{RetractProposals}
#' 
#' The action used for retracting Proposal objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.RetractProposals}{Google Documentation for RetractProposals}
#' \describe{
#'  \item{extends ProposalAction}{see documentation for ProposalAction}
#'  \item{retractionDetails}{a RetractionDetails -  RetractionDetails Details describing why the Proposal is being retracted.}
#' }
#' 
#' \strong{SalespersonSplit}
#' 
#' A SalespersonSplit represents a salesperson and his/her split.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.SalespersonSplit}{Google Documentation for SalespersonSplit}
#' \describe{
#'  \item{userId}{a integer -  The unique ID of the User responsible for the sales of the Proposal. This
#' attribute is required.}
#'  \item{split}{a integer -  The split can be attributed to the salesperson. The percentage value is
#' stored as millipercents, and must be multiples of 10 with the range from 0
#' to 100000. This attribute is optional and default value is 0.}
#' }
#' 
#' \strong{ServerError}
#' 
#' Errors related to the server.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.ServerError}{Google Documentation for ServerError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.SetValue}{Google Documentation for SetValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{values}{a Value -  The values. They must all be the same type of Value and not contain
#' duplicates.}
#' }
#' 
#' \strong{SoapRequestHeader}
#' 
#' Represents the SOAP request header used by API requests.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.SoapRequestHeader}{Google Documentation for SoapRequestHeader}
#' \describe{
#'  \item{networkCode}{a string -  The network code to use in the context of a request.}
#'  \item{applicationName}{a string -  The name of client library application.}
#' }
#' 
#' \strong{SoapResponseHeader}
#' 
#' Represents the SOAP request header used by API responses.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.SoapResponseHeader}{Google Documentation for SoapResponseHeader}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.Statement}{Google Documentation for Statement}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.StatementError}{Google Documentation for StatementError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.String_ValueMapEntry}{Google Documentation for String_ValueMapEntry}
#' \describe{
#'  \item{key}{a string}
#'  \item{value}{a Value}
#' }
#' 
#' \strong{StringLengthError}
#' 
#' Errors for Strings which do not meet given length constraints.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.StringLengthError}{Google Documentation for StringLengthError}
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
#' \strong{SubmitProposalsForApproval}
#' 
#' The action used for submitting Proposal objects for approval.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.SubmitProposalsForApproval}{Google Documentation for SubmitProposalsForApproval}
#' \describe{
#'  \item{extends ProposalAction}{see documentation for ProposalAction}
#' }
#' 
#' \strong{SubmitProposalsForApprovalBypassValidation}
#' 
#' The action used for submitting Proposal objects for approval and bypassing
#' workflow validation.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.SubmitProposalsForApprovalBypassValidation}{Google Documentation for SubmitProposalsForApprovalBypassValidation}
#' \describe{
#'  \item{extends ProposalAction}{see documentation for ProposalAction}
#' }
#' 
#' \strong{TeamError}
#' 
#' Errors related to a Team.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.TeamError}{Google Documentation for TeamError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a TeamError.Reason - The error reason represented by an enum. This can take one of the following values:
#'    \itemize{
#'      \item{ENTITY_NOT_ON_USERS_TEAMS - User cannot use this entity because it is not on any of the user's teams.}
#'      \item{AD_UNITS_NOT_ON_ORDER_TEAMS - The targeted or excluded ad unit must be on the order's teams.}
#'      \item{PLACEMENTS_NOT_ON_ORDER_TEAMS - The targeted placement must be on the order's teams.}
#'      \item{MISSING_USERS_TEAM - Entity cannot be created because it is not on any of the user's teams.}
#'      \item{ALL_TEAM_ASSOCIATION_NOT_ALLOWED - A team that gives access to all entities of a given type cannot be
#' associated with an entity of that type.}
#'      \item{ALL_TEAM_ACCESS_OVERRIDE_NOT_ALLOWED - The all entities team access type cannot be overridden.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{TextValue}
#' 
#' Contains a string value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.TextValue}{Google Documentation for TextValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a string -  The string value.}
#' }
#' 
#' \strong{TimeZoneError}
#' 
#' Errors related to timezones.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.TimeZoneError}{Google Documentation for TimeZoneError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a TimeZoneError.Reason - This can take one of the following values:
#'    \itemize{
#'      \item{INVALID_TIMEZONE_ID - Indicates that the timezone ID provided is not supported.}
#'      \item{TIMEZONE_ID_IN_WRONG_FORMAT - Indicates that the timezone ID provided is in the wrong format. The timezone
#' ID must be in tz database format (e.g. "America/Los_Angeles").}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{TypeError}
#' 
#' An error for a field which is an invalid type.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.TypeError}{Google Documentation for TypeError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#' }
#' 
#' \strong{UnarchiveProposals}
#' 
#' The action used for unarchiving Proposal objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.UnarchiveProposals}{Google Documentation for UnarchiveProposals}
#' \describe{
#'  \item{extends ProposalAction}{see documentation for ProposalAction}
#' }
#' 
#' \strong{UniqueError}
#' 
#' An error for a field which must satisfy a uniqueness constraint
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.UniqueError}{Google Documentation for UniqueError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#' }
#' 
#' \strong{UpdateResult}
#' 
#' Represents the result of performing an action on objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.UpdateResult}{Google Documentation for UpdateResult}
#' \describe{
#'  \item{numChanges}{a integer -  The number of objects that were changed as a result of performing the
#' action.}
#' }
#' 
#' \strong{Value}
#' 
#' Value represents a value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.Value}{Google Documentation for Value}
#' \describe{
#' }
#' 
#' \strong{WorkflowActionError}
#' 
#' Lists all errors associated with performing actions within WorkflowAction.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.WorkflowActionError}{Google Documentation for WorkflowActionError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a WorkflowActionError.Reason - The error reason represented by an enum. This can take one of the following values:
#'    \itemize{
#'      \item{NOT_APPLICABLE - The action does not exist or is not applicable to the current state.}
#'      \item{WORKFLOW_DEFINITION_NOT_FOUND - Means there's no workflow definition found for the entity.}
#'      \item{EMPTY_ACTION_LIST - Means no action is given, when user approve/reject a proposal, the action id
#' list cannot be empty.}
#'      \item{NOT_ACTION_APPROVER - Means the user is not an approver of this action.}
#'      \item{WORKFLOW_ALREADY_COMPLETED - Means the workflow is already completed.}
#'      \item{WORKFLOW_ALREADY_FAILED - Means the workflow is already failed.}
#'      \item{WORKFLOW_ALREADY_CANCELED - Means the workflow is already canceled.}
#'      \item{ACTION_COMPLETED - Means the action is already completed.}
#'      \item{ACTION_FAILED - Means the action is already failed.}
#'      \item{ACTION_CANCELED - Means the action is already canceled.}
#'      \item{ACTION_NOT_ACTIVE - Means the action currently is not active.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{WorkflowValidationError}
#' 
#' Lists all errors associated with workflow validation. In versions V201502
#' and earlier, the workflow error message defined by a network administrator
#' that describes how a workflow rule is violated is stored in the trigger.
#' Beginning in V201505, it is stored in the errorString.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalService.WorkflowValidationError}{Google Documentation for WorkflowValidationError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a WorkflowValidationError.Reason - The error reason represented by an enum. This can take one of the following values:
#'    \itemize{
#'      \item{WARNING - The rule condition validation result triggers a warning.}
#'      \item{ERROR - The rule condition validation result triggers an error.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' 
#' 
#' @usage dfp_ProposalService_object_factory(obj_type, obj_data)
#' 
#' @param obj_type a string from one of the object types described below
#' @param obj_data a \code{list} of \code{lists} or a \code{data.frame} with the required components to create
#' the obj_type specified. All input names must match the expected attributes for the object.
#' If submitting a list of attributes to create 1 object make sure to nest it inside top-level list, so that
#' it is a list of length 1 with 1 list of attributes to create the object.
#' @return a string of formatted XML that can be inserted into a SOAP request body to the API
#' @export
dfp_ProposalService_object_factory <- function(obj_type, obj_data){

  if(is.data.frame(obj_data)){
    sampled_names <- names(obj_data)
  } else if(is.list(obj_data)){
    sampled_names <- names(obj_data[[1]])
  } else {
    stop("obj_data must be a list or data.frame")
  }

  if(obj_type=='AppliedLabel'){
    stopifnot(all(sampled_names %in% c('labelId', 'isNegated')))
  }

  if(obj_type=='BaseCustomFieldValue'){
    stopifnot(all(sampled_names %in% c('customFieldId')))
  }

  if(obj_type=='CustomFieldValue'){
    stopifnot(all(sampled_names %in% c('customFieldId', 'value')))
  }

  if(obj_type=='DropDownCustomFieldValue'){
    stopifnot(all(sampled_names %in% c('customFieldId', 'customFieldOptionId')))
  }

  if(obj_type=='Money'){
    stopifnot(all(sampled_names %in% c('currencyCode', 'microAmount')))
  }

  if(obj_type=='Proposal'){
    stopifnot(all(sampled_names %in% c('id', 'dfpOrderId', 'name', 'pricingModel', 'startDateTime', 'endDateTime', 'timeZoneId', 'status', 'isArchived', 'advertiser', 'agencies', 'probabilityOfClose', 'billingCap', 'billingSchedule', 'billingSource', 'billingBase', 'poNumber', 'notes', 'budget', 'primarySalesperson', 'secondarySalespeople', 'salesPlannerIds', 'primaryTraffickerId', 'secondaryTraffickerIds', 'appliedTeamIds', 'customFieldValues', 'appliedLabels', 'effectiveAppliedLabels', 'advertiserDiscount', 'proposalDiscount', 'currencyCode', 'exchangeRate', 'refreshExchangeRate', 'agencyCommission', 'valueAddedTax', 'isSold', 'approvalStatus', 'lastModifiedDateTime', 'resources', 'actualExpiryTime', 'expectedExpiryTime', 'thirdPartyAdServerId', 'customThirdPartyAdServerName', 'lastRetractionDetails')))
  }

  if(obj_type=='ProposalCompanyAssociation'){
    stopifnot(all(sampled_names %in% c('companyId', 'type', 'contactIds')))
  }

  if(obj_type=='ProposalLink'){
    stopifnot(all(sampled_names %in% c('id', 'name', 'creatorId', 'url', 'description', 'creationDateTime')))
  }

  if(obj_type=='RetractionDetails'){
    stopifnot(all(sampled_names %in% c('retractionReasonId', 'comments')))
  }

  if(obj_type=='RetractProposals'){
    stopifnot(all(sampled_names %in% c('retractionDetails')))
  }

  if(obj_type=='SalespersonSplit'){
    stopifnot(all(sampled_names %in% c('userId', 'split')))
  }

}
#' 
#' createProposals
#' 
#' Creates new Proposal objects. For each proposal, the following fields are required: <ul> <li>Proposal name</li> </ul>
#' 
#' @usage dfp_createProposals(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a createProposalsResponse
#' @export
dfp_createProposals <- function(request_data){

  request_body <- make_request_body(service='ProposalService', root_name='createProposals', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['createProposalsResponse']])$rval
  response <- if(is.null(response)) NULL else xmlToList(response)
  return(response)
}
#' 
#' getProposalsByStatement
#' 
#' Gets a ProposalPage of Proposal objects that satisfy the given Statement query. The following fields are supported for filtering:  a set of proposals 
#' \itemize{
#'   \item{id}
#'   \item{dfpOrderId}
#'   \item{name}
#'   \item{status}
#'   \item{isArchived}
#'   \item{approvalStatus}
#'   \item{lastModifiedDateTime}
#'   \item{thirdPartyAdServerId}
#'   \item{customThirdPartyAdServerName}
#' }
#' 
#' @usage dfp_getProposalsByStatement(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a getProposalsByStatementResponse
#' @export
dfp_getProposalsByStatement <- function(request_data){

  request_body <- make_request_body(service='ProposalService', root_name='getProposalsByStatement', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getProposalsByStatementResponse']])$rval
  response <- if(is.null(response)) NULL else xmlToList(response)
  return(response)
}
#' 
#' performProposalAction
#' 
#' Performs actions on Proposal objects that match the given Statement query. The following fields are also required when submitting proposals for approval: <ul> <li>Proposal advertiser</li> <li>Proposal primarySalesperson</li> <li>Proposal primaryTraffickerId</li> </ul>
#' 
#' @usage dfp_performProposalAction()
#' @return a \code{list} containing all the elements of a performProposalActionResponse
#' @export
dfp_performProposalAction <- function(){

  request_body <- make_request_body(service='ProposalService', root_name='performProposalAction', data=NULL)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['performProposalActionResponse']])$rval
  response <- if(is.null(response)) NULL else xmlToList(response)
  return(response)
}
#' 
#' updateProposals
#' 
#' Updates the specified Proposal objects.
#' 
#' @usage dfp_updateProposals(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a updateProposalsResponse
#' @export
dfp_updateProposals <- function(request_data){

  request_body <- make_request_body(service='ProposalService', root_name='updateProposals', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['updateProposalsResponse']])$rval
  response <- if(is.null(response)) NULL else xmlToList(response)
  return(response)
}
#' 
