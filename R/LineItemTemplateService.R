#' LineItemTemplateService
#' 
#' Provides methods for creating, updating and retrieving LineItemTemplate
#' objects.
#' 
#' LineItemTemplateService Object Factory
#' 
#' A function to create a variety of objects that are part of the LineItemTemplateService
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.ApiError}{Google Documentation for ApiError}
#' \describe{
#'  \item{fieldPath}{a character - The OGNL field path to identify cause of error.}
#'  \item{trigger}{a character - The data that caused the error.}
#'  \item{errorString}{a character - A simple string representation of the error and reason.}
#' }
#' 
#' \strong{ApiException}
#' 
#' Exception class for holding a list of service errors.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.ApiException}{Google Documentation for ApiException}
#' \describe{
#'  \item{message}{a character (inherited from ApplicationException) - Error message.}
#'  \item{errors}{a ApiError - List of errors.}
#' }
#' 
#' \strong{ApiVersionError}
#' 
#' Errors related to the usage of API versions.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.ApiVersionError}{Google Documentation for ApiVersionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.ApplicationException}{Google Documentation for ApplicationException}
#' \describe{
#'  \item{message}{a character - Error message.}
#' }
#' 
#' \strong{AudienceExtensionError}
#' 
#' Errors associated with audience extension enabled line items
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.AudienceExtensionError}{Google Documentation for AudienceExtensionError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a AudienceExtensionError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{FREQUENCY_CAPS_NOT_SUPPORTED - Frequency caps are not supported by audience extension line items}
#'      \item{INVALID_TARGETING - Audience extension line items can only target geography}
#'      \item{INVENTORY_UNIT_TARGETING_INVALID - Audience extension line items can only target audience extension inventory
#' units}
#'      \item{INVALID_CREATIVE_ROTATION - Audience extension line items do not support CreativeRotationType
#' SEQUENTIAL.}
#'      \item{INVALID_EXTERNAL_ENTITY_ID - The given ID of the external entity is not valid}
#'      \item{INVALID_LINE_ITEM_TYPE - Audience extension line items only support LineItemType STANDARD.}
#'      \item{INVALID_MAX_BID - Audience extension max bid is invalid when it is greater then the max
#' budget.}
#'      \item{AUDIENCE_EXTENSION_BULK_UPDATE_NOT_ALLOWED - Bulk update for audience extension line items is not allowed.}
#'      \item{UNEXPECTED_AUDIENCE_EXTENSION_ERROR - An unexpected error occurred.}
#'      \item{MAX_DAILY_BUDGET_AMOUNT_EXCEEDED - The value entered for the maximum daily budget on an audience extension line
#' item exceeds the maximum allowed.}
#'      \item{EXTERNAL_CAMPAIGN_ALREADY_EXISTS - Creating a campaign for a line item that already has an associated campaign
#' is not allowed.}
#'      \item{AUDIENCE_EXTENSION_WITHOUT_FEATURE - Audience extension was specified on a line item but the feature was not
#' enabled.}
#'      \item{AUDIENCE_EXTENSION_WITHOUT_LINKED_ACCOUNT - Audience extension was specified on a line item but no audience extension
#' account has been linked.}
#'      \item{CANNOT_OVERRIDE_CREATIVE_SIZE_WITH_AUDIENCE_EXTENSION - Assocation creative size overrides are not allowed with audience extension.}
#'      \item{CANNOT_OVERRIDE_FIELD_WITH_AUDIENCE_EXTENSION - Some association overrides are not allowed with audience extension.}
#'      \item{ONLY_ONE_CREATIVE_PLACEHOLDER_ALLOWED - Only one creative placeholder is allowed for an audience extension line
#' item.}
#'      \item{MULTIPLE_AUDIENCE_EXTENSION_LINE_ITEMS_ON_ORDER - Only one audience extension line item can be associated with a given order.}
#'      \item{CANNOT_COPY_AUDIENCE_EXTENSION_LINE_ITEMS_AND_CREATIVES_TOGETHER - Audience extension line items must be copied separately from their
#' associated creatives.}
#'      \item{FEATURE_DEPRECATED - Audience extension is no longer supported and cannot be used.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{AudienceSegmentError}
#' 
#' Errors that could occur on audience segment related requests.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.AudienceSegmentError}{Google Documentation for AudienceSegmentError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.AuthenticationError}{Google Documentation for AuthenticationError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.BooleanValue}{Google Documentation for BooleanValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a boolean - The boolean value.}
#' }
#' 
#' \strong{ClickTrackingLineItemError}
#' 
#' Click tracking is a special line item type with a number of unique errors as
#' described below.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.ClickTrackingLineItemError}{Google Documentation for ClickTrackingLineItemError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a ClickTrackingLineItemError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{TYPE_IMMUTABLE - The line item type cannot be changed once created.}
#'      \item{INVALID_TARGETING_TYPE - Click tracking line items can only be targeted at ad unit inventory, all
#' other types are invalid, as well as placements.}
#'      \item{INVALID_ROADBLOCKING_TYPE - Click tracking line items do not allow us to control creative delivery so
#' are by nature one or more as entered by the third party.}
#'      \item{INVALID_CREATIVEROTATION_TYPE - Click tracking line items do not support the CreativeRotationType OPTIMIZED
#' creative rotation type.}
#'      \item{INVALID_DELIVERY_RATE_TYPE - Click tracking line items do not allow us to control line item delivery so
#' we can not control the rate at which they are served.}
#'      \item{UNSUPPORTED_FIELD - Not all fields are supported by the click tracking line items.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{CollectionSizeError}
#' 
#' Error for the size of the collection being too large
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.CollectionSizeError}{Google Documentation for CollectionSizeError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.CommonError}{Google Documentation for CommonError}
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
#' \strong{CompanyCreditStatusError}
#' 
#' Lists all errors due to Company creditStatus.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.CompanyCreditStatusError}{Google Documentation for CompanyCreditStatusError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a CompanyCreditStatusError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{COMPANY_CREDIT_STATUS_CHANGE_NOT_ALLOWED - The user's role does not have permission to change Company creditStatus from
#' the default value. The default value is Company.CreditStatus ACTIVE for the
#' Basic credit status setting and Company.CreditStatus ON_HOLD for the
#' Advanced credit status setting.}
#'      \item{CANNOT_USE_CREDIT_STATUS_SETTING - The network has not been enabled for editing credit status settings for
#' companies.}
#'      \item{CANNOT_USE_ADVANCED_CREDIT_STATUS_SETTING - The network has not been enabled for the Advanced credit status settings for
#' companies. Company creditStatus must be either ACTIVE or INACTIVE.}
#'      \item{UNACCEPTABLE_COMPANY_CREDIT_STATUS_FOR_ORDER - An order cannot be created or updated because the Order advertiserId or the
#' Order agencyId it is associated with has Company creditStatus that is not
#' ACTIVE or ON_HOLD.}
#'      \item{UNACCEPTABLE_COMPANY_CREDIT_STATUS_FOR_LINE_ITEM - A line item cannot be created for the order because the Order advertiserId
#' or \{Order agencyId\} it is associated with has Company creditStatus that is
#' not ACTIVE or ON_HOLD.}
#'      \item{CANNOT_BLOCK_COMPANY_TOO_MANY_APPROVED_ORDERS - The company cannot be blocked because there are more than 200 approved
#' orders of the company. Archive some, so that there are less than 200 of
#' them.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{ContentMetadataTargetingError}
#' 
#' Lists all errors related to ContentMetadataTargeting.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.ContentMetadataTargetingError}{Google Documentation for ContentMetadataTargetingError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a ContentMetadataTargetingError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{VALUES_DO_NOT_BELONG_TO_A_HIERARCHY - One or more of the values specified in a ContentMetadataHierarchyTargeting
#' do not belong to the keys defined in any of the hierarchies on the network.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{CreativeError}
#' 
#' Lists all errors associated with creatives.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.CreativeError}{Google Documentation for CreativeError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a CreativeError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{FLASH_AND_FALLBACK_URL_ARE_SAME - FlashRedirectCreative flashUrl and FlashRedirectCreative fallbackUrl are the
#' same. The fallback URL is used when the flash URL does not work and must be
#' different from it.}
#'      \item{INVALID_INTERNAL_REDIRECT_URL - The internal redirect URL was invalid. The URL must have the following
#' syntax http://ad.doubleclick.net/ad/sitename/;sz=size.}
#'      \item{DESTINATION_URL_REQUIRED - HasDestinationUrlCreative destinationUrl is required.}
#'      \item{CANNOT_CREATE_OR_UPDATE_LEGACY_DFP_CREATIVE - Cannot create or update legacy DART For Publishers creative.}
#'      \item{CANNOT_CREATE_OR_UPDATE_LEGACY_DFP_MOBILE_CREATIVE - Cannot create or update legacy mobile creative.}
#'      \item{MISSING_FEATURE - The user is missing a necessary feature.}
#'      \item{INVALID_COMPANY_TYPE - Company type should be one of Advertisers, House Advertisers and Ad
#' Networks.}
#'      \item{INVALID_ADSENSE_CREATIVE_SIZE - Invalid size for AdSense dynamic allocation creative. Only valid AFC sizes
#' are allowed.}
#'      \item{INVALID_AD_EXCHANGE_CREATIVE_SIZE - Invalid size for Ad Exchange dynamic allocation creative. Only valid Ad
#' Exchange sizes are allowed.}
#'      \item{DUPLICATE_ASSET_IN_CREATIVE - Assets associated with the same creative must be unique.}
#'      \item{CREATIVE_ASSET_CANNOT_HAVE_ID_AND_BYTE_ARRAY - A creative asset cannot contain an asset ID and a byte array.}
#'      \item{CANNOT_CREATE_OR_UPDATE_UNSUPPORTED_CREATIVE - Cannot create or update unsupported creative.}
#'      \item{CANNOT_CREATE_PROGRAMMATIC_CREATIVES - Cannot create programmatic creatives.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{CrossSellError}
#' 
#' Lists all errors associated with cross selling.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.CrossSellError}{Google Documentation for CrossSellError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a CrossSellError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{UNSUPPORTED_RESERVATION_TYPE - Only standard or sponsorship line item types are supported for cross
#' selling.}
#'      \item{NO_VALID_ELIGIBLE_RESERVATION_TYPES - A cross-sell partner must have at least one eligible line item type.}
#'      \item{COMPANY_IS_NOT_DISTRIBUTION_PARTNER - A company for cross-sell partner must be an affiliate/distribution company.}
#'      \item{CHANGING_PARTNER_NETWORK_IS_NOT_SUPPORTED - The network code of a cross-sell partner cannot be changed.}
#'      \item{MISSING_DISTRIBUTOR_PARTNER_NAME - A cross-sell partner must have a partner name.}
#'      \item{DISTRIBUTOR_NETWORK_MISSING_PUBLISHER_FEATURE - The cross-sell distributor publisher feature must be enabled.}
#'      \item{CONTENT_PROVIDER_NETWORK_MISSING_PUBLISHER_FEATURE - The cross-sell content provider publisher feature must be enabled on the
#' partner's network.}
#'      \item{INVALID_DISTRIBUTOR_PARTNER_NAME - The cross-sell partner name conflicts with an ad unit name on the partner's
#' network.}
#'      \item{INVALID_CONTENT_PROVIDER_NETWORK - The network code of a cross-sell partner is invalid.}
#'      \item{CONTENT_PROVIDER_NETWORK_CANNOT_BE_ACTIVE_NETWORK - The content provider network must be different than the distributor network.}
#'      \item{CONTENT_PROVIDER_NETWORK_ALREADY_ENABLED_FOR_CROSS_SELLING - The same network code was already enabled for cross-sell in a different
#' company.}
#'      \item{DISTRIBUTOR_RULE_VIOLATION_ERROR - A rule defined by the cross selling distributor has been violated by a line
#' item targeting a shared ad unit. Violating this rule is an error.}
#'      \item{DISTRIBUTOR_RULE_VIOLATION_WARNING - A rule defined by the cross selling distributor has been violated by a line
#' item targeting a shared ad unit. Violating this rule is a warning. By
#' setting LineItem skipCrossSellingRuleWarningChecks, the content partner can
#' suppress the warning (and create or save the line item). This flag is
#' available beginning in V201411.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{CustomFieldValueError}
#' 
#' Errors specific to editing custom field values
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.CustomFieldValueError}{Google Documentation for CustomFieldValueError}
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
#' \strong{CustomTargetingError}
#' 
#' Lists all errors related to CustomTargetingKey and CustomTargetingValue
#' objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.CustomTargetingError}{Google Documentation for CustomTargetingError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a CustomTargetingError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{KEY_NOT_FOUND - Requested CustomTargetingKey is not found.}
#'      \item{KEY_COUNT_TOO_LARGE - Number of CustomTargetingKey objects created exceeds the limit allowed for
#' the network.}
#'      \item{KEY_NAME_DUPLICATE - CustomTargetingKey with the same CustomTargetingKey name already exists.}
#'      \item{KEY_NAME_EMPTY - CustomTargetingKey name is empty.}
#'      \item{KEY_NAME_INVALID_LENGTH - CustomTargetingKey name is too long.}
#'      \item{KEY_NAME_INVALID_CHARS - CustomTargetingKey name contains unsupported or reserved characters.}
#'      \item{KEY_NAME_RESERVED - CustomTargetingKey name matches one of the reserved custom targeting key
#' names.}
#'      \item{KEY_DISPLAY_NAME_INVALID_LENGTH - CustomTargetingKey displayName is too long.}
#'      \item{VALUE_NOT_FOUND - Requested CustomTargetingValue is not found.}
#'      \item{GET_VALUES_BY_STATEMENT_MUST_CONTAIN_KEY_ID - The WHERE clause in the Statement query must always contain
#' CustomTargetingValue customTargetingKeyId as one of its columns in a way
#' that it is AND'ed with the rest of the query.}
#'      \item{VALUE_COUNT_FOR_KEY_TOO_LARGE - The number of CustomTargetingValue objects associated with a
#' CustomTargetingKey exceeds the network limit. This is only applicable for
#' keys of type CustomTargetingKey.Type PREDEFINED.}
#'      \item{VALUE_NAME_DUPLICATE - CustomTargetingValue with the same CustomTargetingValue name already exists.}
#'      \item{VALUE_NAME_EMPTY - CustomTargetingValue name is empty.}
#'      \item{VALUE_NAME_INVALID_LENGTH - CustomTargetingValue name is too long.}
#'      \item{VALUE_NAME_INVALID_CHARS - CustomTargetingValue name contains unsupported or reserved characters.}
#'      \item{VALUE_DISPLAY_NAME_INVALID_LENGTH - CustomTargetingValue displayName is too long.}
#'      \item{VALUE_MATCH_TYPE_NOT_ALLOWED - Only DFP Premium networks can have CustomTargetingValue matchType other than
#' CustomTargetingValue.MatchType EXACT.}
#'      \item{VALUE_MATCH_TYPE_NOT_EXACT_FOR_PREDEFINED_KEY - You can only create CustomTargetingValue objects with match type
#' CustomTargetingValue.MatchType EXACT when associating with
#' CustomTargetingKey objects of type CustomTargetingKey.Type PREDEFINED}
#'      \item{SUFFIX_MATCH_TYPE_NOT_ALLOWED - CustomTargetingValue object cannot have match type of
#' CustomTargetingValue.MatchType SUFFIX when adding a CustomTargetingValue to
#' a line item.}
#'      \item{CONTAINS_MATCH_TYPE_NOT_ALLOWED - CustomTargetingValue object cannot have match type of
#' CustomTargetingValue.MatchType CONTAINS when adding a CustomTargetingValue
#' to targeting expression of a line item.}
#'      \item{KEY_WITH_MISSING_VALUES - The CustomTargetingKey does not have any CustomTargetingValue associated
#' with it.}
#'      \item{CANNOT_OR_DIFFERENT_KEYS - CustomCriteriaSet.LogicalOperator OR operation cannot be applied to values
#' with different keys.}
#'      \item{INVALID_TARGETING_EXPRESSION - Targeting expression is invalid. This can happen if the sequence of
#' operators is wrong, or a node contains invalid number of children.}
#'      \item{DELETED_KEY_CANNOT_BE_USED_FOR_TARGETING - The key has been deleted. CustomCriteria cannot have deleted keys.}
#'      \item{DELETED_VALUE_CANNOT_BE_USED_FOR_TARGETING - The value has been deleted. CustomCriteria cannot have deleted values.}
#'      \item{VIDEO_BROWSE_BY_KEY_CANNOT_BE_USED_FOR_CUSTOM_TARGETING - The key is set as the video browse-by key, which cannot be used for custom
#' targeting.}
#'      \item{CANNOT_TARGET_AUDIENCE_SEGMENT - AudienceSegment object cannot be targeted.}
#'      \item{CANNOT_TARGET_INACTIVE_AUDIENCE_SEGMENT - Inactive AudienceSegment object cannot be targeted.}
#'      \item{INVALID_AUDIENCE_SEGMENTS - Targeted AudienceSegment object is not valid.}
#'      \item{ONLY_APPROVED_AUDIENCE_SEGMENTS_CAN_BE_TARGETED - Targeted AudienceSegment objects have not been approved.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{Date}
#' 
#' Represents a date.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.Date}{Google Documentation for Date}
#' \describe{
#'  \item{year}{a integer - Year (e.g., 2009)}
#'  \item{month}{a integer - Month (1..12)}
#'  \item{day}{a integer - Day (1..31)}
#' }
#' 
#' \strong{DateTime}
#' 
#' Represents a date combined with the time of day.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.DateTime}{Google Documentation for DateTime}
#' \describe{
#'  \item{date}{a Date}
#'  \item{hour}{a integer}
#'  \item{minute}{a integer}
#'  \item{second}{a integer}
#'  \item{timeZoneID}{a character}
#' }
#' 
#' \strong{DateTimeRangeTargetingError}
#' 
#' Lists all date time range errors caused by associating a line item with a
#' targeting expression.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.DateTimeRangeTargetingError}{Google Documentation for DateTimeRangeTargetingError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a DateTimeRangeTargetingError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{EMPTY_RANGES - No targeted ranges exists.}
#'      \item{NOT_SPONSORSHIP_LINEITEM - Type of lineitem is not sponsorship.}
#'      \item{PAST_RANGES_CHANGED - Past ranges are changed.}
#'      \item{RANGES_OVERLAP - Targeted date time ranges overlap.}
#'      \item{RANGES_OUT_OF_LINEITEM_ACTIVE_PERIOD - Targeted date time ranges fall out the active period of lineitem.}
#'      \item{START_TIME_IS_NOT_START_OF_DAY - Start time of range (except the earliest range) is not at start of day.
#' Start of day is 00:00:00.}
#'      \item{END_TIME_IS_NOT_END_OF_DAY - End time of range (except the latest range) is not at end of day. End of day
#' is 23:59:59.}
#'      \item{START_DATE_TIME_IS_IN_PAST - Start date time of earliest targeted ranges is in past.}
#'      \item{RANGE_END_TIME_BEFORE_START_TIME - The end time of range is before the start time. Could happen when start type
#' is IMMEDIATE or ONE_HOUR_LATER.}
#'      \item{END_DATE_TIME_IS_TOO_LATE - End date time of latest targeted ranges is too late.}
#'      \item{LIMITED_RANGES_IN_UNLIMITED_LINEITEM}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{DateTimeValue}
#' 
#' Contains a date-time value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.DateTimeValue}{Google Documentation for DateTimeValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a DateTime - The DateTime value.}
#' }
#' 
#' \strong{DateValue}
#' 
#' Contains a date value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.DateValue}{Google Documentation for DateValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a Date - The Date value.}
#' }
#' 
#' \strong{DayPartTargetingError}
#' 
#' Lists all errors associated with day-part targeting for a line item.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.DayPartTargetingError}{Google Documentation for DayPartTargetingError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a DayPartTargetingError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{INVALID_HOUR - Hour of day must be between 0 and 24, inclusive.}
#'      \item{INVALID_MINUTE - Minute of hour must be one of 0, 15,30, 45.}
#'      \item{END_TIME_NOT_AFTER_START_TIME - The DayPart endTime cannot be after DayPart startTime.}
#'      \item{TIME_PERIODS_OVERLAP - Cannot create day-parts that overlap.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{EntityChildrenLimitReachedError}
#' 
#' Lists errors relating to having too many children on an entity.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.EntityChildrenLimitReachedError}{Google Documentation for EntityChildrenLimitReachedError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.EntityLimitReachedError}{Google Documentation for EntityLimitReachedError}
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
#' \strong{FeatureError}
#' 
#' Errors related to feature management. If you attempt using a feature that is
#' not available to the current network you'll receive a FeatureError with the
#' missing feature as the trigger.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.FeatureError}{Google Documentation for FeatureError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.ForecastError}{Google Documentation for ForecastError}
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
#' \strong{FrequencyCapError}
#' 
#' Lists all errors associated with frequency caps.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.FrequencyCapError}{Google Documentation for FrequencyCapError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a FrequencyCapError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{IMPRESSION_LIMIT_EXCEEDED}
#'      \item{IMPRESSIONS_TOO_LOW}
#'      \item{RANGE_LIMIT_EXCEEDED}
#'      \item{RANGE_TOO_LOW}
#'      \item{DUPLICATE_TIME_RANGE}
#'      \item{TOO_MANY_FREQUENCY_CAPS}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{GenericTargetingError}
#' 
#' Targeting validation errors that can be used by different targeting types.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.GenericTargetingError}{Google Documentation for GenericTargetingError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a GenericTargetingError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{CONFLICTING_INCLUSION_OR_EXCLUSION_OF_SIBLINGS - Both including and excluding sibling criteria is disallowed.}
#'      \item{INCLUDING_DESCENDANTS_OF_EXCLUDED_CRITERIA - Including descendants of excluded criteria is disallowed.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{GeoTargetingError}
#' 
#' Lists all errors associated with geographical targeting for a LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.GeoTargetingError}{Google Documentation for GeoTargetingError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a GeoTargetingError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{TARGETED_LOCATIONS_NOT_EXCLUDABLE - A location that is targeted cannot also be excluded.}
#'      \item{EXCLUDED_LOCATIONS_CANNOT_HAVE_CHILDREN_TARGETED - Excluded locations cannot have any of their children targeted.}
#'      \item{POSTAL_CODES_CANNOT_BE_EXCLUDED - Postal codes cannot be excluded.}
#'      \item{UNTARGETABLE_LOCATION - Indicates that location targeting is not allowed.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{GrpSettingsError}
#' 
#' Errors associated with line items with GRP settings.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.GrpSettingsError}{Google Documentation for GrpSettingsError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a GrpSettingsError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{INVALID_AGE_RANGE - Target age range is not valid.}
#'      \item{LINE_ITEM_ENVIRONMENT_TYPE_NOT_SUPPORTED - GRP settings are only supported for video line items.}
#'      \item{LINE_ITEM_TYPE_NOT_SUPPORTED - GRP settings are not supported for the given line item type.}
#'      \item{CANNOT_SPECIFY_GENDER_FOR_GIVEN_AGE_RANGE - Target age range doesn't support the given target gender.}
#'      \item{INVALID_MIN_AGE - Minimum target age is invalid.}
#'      \item{INVALID_MAX_AGE - Maximum target age is invalid.}
#'      \item{CANNOT_DISABLE_GRP_AFTER_ENABLING - GRP settings cannot be disabled.}
#'      \item{CANNOT_CHANGE_GRP_PROVIDERS - GRP provider cannot be updated.}
#'      \item{CANNOT_CHANGE_TARGET_DEMOG_AFTER_ACTIVATION - GRP settings cannot be updated.}
#'      \item{DEMOG_GOAL_NOT_SUPPORTED - Goal based on target demographic is not supported for the given line item.}
#'      \item{CANNOT_SET_DEMOG_GOAL - Target demographic goal cannot be set.}
#'      \item{CANNOT_REMOVE_DEMOG_GOAL - Target demographic goal cannot be removed.}
#'      \item{UNSUPPORTED_GEO_TARGETING - Line item is targeting geographic locations not supported with target
#' demographic goal.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{ImageError}
#' 
#' Lists all errors associated with images.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.ImageError}{Google Documentation for ImageError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a ImageError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{INVALID_IMAGE - The file's format is invalid.}
#'      \item{INVALID_SIZE - Size width and Size height cannot be negative.}
#'      \item{UNEXPECTED_SIZE - The actual image size does not match the expected image size.}
#'      \item{OVERLAY_SIZE_TOO_LARGE - The size of the asset is larger than that of the overlay creative.}
#'      \item{ANIMATED_NOT_ALLOWED - Animated images are not allowed.}
#'      \item{ANIMATION_TOO_LONG - Animation length exceeded the allowed policy limit.}
#'      \item{CMYK_JPEG_NOT_ALLOWED - Images in CMYK color formats are not allowed.}
#'      \item{FLASH_NOT_ALLOWED - Flash files are not allowed.}
#'      \item{FLASH_WITHOUT_CLICKTAG - If FlashCreative clickTagRequired is true, then the flash file is required
#' to have a click tag embedded in it.}
#'      \item{ANIMATED_VISUAL_EFFECT - Animated visual effect is not allowed.}
#'      \item{FLASH_ERROR - An error was encountered in the flash file.}
#'      \item{LAYOUT_PROBLEM - Incorrect image layout.}
#'      \item{FLASH_HAS_NETWORK_OBJECTS - Flash files with network objects are not allowed.}
#'      \item{FLASH_HAS_NETWORK_METHODS - Flash files with network methods are not allowed.}
#'      \item{FLASH_HAS_URL - Flash files with hard-coded click thru URLs are not allowed.}
#'      \item{FLASH_HAS_MOUSE_TRACKING - Flash files with mouse tracking are not allowed.}
#'      \item{FLASH_HAS_RANDOM_NUM - Flash files that generate or use random numbers are not allowed.}
#'      \item{FLASH_SELF_TARGETS - Flash files with self targets are not allowed.}
#'      \item{FLASH_BAD_GETURL_TARGET - Flash file contains a bad geturl target.}
#'      \item{FLASH_VERSION_NOT_SUPPORTED - Flash or ActionScript version in the submitted file is not supported.}
#'      \item{FILE_TOO_LARGE - The uploaded file is too large.}
#'      \item{SYSTEM_ERROR - A system error occured, please try again.}
#'      \item{UNEXPECTED_PRIMARY_ASSET_DENSITY - The image density for a primary asset was not one of the expected image
#' densities.}
#'      \item{DUPLICATE_ASSET_DENSITY - Two or more assets have the same image density.}
#'      \item{MISSING_DEFAULT_ASSET - The creative does not contain a primary asset. (For high-density creatives,
#' the primary asset must be a standard image file with 1x density.)}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.InternalApiError}{Google Documentation for InternalApiError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.InvalidUrlError}{Google Documentation for InvalidUrlError}
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
#' \strong{InventoryTargetingError}
#' 
#' Lists all inventory errors caused by associating a line item with a
#' targeting expression.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.InventoryTargetingError}{Google Documentation for InventoryTargetingError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a InventoryTargetingError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{AT_LEAST_ONE_PLACEMENT_OR_INVENTORY_UNIT_REQUIRED - At least one placement or inventory unit is required}
#'      \item{INVENTORY_CANNOT_BE_TARGETED_AND_EXCLUDED - The same inventory unit or placement cannot be targeted and excluded at the
#' same time}
#'      \item{PARENT_CONTAINS_INVALID_MIX_OF_TARGETED_AND_EXCLUDED_AD_UNITS - A parent AdUnit cannot have a mix of children ad units that are excluded and
#' targeted.}
#'      \item{INVENTORY_EXCLUSIONS_MUST_HAVE_PARENT_INVENTORY_UNIT - An inventory unit that is excluded must have at least one parent included.}
#'      \item{INVENTORY_UNIT_CANNOT_BE_TARGETED_IF_ANCESTOR_IS_TARGETED - A child inventory unit cannot be targeted if its ancestor inventory unit is
#' also targeted.}
#'      \item{INVENTORY_UNIT_CANNOT_BE_TARGETED_IF_ANCESTOR_IS_EXCLUDED - A child inventory unit cannot be targeted if its ancestor inventory unit is
#' excluded.}
#'      \item{INVENTORY_UNIT_CANNOT_BE_EXCLUDED_IF_ANCESTOR_IS_EXCLUDED - A child inventory unit cannot be excluded if its ancestor inventory unit is
#' also excluded.}
#'      \item{EXPLICITLY_TARGETED_INVENTORY_UNIT_CANNOT_BE_TARGETED - An explicitly targeted inventory unit cannot be targeted.}
#'      \item{EXPLICITLY_TARGETED_INVENTORY_UNIT_CANNOT_BE_EXCLUDED - An explicitly targeted inventory unit cannot be excluded.}
#'      \item{SELF_ONLY_INVENTORY_UNIT_NOT_ALLOWED - A landing page-only ad unit cannot be targeted.}
#'      \item{SELF_ONLY_INVENTORY_UNIT_WITHOUT_DESCENDANTS - A landing page-only ad unit cannot be targeted if it doesn't have any
#' children.}
#'      \item{YOUTUBE_AUDIENCE_SEGMENTS_CAN_ONLY_BE_TARGETED_WITH_YOUTUBE_SHARED_INVENTORY - Audience segments shared from YouTube can only be targeted with inventory
#' shared from YouTube for cross selling.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{LabelEntityAssociationError}
#' 
#' Errors specific to creating label entity associations.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.LabelEntityAssociationError}{Google Documentation for LabelEntityAssociationError}
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
#' \strong{LineItemActivityAssociationError}
#' 
#' Errors specific to associating activities to line items.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.LineItemActivityAssociationError}{Google Documentation for LineItemActivityAssociationError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a LineItemActivityAssociationError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{INVALID_ACTIVITY_FOR_ADVERTISER - When associating an activity to a line item the activity must belong to the
#' same advertiser as the line item.}
#'      \item{INVALID_COST_TYPE_FOR_ASSOCIATION - Activities can only be associated with line items of CostType.CPA.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{LineItemCreativeAssociationError}
#' 
#' Lists all errors associated with line item-to-creative association dates.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.LineItemCreativeAssociationError}{Google Documentation for LineItemCreativeAssociationError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a LineItemCreativeAssociationError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{CREATIVE_IN_WRONG_ADVERTISERS_LIBRARY - Cannot associate a creative to the wrong advertiser}
#'      \item{INVALID_LINEITEM_CREATIVE_PAIRING - The creative type being associated is a invalid for the line item type.}
#'      \item{STARTDATE_BEFORE_LINEITEM_STARTDATE - Association start date cannot be before line item start date}
#'      \item{STARTDATE_NOT_BEFORE_LINEITEM_ENDDATE - Association start date cannot be same as or after line item end date}
#'      \item{ENDDATE_AFTER_LINEITEM_ENDDATE - Association end date cannot be after line item end date}
#'      \item{ENDDATE_NOT_AFTER_LINEITEM_STARTDATE - Association end date cannot be same as or before line item start date}
#'      \item{ENDDATE_NOT_AFTER_STARTDATE - Association end date cannot be same as or before its start date}
#'      \item{ENDDATE_IN_THE_PAST - Association end date cannot be in the past.}
#'      \item{CANNOT_COPY_WITHIN_SAME_LINE_ITEM - Cannot copy an association to the same line item without creating new
#' creative}
#'      \item{PROGRAMMATIC_CREATIVES_CAN_ONLY_BE_ASSIGNED_TO_ONE_LINE_ITEM - Programmatic creatives can only be assigned to one line item.}
#'      \item{CANNOT_CREATE_PROGRAMMATIC_CREATIVES - Cannot create programmatic creatives.}
#'      \item{CANNOT_UPDATE_PROGRAMMATIC_CREATIVES - Cannot update programmatic creatives.}
#'      \item{CREATIVE_AND_LINE_ITEM_MUST_BOTH_BE_SET_TOP_BOX_ENABLED - Cannot associate a creative with a line item if only one of them is set-top
#' box enabled.}
#'      \item{CANNOT_DELETE_SET_TOP_BOX_ENABLED_ASSOCIATIONS - Cannot delete associations between set-top box enabled line items and
#' set-top box enabled creatives.}
#'      \item{SET_TOP_BOX_CREATIVE_ROTATION_WEIGHT_MUST_BE_INTEGER - Creative rotation weights must be integers.}
#'      \item{INVALID_CREATIVE_ROTATION_TYPE_FOR_MANUAL_WEIGHT - Creative rotation weights are only valid when creative rotation type is set
#' to CreativeRotationType MANUAL.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{LineItemError}
#' 
#' A catch-all error that lists all generic errors associated with LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.LineItemError}{Google Documentation for LineItemError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a LineItemError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{ALREADY_STARTED - Some changes may not be allowed because a line item has already started.}
#'      \item{UPDATE_RESERVATION_NOT_ALLOWED - Update reservation is not allowed because a line item has already started,
#' users must pause the line item first.}
#'      \item{ALL_ROADBLOCK_NOT_ALLOWED - Roadblocking to display all creatives is not allowed.}
#'      \item{CREATIVE_SET_ROADBLOCK_NOT_ALLOWED - Roadblocking to display all master and companion creative set is not
#' allowed.}
#'      \item{FRACTIONAL_PERCENTAGE_NOT_ALLOWED - Fractional percentage is not allowed.}
#'      \item{DISCOUNT_NOT_ALLOWED - For certain LineItem configurations discounts are not allowed.}
#'      \item{UPDATE_CANCELED_LINE_ITEM_NOT_ALLOWED - Updating a canceled line item is not allowed.}
#'      \item{UPDATE_PENDING_APPROVAL_LINE_ITEM_NOT_ALLOWED - Updating a pending approval line item is not allowed.}
#'      \item{UPDATE_ARCHIVED_LINE_ITEM_NOT_ALLOWED - Updating an archived line item is not allowed.}
#'      \item{CREATE_OR_UPDATE_LEGACY_DFP_LINE_ITEM_TYPE_NOT_ALLOWED - Create or update legacy dfp line item type is not allowed.}
#'      \item{COPY_LINE_ITEM_FROM_DIFFERENT_COMPANY_NOT_ALLOWED - Copying line item from different company (advertiser) to the same order is
#' not allowed.}
#'      \item{INVALID_SIZE_FOR_PLATFORM - The size is invalid for the specified platform.}
#'      \item{INVALID_LINE_ITEM_TYPE_FOR_PLATFORM - The line item type is invalid for the specified platform.}
#'      \item{INVALID_WEB_PROPERTY_FOR_PLATFORM - The web property cannot be served on the specified platform.}
#'      \item{INVALID_WEB_PROPERTY_FOR_ENVIRONMENT - The web property cannot be served on the specified environment.}
#'      \item{AFMA_BACKFILL_NOT_ALLOWED - AFMA backfill not supported.}
#'      \item{UPDATE_ENVIRONMENT_TYPE_NOT_ALLOWED - Environment type cannot change once saved.}
#'      \item{COMPANIONS_NOT_ALLOWED - The placeholders are invalid because they contain companions, but the line
#' item does not support companions.}
#'      \item{ROADBLOCKS_WITH_NONROADBLOCKS_NOT_ALLOWED - The placeholders are invalid because some of them are roadblocks, and some
#' are not. Either all roadblock placeholders must contain companions, or no
#' placeholders may contain companions. This does not apply to video creative
#' sets.}
#'      \item{CANNOT_UPDATE_TO_OR_FROM_CREATIVE_SET_ROADBLOCK - A line item cannot be updated from having RoadblockingType CREATIVE_SET to
#' having a different RoadblockingType, or vice versa.}
#'      \item{UPDATE_FROM_BACKFILL_LINE_ITEM_TYPE_NOT_ALLOWED - Can not change from a backfill line item type once creatives have been
#' assigned.}
#'      \item{UPDATE_TO_BACKFILL_LINE_ITEM_TYPE_NOT_ALLOWED - Can not change to a backfill line item type once creatives have been
#' assigned.}
#'      \item{UPDATE_BACKFILL_WEB_PROPERTY_NOT_ALLOWED - Can not change to backfill web property once creatives have been assigned.}
#'      \item{INVALID_COMPANION_DELIVERY_OPTION_FOR_ENVIRONMENT_TYPE - The companion delivery option is not valid for your environment type.}
#'      \item{COMPANION_BACKFILL_REQUIRES_VIDEO - Companion backfill is enabled but environment type not video.}
#'      \item{COMPANION_DELIVERY_OPTION_REQUIRE_PREMIUM - Companion delivery options require premium networks.}
#'      \item{DUPLICATE_MASTER_SIZES - The master size of placeholders have duplicates.}
#'      \item{INVALID_PRIORITY_FOR_LINE_ITEM_TYPE - The line item priority is invalid if for dynamic allocation line items it is
#' different than the default for free publishers. When allowed, Premium
#' publishers can change the priority to any value.}
#'      \item{INVALID_ENVIRONMENT_TYPE - The environment type is not valid.}
#'      \item{INVALID_ENVIRONMENT_TYPE_FOR_PLATFORM - The environment type is not valid for the target platform.}
#'      \item{INVALID_TYPE_FOR_AUTO_EXTENSION - Only LineItemType STANDARD line items can be auto extended.}
#'      \item{VIDEO_INVALID_ROADBLOCKING - Video line items cannot change the roadblocking type.}
#'      \item{BACKFILL_TYPE_NOT_ALLOWED - The backfill feature is not enabled according to your features.}
#'      \item{INVALID_BACKFILL_LINK_TYPE - The web property is invalid. A line item must have an appropriate web
#' property selected.}
#'      \item{DIFFERENT_BACKFILL_ACCOUNT - All line items in a programmatic order must have web property codes from the
#' same account.}
#'      \item{COMPANION_DELIVERY_OPTIONS_NOT_ALLOWED_WITH_BACKFILL - Companion delivery options are not allowed with dynamic allocation line
#' items.}
#'      \item{INVALID_WEB_PROPERTY_FOR_ADX_BACKFILL - Dynamic allocation using the AdExchange should always use an AFC web
#' property.}
#'      \item{INVALID_SIZE_FOR_ENVIRONMENT - Aspect ratio sizes cannot be used with video line items.}
#'      \item{TARGET_PLATOFRM_NOT_ALLOWED - The specified target platform is not allowed.}
#'      \item{INVALID_LINE_ITEM_CURRENCY - Currency on a line item must be one of the specified network currencies.}
#'      \item{LINE_ITEM_CANNOT_HAVE_MULTIPLE_CURRENCIES - All money fields on a line item must specify the same currency.}
#'      \item{CANNOT_CHANGE_CURRENCY - Once a line item has moved into a a delivering state the currency cannot be
#' changed.}
#'      \item{INVALID_FOR_OFFLINE - The line item settings are invalid for an offline lineitem.}
#'      \item{INVALID_LINE_ITEM_DATE_TIME - A DateTime associated with the line item is not valid.}
#'      \item{INVALID_COST_PER_UNIT_FOR_CPA - CPA LineItem line items must specify a zero cost for the LineItem
#' costPerUnit.}
#'      \item{UPDATE_CPA_COST_TYPE_NOT_ALLOWED - Once a LineItem is activated its LineItem costPerUnit cannot be updated
#' to/from CPA.}
#'      \item{DUPLICATED_UNIT_TYPE - There cannot be goals with duplicated unit type among the secondary goals
#' for a LineItem line items.}
#'      \item{MULTIPLE_GOAL_TYPE_NOT_ALLOWED - The secondary goals of a LineItem line items must have the same goal type.}
#'      \item{INVALID_UNIT_TYPE_COMBINATION_FOR_SECONDARY_GOALS - For a CPA LineItem line item, the possible combinations for secondary goals
#' must be either click-through conversion only, click-through conversion with
#' view-through conversion or total conversion only. For a Viewable CPM
#' LineItem line item or a CPM based Sponsorship LineItem line item, its
#' secondary goal has to be impression-based.}
#'      \item{INVALID_CREATIVE_TARGETING_NAME - One or more of the targeting names specified by a creative placeholder or
#' line item creative association were not found on the line item.}
#'      \item{INVALID_CREATIVE_CUSTOM_TARGETING_MATCH_TYPE - Creative targeting expressions on the line item can only have custom
#' criteria targeting with CustomTargetingValue.MatchType EXACT.}
#'      \item{INVALID_CREATIVE_ROTATION_TYPE_WITH_CREATIVE_TARGETING - Line item with creative targeting expressions cannot have creative rotation
#' type set to CreativeRotationType SEQUENTIAL.}
#'      \item{UNSUPPORTED_LINE_ITEM_TYPE_FOR_THIS_API_VERSION - The line item type is not supported for this API version.}
#'      \item{NATIVE_CREATIVE_TEMPLATE_REQUIRED - Placeholders can only have native creative templates.}
#'      \item{CANNOT_HAVE_CREATIVE_TEMPLATE - Non-native placeholders cannot have creative templates.}
#'      \item{SYSTEM_DEFINED_TEMPLATE_REQUIRED - For AdX backfill line items, native placeholders can only contain
#' system-defined native creative templates.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{LineItemFlightDateError}
#' 
#' Lists all errors associated with LineItem start and end dates.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.LineItemFlightDateError}{Google Documentation for LineItemFlightDateError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a LineItemFlightDateError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{START_DATE_TIME_IS_IN_PAST}
#'      \item{END_DATE_TIME_IS_IN_PAST}
#'      \item{END_DATE_TIME_NOT_AFTER_START_TIME}
#'      \item{END_DATE_TIME_TOO_LATE}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{LineItemOperationError}
#' 
#' Lists all errors for executing operations on line items
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.LineItemOperationError}{Google Documentation for LineItemOperationError}
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
#' \strong{LineItemTemplate}
#' 
#' Represents the template that populates the fields of a new line item being
#' created.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.LineItemTemplate}{Google Documentation for LineItemTemplate}
#' \describe{
#'  \item{id}{a integer - Uniquely identifies the LineItemTemplate. This attribute is read-only and is
#' assigned by Google when a template is created.}
#'  \item{name}{a character - The name of the LineItemTemplate. This attribute is required.}
#'  \item{isDefault}{a boolean - Whether or not the LineItemTemplate represents the default choices for
#' creating a LineItem. Only one default LineItemTemplate is allowed per
#' Network. This attribute is readonly.}
#'  \item{lineItemName}{a character - The default LineItem name name of a new LineItem. This attribute is optional
#' and has a maximum length of 127 characters.}
#'  \item{targetPlatform}{a TargetPlatform - The default LineItem targetPlatform target platform for a new LineItem. This
#' attribute is required. This can take one of the following values: 
#'    \itemize{
#'      \item{WEB - The desktop web.}
#'      \item{MOBILE - Mobile devices.}
#'      \item{ANY - An universal target platform that combines mobile and desktop features.}
#'    }
#'   }
#'  \item{enabledForSameAdvertiserException}{a boolean - The default value for the LineItem enabledForSameAdvertiserException field
#' of a new LineItem. This attribute is required.}
#'  \item{notes}{a character - The default LineItem notes notes for a new LineItem. This attribute is
#' optional and has a maximum length of 65,535 characters.}
#'  \item{lineItemType}{a LineItemType - The default LineItem lineItemType type of a new LineItem. This attribute is
#' required. This can take one of the following values: 
#'    \itemize{
#'      \item{SPONSORSHIP - The type of LineItem for which a percentage of all the impressions that are
#' being sold are reserved.}
#'      \item{STANDARD - The type of LineItem for which a fixed quantity of impressions or clicks are
#' reserved.}
#'      \item{NETWORK - The type of LineItem most commonly used to fill a site's unsold inventory if
#' not contractually obligated to deliver a requested number of impressions.
#' Users specify the daily percentage of unsold impressions or clicks when
#' creating this line item.}
#'      \item{BULK - The type of LineItem for which a fixed quantity of impressions or clicks
#' will be delivered at a priority lower than the LineItemType STANDARD type.}
#'      \item{PRICE_PRIORITY - The type of LineItem most commonly used to fill a site's unsold inventory if
#' not contractually obligated to deliver a requested number of impressions.
#' Users specify the fixed quantity of unsold impressions or clicks when
#' creating this line item.}
#'      \item{HOUSE - The type of LineItem typically used for ads that promote products and
#' services chosen by the publisher. These usually do not generate revenue and
#' have the lowest delivery priority.}
#'      \item{LEGACY_DFP - Represents a legacy LineItem that has been migrated from the DFP system.
#' Such line items cannot be created any more. Also, these line items cannot be
#' activated or resumed.}
#'      \item{CLICK_TRACKING - The type of LineItem used for ads that track ads being served externally of
#' DFP, for example an email newsletter. The click through would reference this
#' ad, and the click would be tracked via this ad.}
#'      \item{ADSENSE - A LineItem using dynamic allocation backed by AdSense.}
#'      \item{AD_EXCHANGE - A LineItem using dynamic allocation backed by the Doubleclick Ad Exchange.}
#'      \item{BUMPER - Represents a non-monetizable video LineItem that targets one or more bumper
#' positions, which are short house video messages used by publishers to
#' separate content from ad breaks.}
#'      \item{ADMOB - A LineItem using dynamic allocation backed by AdMob.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{startTime}{a DateTime - The default time of the LineItem startDateTime field of a new LineItem. Only
#' the time part is used, and the date part is ignored. This attribute is
#' optional.}
#'  \item{endTime}{a DateTime - The default time of the LineItem endDateTime field of a new LineItem. Only
#' the time part is used, and the date part is ignored. This attribute is
#' optional.}
#'  \item{deliveryRateType}{a DeliveryRateType - The default LineItem deliveryRateType delivery strategy for a new LineItem.
#' This attribute is required. This can take one of the following values: 
#'    \itemize{
#'      \item{EVENLY - Line items are served as evenly as possible across the number of days
#' specified in a line item's LineItem duration.}
#'      \item{FRONTLOADED - Line items are served more aggressively in the beginning of the flight date.}
#'      \item{AS_FAST_AS_POSSIBLE - The booked impressions for a line item may be delivered well before the
#' LineItem endDateTime. Other lower-priority or lower-value line items will be
#' stopped from delivering until this line item meets the number of impressions
#' or clicks it is booked for.}
#'    }
#'   }
#'  \item{roadblockingType}{a RoadblockingType - The default LineItem roadblockingType roadblocking strategy for a new
#' LineItem. This attribute is required. This can take one of the following values: 
#'    \itemize{
#'      \item{ONLY_ONE - Only one creative from a line item can serve at a time.}
#'      \item{ONE_OR_MORE - Any number of creatives from a line item can serve together at a time.}
#'      \item{AS_MANY_AS_POSSIBLE - As many creatives from a line item as can fit on a page will serve. This
#' could mean anywhere from one to all of a line item's creatives given the
#' size constraints of ad slots on a page.}
#'      \item{ALL_ROADBLOCK - All or none of the creatives from a line item will serve. This option will
#' only work if served to a GPT tag using SRA (single request architecture
#' mode).}
#'      \item{CREATIVE_SET - A master/companion CreativeSet roadblocking type. A LineItem
#' creativePlaceholders must be set accordingly.}
#'    }
#'   }
#'  \item{creativeRotationType}{a CreativeRotationType - The default LineItem creativeRotationType creative rotation strategy for a
#' new LineItem. This attribute is required. This can take one of the following values: 
#'    \itemize{
#'      \item{EVEN - Creatives are displayed roughly the same number of times over the duration
#' of the line item.}
#'      \item{OPTIMIZED - Creatives are served roughly proportionally to their performance.}
#'      \item{MANUAL - Creatives are served roughly proportionally to their weights, set on the
#' LineItemCreativeAssociation.}
#'      \item{SEQUENTIAL - Creatives are served exactly in sequential order, aka Storyboarding. Set on
#' the LineItemCreativeAssociation.}
#'    }
#'   }
#' }
#' 
#' \strong{LineItemTemplatePage}
#' 
#' Captures a page of LineItemTemplate objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.LineItemTemplatePage}{Google Documentation for LineItemTemplatePage}
#' \describe{
#'  \item{totalResultSetSize}{a integer - The size of the total result set to which this page belongs.}
#'  \item{startIndex}{a integer - The absolute index in the total result set on which this page begins.}
#'  \item{results}{a LineItemTemplate - The collection of line item templates contained within this page.}
#' }
#' 
#' \strong{NotNullError}
#' 
#' Caused by supplying a null value for an attribute that cannot be null.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.NotNullError}{Google Documentation for NotNullError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.NullError}{Google Documentation for NullError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.NumberValue}{Google Documentation for NumberValue}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.ObjectValue}{Google Documentation for ObjectValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#' }
#' 
#' \strong{OrderActionError}
#' 
#' Lists all errors associated with performing actions on Order objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.OrderActionError}{Google Documentation for OrderActionError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a OrderActionError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{PERMISSION_DENIED - The operation is not allowed due to lack of permissions.}
#'      \item{NOT_APPLICABLE - The operation is not applicable for the current state of the Order.}
#'      \item{IS_ARCHIVED - The Order is archived, an OrderAction cannot be applied to an archived
#' order.}
#'      \item{HAS_ENDED - The Order is past its end date, An OrderAction cannot be applied to a order
#' that has ended.}
#'      \item{CANNOT_APPROVE_WITH_UNRESERVED_LINE_ITEMS - A Order cannot be approved if it contains reservable LineItems that are
#' unreserved.}
#'      \item{CANNOT_DELETE_ORDER_WITH_DELIVERED_LINEITEMS - Deleting an Order with delivered line items is not allowed}
#'      \item{CANNOT_APPROVE_COMPANY_CREDIT_STATUS_NOT_ACTIVE - Cannot approve because company credit status is not active.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{OrderError}
#' 
#' Lists all errors associated with orders.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.OrderError}{Google Documentation for OrderError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a OrderError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{UPDATE_CANCELED_ORDER_NOT_ALLOWED - Updating a canceled order is not allowed.}
#'      \item{UPDATE_PENDING_APPROVAL_ORDER_NOT_ALLOWED - Updating an order that has its approval pending is not allowed.}
#'      \item{UPDATE_ARCHIVED_ORDER_NOT_ALLOWED - Updating an archived order is not allowed.}
#'      \item{CANNOT_MODIFY_PROPOSAL_ID - DSM can set the proposal ID only at the time of creation of order. Setting
#' or changing proposal ID at the time of order update is not allowed.}
#'      \item{PRIMARY_USER_REQUIRED - Cannot have secondary user without a primary user.}
#'      \item{PRIMARY_USER_CANNOT_BE_SECONDARY - Primary user cannot be added as a secondary user too.}
#'      \item{ORDER_TEAM_NOT_ASSOCIATED_WITH_ADVERTISER - A team associated with the order must also be associated with the
#' advertiser.}
#'      \item{USER_NOT_ON_ORDERS_TEAMS - The user assigned to the order, like salesperson or trafficker, must be on
#' one of the order's teams.}
#'      \item{AGENCY_NOT_ON_ORDERS_TEAMS - The agency assigned to the order must belong to one of the order's teams.}
#'      \item{INVALID_FIELDS_SET_FOR_NON_PROGRAMMATIC_ORDER - Programmatic info fields should not be set for a non-programmatic order.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{ParseError}
#' 
#' Lists errors related to parsing.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.ParseError}{Google Documentation for ParseError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.PermissionError}{Google Documentation for PermissionError}
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
#' \strong{ProgrammaticError}
#' 
#' Errors associated with programmatic line items
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.ProgrammaticError}{Google Documentation for ProgrammaticError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a ProgrammaticError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{AUDIENCE_EXTENSION_NOT_SUPPORTED - Audience extension is not supported by programmatic line items.}
#'      \item{AUTO_EXTENSION_DAYS_NOT_SUPPORTED - Auto extension days is not supported by programmatic line items.}
#'      \item{VIDEO_NOT_SUPPORTED - Video is currently not supported.}
#'      \item{ROADBLOCKING_NOT_SUPPORTED - Roadblocking is not supported by programmatic line items.}
#'      \item{INVALID_CREATIVE_ROTATION - Programmatic line items do not support CreativeRotationType SEQUENTIAL.}
#'      \item{INVALID_LINE_ITEM_TYPE - Programmatic line items only support LineItemType STANDARD and LineItemType
#' SPONSORSHIP if the relevant feature is on.}
#'      \item{INVALID_COST_TYPE - Programmatic line items only support CostType CPM.}
#'      \item{SIZE_NOT_SUPPORTED - Programmatic line items only support a creative size that is supported by
#' AdX. The list of supported sizes is maintained based on the list published
#' in the help docs: <a
#' href="https://support.google.com/adxseller/answer/1100453">
#' https://support.google.com/adxseller/answer/1100453</a>}
#'      \item{ZERO_COST_PER_UNIT_NOT_SUPPORTED - Zero cost per unit is not supported by programmatic line items.}
#'      \item{CANNOT_UPDATE_FIELD_FOR_APPROVED_LINE_ITEMS - Some fields cannot be updated on approved line items.}
#'      \item{CANNOT_CREATE_LINE_ITEM_FOR_APPROVED_ORDER - Creating a new line item in an approved order is not allowed.}
#'      \item{CANNOT_UPDATE_BACKFILL_WEB_PROPERTY_FOR_APPROVED_LINE_ITEMS - Cannot change backfill web property for a programmatic line item whose order
#' has been approved.}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.PublisherQueryLanguageContextError}{Google Documentation for PublisherQueryLanguageContextError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.PublisherQueryLanguageSyntaxError}{Google Documentation for PublisherQueryLanguageSyntaxError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.QuotaError}{Google Documentation for QuotaError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.RangeError}{Google Documentation for RangeError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.RequiredCollectionError}{Google Documentation for RequiredCollectionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.RequiredError}{Google Documentation for RequiredError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.RequiredNumberError}{Google Documentation for RequiredNumberError}
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
#' \strong{RequiredSizeError}
#' 
#' A list of all errors to be used for validating Size.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.RequiredSizeError}{Google Documentation for RequiredSizeError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a RequiredSizeError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{REQUIRED - Creative size or LineItem creativeSizes is missing.}
#'      \item{NOT_ALLOWED - LineItemCreativeAssociation sizes must be a subset of LineItem
#' creativeSizes.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{ReservationDetailsError}
#' 
#' Lists all errors associated with LineItem's reservation details.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.ReservationDetailsError}{Google Documentation for ReservationDetailsError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a ReservationDetailsError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{UNLIMITED_UNITS_BOUGHT_NOT_ALLOWED - There is no limit on the number of ads delivered for a line item when you
#' set LineItem duration to be LineItemSummary.Duration NONE. This can only be
#' set for line items of type LineItemType PRICE_PRIORITY.}
#'      \item{UNLIMITED_END_DATE_TIME_NOT_ALLOWED - LineItem unlimitedEndDateTime can be set to true for only line items of type
#' LineItemType SPONSORSHIP, LineItemType NETWORK, LineItemType PRICE_PRIORITY
#' and LineItemType HOUSE.}
#'      \item{PERCENTAGE_UNITS_BOUGHT_TOO_HIGH - When LineItem lineItemType is LineItemType SPONSORSHIP, then LineItem
#' unitsBought represents the percentage of available impressions reserved.
#' That value cannot exceed 100.}
#'      \item{DURATION_NOT_ALLOWED - The line item type does not support the specified duration. See
#' LineItemSummary.Duration for allowed values.}
#'      \item{UNIT_TYPE_NOT_ALLOWED - The LineItem unitType is not allowed for the given LineItem lineItemType.
#' See UnitType for allowed values.}
#'      \item{COST_TYPE_NOT_ALLOWED - The LineItem costType is not allowed for the LineItem lineItemType. See
#' CostType for allowed values.}
#'      \item{COST_TYPE_UNIT_TYPE_MISMATCH_NOT_ALLOWED - When LineItem costType is CostType CPM, LineItem unitType must be UnitType
#' IMPRESSIONS and when LineItem costType is CostType CPC, LineItem unitType
#' must be UnitType CLICKS.}
#'      \item{LINE_ITEM_TYPE_NOT_ALLOWED - Inventory cannot be reserved for line items which are not of type
#' LineItemType SPONSORSHIP or LineItemType STANDARD.}
#'      \item{NETWORK_REMNANT_ORDER_CANNOT_UPDATE_LINEITEM_TYPE - Remnant line items from the Google Ad Manager cannot be changed to other
#' line item types once delivery begins. This restricition does not apply for
#' new line items created in Doubleclick For Publishers.}
#'      \item{BACKFILL_WEBPROPERTY_CODE_NOT_ALLOWED - A dynamic allocation web property can only be set on a line item of type
#' AdSense or Ad Exchange.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{ServerError}
#' 
#' Errors related to the server.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.ServerError}{Google Documentation for ServerError}
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
#' \strong{SetTopBoxLineItemError}
#' 
#' Errors associated with set-top box LineItem line items.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.SetTopBoxLineItemError}{Google Documentation for SetTopBoxLineItemError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a SetTopBoxLineItemError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{NON_SET_TOP_BOX_AD_UNIT_TARGETED - The set-top box line item cannot target an ad unit that doesn't have an
#' external set-top box channel ID.}
#'      \item{AT_LEAST_ONE_AD_UNIT_MUST_BE_TARGETED - The set-top box line item must target at least one ad unit.}
#'      \item{CANNOT_EXCLUDE_AD_UNITS - The set-top box line item cannot exclude ad units.}
#'      \item{POD_POSITION_OUT_OF_RANGE - The set-top box line item can only target pod positions 1 - 15.}
#'      \item{MIDROLL_POSITION_OUT_OF_RANGE - The set-top box line item can only target midroll positions 4 - 100.}
#'      \item{FEATURE_NOT_ENABLED - The set-top box feature is not enabled.}
#'      \item{INVALID_ENVIRONMENT_TYPE - Only EnvironmentType VIDEO_PLAYER is supported for set-top box line items.}
#'      \item{COMPANIONS_NOT_SUPPORTED - Companions are not supported for set-top box line items.}
#'      \item{INVALID_CREATIVE_SIZE - Set-top box line items only support sizes supported by Canoe.}
#'      \item{INVALID_LINE_ITEM_TYPE - Set-top box line items only support LineItemType STANDARD, LineItemType
#' HOUSE, and LineItemType SPONSORSHIP line item types.}
#'      \item{ORDERS_WITH_STANDARD_LINE_ITEMS_CANNOT_CONTAIN_HOUSE_OR_SPONSORSHIP_LINE_ITEMS - Order orders containing LineItemType STANDARD set-top box line items cannot
#' contain set-top box line items of type LineItemType HOUSE or LineItemType
#' SPONSORSHIP.}
#'      \item{INVALID_COST_TYPE - Set-top box line items only support CostType CPM.}
#'      \item{COST_PER_UNIT_NOT_ALLOWED - Set-top box line items do not support a cost per unit.}
#'      \item{DISCOUNT_NOT_ALLOWED - Set-top box line items do not support discounts.}
#'      \item{FRONTLOADED_DELIVERY_RATE_NOT_SUPPORTED - Set-top box line items do not support DeliveryRateType FRONTLOADED.}
#'      \item{INVALID_LINE_ITEM_STATUS_CHANGE - Set-top box line items cannot go from a state that is ready to be synced to
#' a state that is not ready to be synced.}
#'      \item{INVALID_LINE_ITEM_PRIORITY - Set-top box line items can only have certain priorities for different
#' ReservationType reservation types: ReservationType SPONSORSHIP => 1
#' ReservationType HOUSE => 16 ReservationType STANDARD => Between 1 and 16
#' inclusive.}
#'      \item{SYNC_REVISION_NOT_INCREASING - When a set-top box line item is pushed to Canoe, a revision number is used
#' to keep track of the last version of the line item that DFP synced with
#' Canoe. The only changes allowed on revisions within DFP is increasing the
#' revision number.}
#'      \item{SYNC_REVISION_MUST_BE_GREATER_THAN_ZERO - When a set-top box line item is pushed to Canoe, a revision number is used
#' to keep track of the last version of the line item that DFP synced with
#' Canoe. Sync revisions begin at one and can only increase in value.}
#'      \item{CANNOT_UNARCHIVE_SET_TOP_BOX_LINE_ITEMS - Set Top box line items cannot be unarchived.}
#'      \item{COPY_SET_TOP_BOX_ENABLED_LINE_ITEM_NOT_ALLOWED - Set-top box enabled line items cannot be copied for V0 of the video Canoe
#' campaign push.}
#'      \item{INVALID_LINE_ITEM_TYPE_CHANGE - Standard set-top box line items cannot be updated to be LineItemType House
#' or LineItemType Sponsorship line items and vice versa.}
#'      \item{CREATIVE_ROTATION_TYPE_MUST_BE_EVENLY_OR_WEIGHTED - Set-top box line items can only have a creative rotation type of
#' CreativeRotationType.EVEN or CreativeRotationType MANUAL.}
#'      \item{INVALID_FREQUENCY_CAP_TIME_UNIT - Set-top box line items can only have frequency capping with time units of
#' TimeUnit DAY, TimeUnit HOUR, TimeUnit POD, or TimeUnit STREAM.}
#'      \item{INVALID_FREQUENCY_CAP_TIME_RANGE - Set-top box line items can only have specific time ranges for certain time
#' units: TimeUnit HOUR => 1, 2, 6 TimeUnit DAY => 1, 3}
#'      \item{INVALID_PRIMARY_GOAL_UNIT_TYPE - Set-top box line items can only have a unit type of UnitType IMPRESSIONS.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{SetValue}
#' 
#' Contains a set of Value Values. May not contain duplicates.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.SetValue}{Google Documentation for SetValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{values}{a Value - The values. They must all be the same type of Value and not contain
#' duplicates.}
#' }
#' 
#' \strong{SoapRequestHeader}
#' 
#' Represents the SOAP request header used by API requests.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.SoapRequestHeader}{Google Documentation for SoapRequestHeader}
#' \describe{
#'  \item{networkCode}{a character - The network code to use in the context of a request.}
#'  \item{applicationName}{a character - The name of client library application.}
#' }
#' 
#' \strong{SoapResponseHeader}
#' 
#' Represents the SOAP request header used by API responses.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.SoapResponseHeader}{Google Documentation for SoapResponseHeader}
#' \describe{
#'  \item{requestId}{a character}
#'  \item{responseTime}{a integer}
#' }
#' 
#' \strong{Statement}
#' 
#' Holds the query in PQL syntax. See link for how to form PQL.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.Statement}{Google Documentation for Statement}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.StatementError}{Google Documentation for StatementError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.String_ValueMapEntry}{Google Documentation for String_ValueMapEntry}
#' \describe{
#'  \item{key}{a character}
#'  \item{value}{a Value}
#' }
#' 
#' \strong{StringLengthError}
#' 
#' Errors for Strings which do not meet given length constraints.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.StringLengthError}{Google Documentation for StringLengthError}
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
#' \strong{TeamError}
#' 
#' Errors related to a Team.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.TeamError}{Google Documentation for TeamError}
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
#' \strong{TechnologyTargetingError}
#' 
#' Technology targeting validation errors.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.TechnologyTargetingError}{Google Documentation for TechnologyTargetingError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a TechnologyTargetingError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{MOBILE_LINE_ITEM_CONTAINS_WEB_TECH_CRITERIA - Mobile line item cannot target web-only targeting criteria.}
#'      \item{WEB_LINE_ITEM_CONTAINS_MOBILE_TECH_CRITERIA - Web line item cannot target mobile-only targeting criteria.}
#'      \item{MOBILE_CARRIER_TARGETING_FEATURE_NOT_ENABLED - The mobile carrier targeting feature is not enabled.}
#'      \item{DEVICE_CAPABILITY_TARGETING_FEATURE_NOT_ENABLED - The device capability targeting feature is not enabled.}
#'      \item{DEVICE_CATEGORY_TARGETING_FEATURE_NOT_ENABLED - The device category targeting feature is not enabled.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{TextValue}
#' 
#' Contains a string value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.TextValue}{Google Documentation for TextValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a character - The string value.}
#' }
#' 
#' \strong{TimeZoneError}
#' 
#' Errors related to timezones.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.TimeZoneError}{Google Documentation for TimeZoneError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.TypeError}{Google Documentation for TypeError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#' }
#' 
#' \strong{UniqueError}
#' 
#' An error for a field which must satisfy a uniqueness constraint
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.UniqueError}{Google Documentation for UniqueError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#' }
#' 
#' \strong{UserDomainTargetingError}
#' 
#' Lists all errors related to user domain targeting for a line item.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.UserDomainTargetingError}{Google Documentation for UserDomainTargetingError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a UserDomainTargetingError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{INVALID_DOMAIN_NAMES - Invalid domain names. Domain names must be at most 67 characters long. And
#' must contain only alphanumeric characters and hyphens.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{Value}
#' 
#' Value represents a value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.Value}{Google Documentation for Value}
#' \describe{
#' }
#' 
#' \strong{VideoPositionTargetingError}
#' 
#' Lists all errors related to VideoPositionTargeting.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService.VideoPositionTargetingError}{Google Documentation for VideoPositionTargetingError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a VideoPositionTargetingError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{CANNOT_MIX_BUMPER_AND_NON_BUMPER_TARGETING - Video position targeting cannot contain both bumper and non-bumper targeting
#' values.}
#'      \item{INVALID_BUMPER_TARGETING - The bumper video position targeting is invalid.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' 
#' 
#' @usage dfp_LineItemTemplateService_object_factory(obj_type, obj_data)
#' 
#' @param obj_type a string from one of the object types described above
#' @param obj_data a \code{list} of \code{lists} or a \code{data.frame} with the required components to create
#' the obj_type specified. All input names must match the expected attributes for the object.
#' If submitting a list of attributes to create 1 object make sure to nest it inside top-level list, so that
#' it is a list of length 1 with 1 list of attributes to create the object.
#' @return a string of formatted XML that can be inserted into a SOAP request body to the APT
#' @export
dfp_LineItemTemplateService_object_factory <- function(obj_type, obj_data){
 if(is.data.frame(obj_data)){
 sampled_names <- names(obj_data) } else if(is.list(obj_data)){
 sampled_names <- names(obj_data[[1]])
 } else { stop("obj_data must be a list or data.frame")
 }

 if(obj_type=='Date'){
 stopifnot(all(sampled_names %in% c('year', 'month', 'day')))
 }

 if(obj_type=='LineItemTemplate'){
 stopifnot(all(sampled_names %in% c('id', 'name', 'isDefault', 'lineItemName', 'targetPlatform', 'enabledForSameAdvertiserException', 'notes', 'lineItemType', 'startTime', 'endTime', 'deliveryRateType', 'roadblockingType', 'creativeRotationType')))
 }

}
#' 
#' getLineItemTemplatesByStatement
#' 
#' Gets a LineItemTemplatePage of LineItemTemplate objects that satisfy the given Statement query. The following fields are supported for filtering:  a set of line item templates 
#' \itemize{
#'   \item{id}
#' }
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemTemplateService#getLineItemTemplatesByStatement}{Google Documentation for getLineItemTemplatesByStatement}
#' 
#' @usage dfp_getLineItemTemplatesByStatement(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a getLineItemTemplatesByStatementResponse 
#' @export
dfp_getLineItemTemplatesByStatement <- function(request_data){

 request_body <- make_request_body(service='LineItemTemplateService', root_name='getLineItemTemplatesByStatement', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getLineItemTemplatesByStatementResponse']])
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
