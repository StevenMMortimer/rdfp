#' LineItemCreativeAssociationService
#' 
#' Provides operations for creating, updating and retrieving
#' LineItemCreativeAssociation objects.
#' A line item creative association
#' (LICA) associates a Creative with a LineItem. When a line item is selected
#' to serve, the LICAs specify which creatives can appear for the ad units
#' that are targeted by the line item. In order to be associated with a line
#' item, the creative must have a size that exists within the attribute
#' LineItem#creativeSizes.#' Each LICA has a start and end date and
#' time that defines when the creative should be displayed.
#' 
#' LineItemCreativeAssociationService Object Factory
#' 
#' A function to create a variety of objects that are part of the LineItemCreativeAssociationService
#' Note: not all objects here are inputs to the functions of this service so 
#' please consult each function for the required inputs
#' 
#' Below is a list of objects and their required components to be created with this function:
#' 
#' \strong{ActivateLineItemCreativeAssociations}
#' 
#' The action used for activating LineItemCreativeAssociation objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.ActivateLineItemCreativeAssociations}{Google Documentation for ActivateLineItemCreativeAssociations}
#' \describe{
#'  \item{extends LineItemCreativeAssociationAction}{see documentation for LineItemCreativeAssociationAction}
#' }
#' 
#' \strong{AdSenseAccountError}
#' 
#' Error for AdSense related API calls.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.AdSenseAccountError}{Google Documentation for AdSenseAccountError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a AdSenseAccountError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{ASSOCIATE_ACCOUNT_API_ERROR - An error occured while trying to associate an AdSense account with GFP.
#' Unable to create an association with AdSense or Ad Exchange account.}
#'      \item{GET_AD_SLOT_API_ERROR - An error occured while trying to get an associated web property's ad slots.
#' Unable to retrieve ad slot information from AdSense or Ad Exchange account.}
#'      \item{GET_CHANNEL_API_ERROR - An error occurred while trying to get an associated web property's ad
#' channels.}
#'      \item{GET_BULK_ACCOUNT_STATUSES_API_ERROR - An error occured while trying to retrieve account statues from AdSense API.
#' Unable to retrieve account status information. Please try again later.}
#'      \item{RESEND_VERIFICATION_EMAIL_ERROR - An error occured while trying to resend the account association verification
#' email. Error resending verification email. Please try again.}
#'      \item{UNEXPECTED_API_RESPONSE_ERROR - An error occured while trying to retrieve a response from the AdSense API.
#' There was a problem processing your request. Please try again later.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{ApiError}
#' 
#' The API error base class that provides details about an error that occurred
#' while processing a service request. The OGNL field path is provided for
#' parsers to identify the request data element that may have caused the error.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.ApiError}{Google Documentation for ApiError}
#' \describe{
#'  \item{fieldPath}{a character - The OGNL field path to identify cause of error.}
#'  \item{trigger}{a character - The data that caused the error.}
#'  \item{errorString}{a character - A simple string representation of the error and reason.}
#' }
#' 
#' \strong{ApiException}
#' 
#' Exception class for holding a list of service errors.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.ApiException}{Google Documentation for ApiException}
#' \describe{
#'  \item{message}{a character (inherited from ApplicationException) - Error message.}
#'  \item{errors}{a ApiError - List of errors.}
#' }
#' 
#' \strong{ApiVersionError}
#' 
#' Errors related to the usage of API versions.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.ApiVersionError}{Google Documentation for ApiVersionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.ApplicationException}{Google Documentation for ApplicationException}
#' \describe{
#'  \item{message}{a character - Error message.}
#' }
#' 
#' \strong{AssetError}
#' 
#' Lists all errors associated with assets.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.AssetError}{Google Documentation for AssetError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a AssetError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{NON_UNIQUE_NAME - An asset name must be unique across advertiser.}
#'      \item{FILE_NAME_TOO_LONG - The file name is too long.}
#'      \item{FILE_SIZE_TOO_LARGE - The file size is too large.}
#'      \item{MISSING_REQUIRED_DYNAMIC_ALLOCATION_CLIENT - Required client code is not present in the code snippet.}
#'      \item{MISSING_REQUIRED_DYNAMIC_ALLOCATION_HEIGHT - Required height is not present in the code snippet.}
#'      \item{MISSING_REQUIRED_DYNAMIC_ALLOCATION_WIDTH - Required width is not present in the code snippet.}
#'      \item{MISSING_REQUIRED_DYNAMIC_ALLOCATION_FORMAT - Required format is not present in the mobile code snippet.}
#'      \item{INVALID_CODE_SNIPPET_PARAMETER_VALUE - The parameter value in the code snippet is invalid.}
#'      \item{INVALID_ASSET_ID - Invalid asset Id.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{AudienceExtensionError}
#' 
#' Errors associated with audience extension enabled line items
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.AudienceExtensionError}{Google Documentation for AudienceExtensionError}
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
#' \strong{AuthenticationError}
#' 
#' An error for an exception that occurred when authenticating.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.AuthenticationError}{Google Documentation for AuthenticationError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.BooleanValue}{Google Documentation for BooleanValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a boolean - The boolean value.}
#' }
#' 
#' \strong{CollectionSizeError}
#' 
#' Error for the size of the collection being too large
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.CollectionSizeError}{Google Documentation for CollectionSizeError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.CommonError}{Google Documentation for CommonError}
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
#' \strong{CreativeAssetMacroError}
#' 
#' Lists all errors associated with creative asset macros.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.CreativeAssetMacroError}{Google Documentation for CreativeAssetMacroError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a CreativeAssetMacroError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{INVALID_MACRO_NAME - Invalid macro name specified. Macro names must start with an alpha character
#' and consist only of alpha-numeric characters and underscores and be between
#' 1 and 64 characters.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{CreativeError}
#' 
#' Lists all errors associated with creatives.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.CreativeError}{Google Documentation for CreativeError}
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
#' \strong{CreativePreviewError}
#' 
#' Errors associated with generation of creative preview URIs.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.CreativePreviewError}{Google Documentation for CreativePreviewError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a CreativePreviewError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{CANNOT_GENERATE_PREVIEW_URL - The creative cannot be previewed on this page.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{CreativeSetError}
#' 
#' Errors relating to creative sets & subclasses.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.CreativeSetError}{Google Documentation for CreativeSetError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a CreativeSetError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{VIDEO_FEATURE_REQUIRED - The 'video' feature is required but not enabled.}
#'      \item{CANNOT_CREATE_OR_UPDATE_VIDEO_CREATIVES - Video creatives (including overlays, VAST redirects, etc..) cannot be
#' created or updated through the API.}
#'      \item{ROADBLOCK_FEATURE_REQUIRED - The 'roadblock' feature is required but not enabled.}
#'      \item{MASTER_CREATIVE_CANNOT_BE_COMPANION - A master creative cannot be a companion creative in the same creative set.}
#'      \item{INVALID_ADVERTISER - Creatives in a creative set must be for the same advertiser.}
#'      \item{UPDATE_MASTER_CREATIVE_NOT_ALLOWED - Updating a master creative in a creative set is not allowed.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{CreativeTemplateError}
#' 
#' A catch-all error that lists all generic errors associated with
#' CreativeTemplate.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.CreativeTemplateError}{Google Documentation for CreativeTemplateError}
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
#' \strong{CustomCreativeError}
#' 
#' Lists all errors associated with custom creatives.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.CustomCreativeError}{Google Documentation for CustomCreativeError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a CustomCreativeError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{DUPLICATE_MACRO_NAME_FOR_CREATIVE - Macros associated with a single custom creative must have unique names.}
#'      \item{SNIPPET_REFERENCES_MISSING_MACRO - The file macro referenced in the snippet does not exist.}
#'      \item{UNRECOGNIZED_MACRO - The macro referenced in the snippet is not valid.}
#'      \item{CUSTOM_CREATIVE_NOT_ALLOWED - Custom creatives are not allowed in this context.}
#'      \item{MISSING_INTERSTITIAL_MACRO - The custom creative is an interstitial, but the snippet is missing an
#' interstitial macro.}
#'      \item{DUPLICATE_ASSET_IN_MACROS - Macros associated with the same custom creative cannot share the same asset.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{CustomFieldValueError}
#' 
#' Errors specific to editing custom field values
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.CustomFieldValueError}{Google Documentation for CustomFieldValueError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.Date}{Google Documentation for Date}
#' \describe{
#'  \item{year}{a integer - Year (e.g., 2009)}
#'  \item{month}{a integer - Month (1..12)}
#'  \item{day}{a integer - Day (1..31)}
#' }
#' 
#' \strong{DateTime}
#' 
#' Represents a date combined with the time of day.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.DateTime}{Google Documentation for DateTime}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.DateTimeValue}{Google Documentation for DateTimeValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a DateTime - The DateTime value.}
#' }
#' 
#' \strong{DateValue}
#' 
#' Contains a date value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.DateValue}{Google Documentation for DateValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a Date - The Date value.}
#' }
#' 
#' \strong{DeactivateLineItemCreativeAssociations}
#' 
#' The action used for deactivating LineItemCreativeAssociation objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.DeactivateLineItemCreativeAssociations}{Google Documentation for DeactivateLineItemCreativeAssociations}
#' \describe{
#'  \item{extends LineItemCreativeAssociationAction}{see documentation for LineItemCreativeAssociationAction}
#' }
#' 
#' \strong{DeleteLineItemCreativeAssociations}
#' 
#' The action used for deleting LineItemCreativeAssociation objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.DeleteLineItemCreativeAssociations}{Google Documentation for DeleteLineItemCreativeAssociations}
#' \describe{
#'  \item{extends LineItemCreativeAssociationAction}{see documentation for LineItemCreativeAssociationAction}
#' }
#' 
#' \strong{EntityChildrenLimitReachedError}
#' 
#' Lists errors relating to having too many children on an entity.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.EntityChildrenLimitReachedError}{Google Documentation for EntityChildrenLimitReachedError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.EntityLimitReachedError}{Google Documentation for EntityLimitReachedError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.FeatureError}{Google Documentation for FeatureError}
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
#' \strong{FileError}
#' 
#' A list of all errors to be used for problems related to files.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.FileError}{Google Documentation for FileError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a FileError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{MISSING_CONTENTS - The provided byte array is empty.}
#'      \item{SIZE_TOO_LARGE - The provided file is larger than the maximum size defined for the network.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{ImageError}
#' 
#' Lists all errors associated with images.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.ImageError}{Google Documentation for ImageError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.InternalApiError}{Google Documentation for InternalApiError}
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
#' \strong{InvalidPhoneNumberError}
#' 
#' Lists all errors associated with phone numbers.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.InvalidPhoneNumberError}{Google Documentation for InvalidPhoneNumberError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a InvalidPhoneNumberError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{INVALID_FORMAT - The phone number is invalid.}
#'      \item{TOO_SHORT - The phone number is too short.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{InvalidUrlError}
#' 
#' Lists all errors associated with URLs.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.InvalidUrlError}{Google Documentation for InvalidUrlError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.LabelEntityAssociationError}{Google Documentation for LabelEntityAssociationError}
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
#' \strong{LineItemCreativeAssociation}
#' 
#' A LineItemCreativeAssociation associates a Creative or CreativeSet with a
#' LineItem so that the creative can be served in ad units targeted by the line
#' item.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.LineItemCreativeAssociation}{Google Documentation for LineItemCreativeAssociation}
#' \describe{
#'  \item{lineItemId}{a integer - The ID of the LineItem to which the Creative should be associated. This
#' attribute is required.}
#'  \item{creativeId}{a integer - The ID of the Creative being associated with a LineItem.  This attribute is
#' required if this is an association between a line item and a creative. <br>
#' This attribute is ignored if this is an association between a line item and
#' a creative set.  If this is an association between a line item and a
#' creative, when retrieving the line item creative association, the
#' creativeId] will be the creative's ID. <br> If this is an association
#' between a line item and a creative set, when retrieving the line item
#' creative association, the \{@@link creativeId will be the ID of the
#' CreativeSet masterCreativeId master creative.}
#'  \item{creativeSetId}{a integer - The ID of the CreativeSet being associated with a LineItem. This attribute
#' is required if this is an association between a line item and a creative
#' set.  This field will be null when retrieving associations between line
#' items and creatives not belonging to a set.}
#'  \item{manualCreativeRotationWeight}{a double - The weight of the Creative. This value is only used if the line item's
#' creativeRotationType is set to CreativeRotationType MANUAL. This attribute
#' is optional and defaults to 10.}
#'  \item{sequentialCreativeRotationIndex}{a integer - The sequential rotation index of the Creative. This value is used only if
#' the associated line item's LineItem creativeRotationType is set to
#' CreativeRotationType SEQUENTIAL. This attribute is optional and defaults to
#' 1.}
#'  \item{startDateTime}{a DateTime - Overrides the value set for LineItem startDateTime. This value is optional
#' and is only valid for DFP premium networks.}
#'  \item{startDateTimeType}{a StartDateTimeType - Specifies whether to start serving to the LineItemCreativeAssociation right
#' away, in an hour, etc. This attribute is optional and defaults to
#' StartDateTimeType USE_START_DATE_TIME. This can take one of the following values: 
#'    \itemize{
#'      \item{USE_START_DATE_TIME - Use the value in startDateTime.}
#'      \item{IMMEDIATELY - The entity will start serving immediately.  startDateTime in the request is
#' ignored and will be set to the current time. Additionally, startDateTimeType
#' will be set to StartDateTimeType USE_START_DATE_TIME.}
#'      \item{ONE_HOUR_FROM_NOW - The entity will start serving one hour from now.  startDateTime in the
#' request is ignored and will be set to one hour from the current time.
#' Additionally, startDateTimeType will be set to StartDateTimeType
#' USE_START_DATE_TIME.}
#'    }
#'   }
#'  \item{endDateTime}{a DateTime - Overrides LineItem endDateTime. This value is optional and is only valid for
#' DFP premium networks.}
#'  \item{destinationUrl}{a character - Overrides the value set for HasDestinationUrlCreative destinationUrl. This
#' value is optional and is only valid for DFP premium networks.}
#'  \item{sizes}{a Size - Overrides the value set for Creative size, which allows the creative to be
#' served to ad units that would otherwise not be compatible for its actual
#' size. This value is optional.}
#'  \item{status}{a LineItemCreativeAssociation.Status - The status of the association. This attribute is read-only. This can take one of the following values: 
#'    \itemize{
#'      \item{ACTIVE - The association is active and the associated Creative can be served.}
#'      \item{NOT_SERVING - The association is active but the associated Creative may not be served,
#' because its size is not targeted by the line item.}
#'      \item{INACTIVE - The association is inactive and the associated Creative is ineligible for
#' being served.}
#'      \item{DELETED - The association is deleted and the associated Creative is ineligible for
#' being served.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{stats}{a LineItemCreativeAssociationStats - Contains trafficking statistics for the association. This attribute is
#' readonly and is populated by Google. This will be null in case there are no
#' statistics for the association yet.}
#'  \item{lastModifiedDateTime}{a DateTime - The date and time this association was last modified.}
#'  \item{targetingName}{a character - Specifies CreativeTargeting for this line item creative association. This
#' attribute is optional. It should match the creative targeting specified on
#' the corresponding CreativePlaceholder in the LineItem that is being
#' associated with the Creative.}
#' }
#' 
#' \strong{LineItemCreativeAssociationAction}
#' 
#' Represents the actions that can be performed on LineItemCreativeAssociation
#' objects. May take one of the actions listed below.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.LineItemCreativeAssociationAction}{Google Documentation for LineItemCreativeAssociationAction}
#' \describe{
#'  \item{ActivateLineItemCreativeAssociations}{The action used for activating LineItemCreativeAssociation objects.}
#'  \item{DeactivateLineItemCreativeAssociations}{The action used for deactivating LineItemCreativeAssociation objects.}
#'  \item{DeleteLineItemCreativeAssociations}{The action used for deleting LineItemCreativeAssociation objects.}
#' }
#' 
#' \strong{LineItemCreativeAssociationError}
#' 
#' Lists all errors associated with line item-to-creative association dates.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.LineItemCreativeAssociationError}{Google Documentation for LineItemCreativeAssociationError}
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
#' \strong{LineItemCreativeAssociationOperationError}
#' 
#' Lists all errors for executing operations on line item-to-creative
#' associations
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.LineItemCreativeAssociationOperationError}{Google Documentation for LineItemCreativeAssociationOperationError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a LineItemCreativeAssociationOperationError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{NOT_ALLOWED - The operation is not allowed due to permissions}
#'      \item{NOT_APPLICABLE - The operation is not applicable to the current state}
#'      \item{CANNOT_ACTIVATE_INVALID_CREATIVE - Cannot activate an invalid creative}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{LineItemCreativeAssociationPage}
#' 
#' Captures a page of LineItemCreativeAssociation objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.LineItemCreativeAssociationPage}{Google Documentation for LineItemCreativeAssociationPage}
#' \describe{
#'  \item{totalResultSetSize}{a integer - The size of the total result set to which this page belongs.}
#'  \item{startIndex}{a integer - The absolute index in the total result set on which this page begins.}
#'  \item{results}{a LineItemCreativeAssociation - The collection of line item creative associations contained within this
#' page.}
#' }
#' 
#' \strong{LineItemCreativeAssociationStats}
#' 
#' Contains statistics such as impressions, clicks delivered and cost for
#' LineItemCreativeAssociation objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.LineItemCreativeAssociationStats}{Google Documentation for LineItemCreativeAssociationStats}
#' \describe{
#'  \item{stats}{a Stats - A Stats object that holds delivered impressions and clicks statistics.}
#'  \item{creativeSetStats}{a Long_StatsMapEntry - A map containing Stats objects for each creative belonging to a creative
#' set, null for non creative set associations.}
#'  \item{costInOrderCurrency}{a Money - The revenue generated thus far by the creative from its association with the
#' particular line item in the publisher's currency.}
#' }
#' 
#' \strong{LineItemError}
#' 
#' A catch-all error that lists all generic errors associated with LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.LineItemError}{Google Documentation for LineItemError}
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
#' \strong{Long_StatsMapEntry}
#' 
#' This represents an entry in a map with a key of type Long and value of type
#' Stats.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.Long_StatsMapEntry}{Google Documentation for Long_StatsMapEntry}
#' \describe{
#'  \item{key}{a integer}
#'  \item{value}{a Stats}
#' }
#' 
#' \strong{Money}
#' 
#' Represents a money amount.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.Money}{Google Documentation for Money}
#' \describe{
#'  \item{currencyCode}{a character - Three letter currency code in string format.}
#'  \item{microAmount}{a integer - Money values are always specified in terms of micros which are a millionth
#' of the fundamental currency unit. For US dollars, $1 is 1,000,000 micros.}
#' }
#' 
#' \strong{NotNullError}
#' 
#' Caused by supplying a null value for an attribute that cannot be null.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.NotNullError}{Google Documentation for NotNullError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.NullError}{Google Documentation for NullError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.NumberValue}{Google Documentation for NumberValue}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.ObjectValue}{Google Documentation for ObjectValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#' }
#' 
#' \strong{OrderError}
#' 
#' Lists all errors associated with orders.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.OrderError}{Google Documentation for OrderError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.ParseError}{Google Documentation for ParseError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.PermissionError}{Google Documentation for PermissionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.PublisherQueryLanguageContextError}{Google Documentation for PublisherQueryLanguageContextError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.PublisherQueryLanguageSyntaxError}{Google Documentation for PublisherQueryLanguageSyntaxError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.QuotaError}{Google Documentation for QuotaError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.RangeError}{Google Documentation for RangeError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.RequiredCollectionError}{Google Documentation for RequiredCollectionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.RequiredError}{Google Documentation for RequiredError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.RequiredNumberError}{Google Documentation for RequiredNumberError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.RequiredSizeError}{Google Documentation for RequiredSizeError}
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
#' \strong{RichMediaStudioCreativeError}
#' 
#' Lists all errors associated with Rich Media Studio creatives.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.RichMediaStudioCreativeError}{Google Documentation for RichMediaStudioCreativeError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a RichMediaStudioCreativeError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{CREATION_NOT_ALLOWED - Only DoubleClick Rich Media Studio can create a RichMediaStudioCreative.}
#'      \item{UKNOWN_ERROR - Unknown error}
#'      \item{INVALID_CODE_GENERATION_REQUEST - Invalid request indicating missing/invalid request parameters.}
#'      \item{INVALID_CREATIVE_OBJECT - Invalid creative object.}
#'      \item{STUDIO_CONNECTION_ERROR - Unable to connect to Rich Media Studio to save the creative. Please try
#' again later.}
#'      \item{PUSHDOWN_DURATION_NOT_ALLOWED - The push down duration is not allowed}
#'      \item{INVALID_POSITION - The position is invalid}
#'      \item{INVALID_Z_INDEX - The Z-index is invalid}
#'      \item{INVALID_PUSHDOWN_DURATION - The push-down duration is invalid}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{ServerError}
#' 
#' Errors related to the server.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.ServerError}{Google Documentation for ServerError}
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
#' \strong{SetTopBoxCreativeError}
#' 
#' Errors associated with SetTopBoxCreative set-top box creatives.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.SetTopBoxCreativeError}{Google Documentation for SetTopBoxCreativeError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a SetTopBoxCreativeError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{DURATION_IMMUTABLE - Set-top box creative durations are immutable after creation.}
#'      \item{EXTERNAL_ASSET_ID_IMMUTABLE - Set-top box creative external asset IDs are immutable after creation.}
#'      \item{EXTERNAL_ASSET_ID_REQUIRED - Set-top box creatives require an external asset ID.}
#'      \item{PROVIDER_ID_IMMUTABLE - Set-top box creative provider IDs are immutable after creation.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{SetValue}
#' 
#' Contains a set of Value Values. May not contain duplicates.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.SetValue}{Google Documentation for SetValue}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.Size}{Google Documentation for Size}
#' \describe{
#'  \item{width}{a integer - The width of the AdUnit, LineItem or Creative.}
#'  \item{height}{a integer - The height of the AdUnit, LineItem or Creative.}
#'  \item{isAspectRatio}{a boolean - True if this size represents an aspect ratio, false otherwise.}
#' }
#' 
#' \strong{SoapRequestHeader}
#' 
#' Represents the SOAP request header used by API requests.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.SoapRequestHeader}{Google Documentation for SoapRequestHeader}
#' \describe{
#'  \item{networkCode}{a character - The network code to use in the context of a request.}
#'  \item{applicationName}{a character - The name of client library application.}
#' }
#' 
#' \strong{SoapResponseHeader}
#' 
#' Represents the SOAP request header used by API responses.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.SoapResponseHeader}{Google Documentation for SoapResponseHeader}
#' \describe{
#'  \item{requestId}{a character}
#'  \item{responseTime}{a integer}
#' }
#' 
#' \strong{Statement}
#' 
#' Holds the query in PQL syntax. See link for how to form PQL.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.Statement}{Google Documentation for Statement}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.StatementError}{Google Documentation for StatementError}
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
#' \strong{Stats}
#' 
#' Stats contains trafficking statistics for LineItem and
#' LineItemCreativeAssociation objects
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.Stats}{Google Documentation for Stats}
#' \describe{
#'  \item{impressionsDelivered}{a integer - The number of impressions delivered.}
#'  \item{clicksDelivered}{a integer - The number of clicks delivered.}
#'  \item{videoCompletionsDelivered}{a integer - The number of video completions delivered.}
#'  \item{videoStartsDelivered}{a integer - The number of video starts delivered.}
#' }
#' 
#' \strong{String_ValueMapEntry}
#' 
#' This represents an entry in a map with a key of type String and value of
#' type Value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.String_ValueMapEntry}{Google Documentation for String_ValueMapEntry}
#' \describe{
#'  \item{key}{a character}
#'  \item{value}{a Value}
#' }
#' 
#' \strong{StringLengthError}
#' 
#' Errors for Strings which do not meet given length constraints.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.StringLengthError}{Google Documentation for StringLengthError}
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
#' \strong{SwiffyConversionError}
#' 
#' Error for converting flash to swiffy asset.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.SwiffyConversionError}{Google Documentation for SwiffyConversionError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a SwiffyConversionError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{SERVER_ERROR - Indicates the Swiffy service has an internal error that prevents the flash
#' asset being converted.}
#'      \item{INVALID_FLASH_FILE - Indicates the uploaded flash asset is not a valid flash file.}
#'      \item{UNSUPPORTED_FLASH - Indicates the Swiffy service currently does not support converting this
#' flash asset.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{TemplateInstantiatedCreativeError}
#' 
#' Lists all errors associated with template instantiated creatives.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.TemplateInstantiatedCreativeError}{Google Documentation for TemplateInstantiatedCreativeError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a TemplateInstantiatedCreativeError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{INACTIVE_CREATIVE_TEMPLATE - A new creative cannot be created from an inactive creative template.}
#'      \item{FILE_TYPE_NOT_ALLOWED - An uploaded file type is not allowed}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{TextValue}
#' 
#' Contains a string value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.TextValue}{Google Documentation for TextValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a character - The string value.}
#' }
#' 
#' \strong{TypeError}
#' 
#' An error for a field which is an invalid type.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.TypeError}{Google Documentation for TypeError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#' }
#' 
#' \strong{UniqueError}
#' 
#' An error for a field which must satisfy a uniqueness constraint
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.UniqueError}{Google Documentation for UniqueError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#' }
#' 
#' \strong{UpdateResult}
#' 
#' Represents the result of performing an action on objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.UpdateResult}{Google Documentation for UpdateResult}
#' \describe{
#'  \item{numChanges}{a integer - The number of objects that were changed as a result of performing the
#' action.}
#' }
#' 
#' \strong{Value}
#' 
#' Value represents a value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService.Value}{Google Documentation for Value}
#' \describe{
#' }
#' 
#' 
#' 
#' @usage dfp_LineItemCreativeAssociationService_object_factory(obj_type, obj_data)
#' 
#' @param obj_type a string from one of the object types described above
#' @param obj_data a \code{list} of \code{lists} or a \code{data.frame} with the required components to create
#' the obj_type specified. All input names must match the expected attributes for the object.
#' If submitting a list of attributes to create 1 object make sure to nest it inside top-level list, so that
#' it is a list of length 1 with 1 list of attributes to create the object.
#' @return a string of formatted XML that can be inserted into a SOAP request body to the APT
#' @export
dfp_LineItemCreativeAssociationService_object_factory <- function(obj_type, obj_data){
 if(is.data.frame(obj_data)){
 sampled_names <- names(obj_data) } else if(is.list(obj_data)){
 sampled_names <- names(obj_data[[1]])
 } else { stop("obj_data must be a list or data.frame")
 }

 if(obj_type=='Date'){
 stopifnot(all(sampled_names %in% c('year', 'month', 'day')))
 }

 if(obj_type=='LineItemCreativeAssociation'){
 stopifnot(all(sampled_names %in% c('lineItemId', 'creativeId', 'creativeSetId', 'manualCreativeRotationWeight', 'sequentialCreativeRotationIndex', 'startDateTime', 'startDateTimeType', 'endDateTime', 'destinationUrl', 'sizes', 'status', 'stats', 'lastModifiedDateTime', 'targetingName')))
 }

 if(obj_type=='LineItemCreativeAssociationStats'){
 stopifnot(all(sampled_names %in% c('stats', 'creativeSetStats', 'costInOrderCurrency')))
 }

 if(obj_type=='Long_StatsMapEntry'){
 stopifnot(all(sampled_names %in% c('key', 'value')))
 }

 if(obj_type=='Money'){
 stopifnot(all(sampled_names %in% c('currencyCode', 'microAmount')))
 }

 if(obj_type=='Size'){
 stopifnot(all(sampled_names %in% c('width', 'height', 'isAspectRatio')))
 }

 if(obj_type=='Stats'){
 stopifnot(all(sampled_names %in% c('impressionsDelivered', 'clicksDelivered', 'videoCompletionsDelivered', 'videoStartsDelivered')))
 }

}
#' 
#' createLineItemCreativeAssociations
#' 
#' Creates new LineItemCreativeAssociation objects create in
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService#createLineItemCreativeAssociations}{Google Documentation for createLineItemCreativeAssociations}
#' 
#' @usage dfp_createLineItemCreativeAssociations(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a createLineItemCreativeAssociationsResponse 
#' @export
dfp_createLineItemCreativeAssociations <- function(request_data){

 request_body <- make_request_body(service='LineItemCreativeAssociationService', root_name='createLineItemCreativeAssociations', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['createLineItemCreativeAssociationsResponse']])
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
  return(result)
}
#' 
#' getLineItemCreativeAssociationsByStatement
#' 
#' Gets a LineItemCreativeAssociationPage of LineItemCreativeAssociation objects that satisfy the given Statement query. The following fields are supported for filtering:  a set of line item creative associations 
#' \itemize{
#'   \item{creativeId}
#'   \item{manualCreativeRotationWeight}
#'   \item{destinationUrl}
#'   \item{lineItemId}
#'   \item{status}
#'   \item{lastModifiedDateTime}
#' }
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService#getLineItemCreativeAssociationsByStatement}{Google Documentation for getLineItemCreativeAssociationsByStatement}
#' 
#' @usage dfp_getLineItemCreativeAssociationsByStatement(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a getLineItemCreativeAssociationsByStatementResponse 
#' @export
dfp_getLineItemCreativeAssociationsByStatement <- function(request_data){

 request_body <- make_request_body(service='LineItemCreativeAssociationService', root_name='getLineItemCreativeAssociationsByStatement', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getLineItemCreativeAssociationsByStatementResponse']])
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
  return(result)
}
#' 
#' getPreviewUrl
#' 
#' Returns an insite preview URL that references the specified site URL with the specified creative from the association served to it. For Creative Set previewing you may specify the master creative Id. creative served to it
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService#getPreviewUrl}{Google Documentation for getPreviewUrl}
#' 
#' @usage dfp_getPreviewUrl()
#' @return a \code{list} containing all the elements of a getPreviewUrlResponse 
#' @export
dfp_getPreviewUrl <- function(){

 request_body <- make_request_body(service='LineItemCreativeAssociationService', root_name='getPreviewUrl', data=NULL)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getPreviewUrlResponse']])
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
  return(result)
}
#' 
#' performLineItemCreativeAssociationAction
#' 
#' Performs actions on LineItemCreativeAssociation objects that match the given Statement query. a set of line item creative associations
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService#performLineItemCreativeAssociationAction}{Google Documentation for performLineItemCreativeAssociationAction}
#' 
#' @usage dfp_performLineItemCreativeAssociationAction(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a performLineItemCreativeAssociationActionResponse 
#' @export
dfp_performLineItemCreativeAssociationAction <- function(request_data){

 request_body <- make_request_body(service='LineItemCreativeAssociationService', root_name='performLineItemCreativeAssociationAction', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['performLineItemCreativeAssociationActionResponse']])
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
  return(result)
}
#' 
#' updateLineItemCreativeAssociations
#' 
#' Updates the specified LineItemCreativeAssociation objects update
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/LineItemCreativeAssociationService#updateLineItemCreativeAssociations}{Google Documentation for updateLineItemCreativeAssociations}
#' 
#' @usage dfp_updateLineItemCreativeAssociations(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a updateLineItemCreativeAssociationsResponse 
#' @export
dfp_updateLineItemCreativeAssociations <- function(request_data){

 request_body <- make_request_body(service='LineItemCreativeAssociationService', root_name='updateLineItemCreativeAssociations', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['updateLineItemCreativeAssociationsResponse']])
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
  return(result)
}
#' 
