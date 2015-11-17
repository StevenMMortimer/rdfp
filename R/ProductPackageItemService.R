#' ProductPackageItemService
#' 
#' Provides methods for creating and retrieving ProductPackageItem objects.
#'
#' A PackageProductItem represents a product which will be associated with
#' a ProductPackage.
#' To use this service, you need to have the new sales
#' management solution enabled on your network. If you do not see a "Sales"
#' tab in <a href="https://www.google.com/dfp">DoubleClick for Publishers
#' (DFP)</a>, you will not be able to use this service.
#' 
#' ProductPackageItemService Object Factory
#' 
#' A function to create a variety of objects that are part of the ProductPackageItemService
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.ApiError}{Google Documentation for ApiError}
#' \describe{
#'  \item{fieldPath}{a string -  The OGNL field path to identify cause of error.}
#'  \item{trigger}{a string -  The data that caused the error.}
#'  \item{errorString}{a string -  A simple string representation of the error and reason.}
#' }
#' 
#' \strong{ApiException}
#' 
#' Exception class for holding a list of service errors.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.ApiException}{Google Documentation for ApiException}
#' \describe{
#'  \item{message}{a string (inherited from ApplicationException) -  Error message.}
#'  \item{errors}{a ApiError -  List of errors.}
#' }
#' 
#' \strong{ApiVersionError}
#' 
#' Errors related to the usage of API versions.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.ApiVersionError}{Google Documentation for ApiVersionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.ApplicationException}{Google Documentation for ApplicationException}
#' \describe{
#'  \item{message}{a string -  Error message.}
#' }
#' 
#' \strong{ArchiveProductPackageItems}
#' 
#' The action used to archive product package items.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.ArchiveProductPackageItems}{Google Documentation for ArchiveProductPackageItems}
#' \describe{
#'  \item{extends ProductPackageItemAction}{see documentation for ProductPackageItemAction}
#' }
#' 
#' \strong{AuthenticationError}
#' 
#' An error for an exception that occurred when authenticating.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.AuthenticationError}{Google Documentation for AuthenticationError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.BooleanValue}{Google Documentation for BooleanValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a boolean -  The boolean value.}
#' }
#' 
#' \strong{CollectionSizeError}
#' 
#' Error for the size of the collection being too large
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.CollectionSizeError}{Google Documentation for CollectionSizeError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.CommonError}{Google Documentation for CommonError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.Date}{Google Documentation for Date}
#' \describe{
#'  \item{year}{a integer -  Year (e.g., 2009)}
#'  \item{month}{a integer -  Month (1..12)}
#'  \item{day}{a integer -  Day (1..31)}
#' }
#' 
#' \strong{DateTime}
#' 
#' Represents a date combined with the time of day.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.DateTime}{Google Documentation for DateTime}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.DateTimeValue}{Google Documentation for DateTimeValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a DateTime -  The DateTime value.}
#' }
#' 
#' \strong{DateValue}
#' 
#' Contains a date value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.DateValue}{Google Documentation for DateValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a Date -  The Date value.}
#' }
#' 
#' \strong{EntityChildrenLimitReachedError}
#' 
#' Lists errors relating to having too many children on an entity.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.EntityChildrenLimitReachedError}{Google Documentation for EntityChildrenLimitReachedError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.EntityLimitReachedError}{Google Documentation for EntityLimitReachedError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.FeatureError}{Google Documentation for FeatureError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.InternalApiError}{Google Documentation for InternalApiError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.NotNullError}{Google Documentation for NotNullError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.NumberValue}{Google Documentation for NumberValue}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.ObjectValue}{Google Documentation for ObjectValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#' }
#' 
#' \strong{ParseError}
#' 
#' Lists errors related to parsing.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.ParseError}{Google Documentation for ParseError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.PermissionError}{Google Documentation for PermissionError}
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
#' \strong{ProductError}
#' 
#' A catch-all error that lists all generic errors associated with Product.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.ProductError}{Google Documentation for ProductError}
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
#' \strong{ProductPackageActionError}
#' 
#' Lists all errors for executing operations on product packages.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.ProductPackageActionError}{Google Documentation for ProductPackageActionError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a ProductPackageActionError.Reason - The error reason represented by an enum. This can take one of the following values:
#'    \itemize{
#'      \item{ACTIVATE_WITH_INACTIVE_MANDATORY_PRODUCT - The activate operation is not applicable if there's any inactive mandatory
#' product.}
#'      \item{NOT_APPLICABLE - The operation is not applicable to the current state.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{ProductPackageItem}
#' 
#' A ProductPackageItem represents a product item in a package.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.ProductPackageItem}{Google Documentation for ProductPackageItem}
#' \describe{
#'  \item{id}{a integer -  The unique ID of the ProductPackageItem. This attribute is read-only and is
#' assigned by Google when a ProductPackageItem is created.}
#'  \item{productId}{a integer -  The unique ID of the Product, to which the ProductPackageItem comes from.
#' This attribute is required for creation and then is read-only.}
#'  \item{productPackageId}{a integer -  The unique ID of the ProductPackage, to which the ProductPackageItem
#' belongs. This attribute is required for creation and then is read-only.}
#'  \item{isMandatory}{a boolean -  Indicates whether the ProductPackageItem must be included to complete the
#' ProductPackage. Deactivating a mandatory ProductPackageItem will make the
#' ProductPackage unsellable. This attribute is required.}
#'  \item{archiveStatus}{a ArchiveStatus - The archival status of the ProductPackageItem. This attribute is read-only. This can take one of the following values:
#'    \itemize{
#'      \item{ARCHIVED - Product package item is archived}
#'      \item{NOT_ARCHIVED - Product package item is not archived}
#'      \item{PRODUCT_TEMPLATE_ARCHIVED - The corresponding product template of this product package item is archived.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{ProductPackageItemAction}
#' 
#' Represents the actions that can be performed on product package items. May take one of the actions listed below.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.ProductPackageItemAction}{Google Documentation for ProductPackageItemAction}
#' \describe{
#'  \item{ArchiveProductPackageItems}{The action used to archive product package items.}
#'  \item{UnArchiveProductPackageItems}{The action used to un-archive product package items.}
#' }
#' 
#' \strong{ProductPackageItemActionError}
#' 
#' Lists all errors for executing operations on product package items.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.ProductPackageItemActionError}{Google Documentation for ProductPackageItemActionError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a ProductPackageItemActionError.Reason - This can take one of the following values:
#'    \itemize{
#'      \item{NOT_APPLICABLE - The operation is not applicable to the current state.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{ProductPackageItemError}
#' 
#' Lists all errors associated with product package items.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.ProductPackageItemError}{Google Documentation for ProductPackageItemError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a ProductPackageItemError.Reason - The error reason represented by an enum. This can take one of the following values:
#'    \itemize{
#'      \item{ARCHIVED_PRODUCT_NOT_ALLOWED - Add a archived product to product package is not allowed.}
#'      \item{INACTIVE_MANDATORY_PRODUCT_NOT_ALLOWED - Inactive mandatory product is not allowed in active product package.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{ProductPackageItemPage}
#' 
#' Captures a page of ProductPackageItemDto objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.ProductPackageItemPage}{Google Documentation for ProductPackageItemPage}
#' \describe{
#'  \item{totalResultSetSize}{a integer -  The size of the total result set to which this page belongs.}
#'  \item{startIndex}{a integer -  The absolute index in the total result set on which this page begins.}
#'  \item{results}{a ProductPackageItem -  The collection of product package item dtos contained within this page.}
#' }
#' 
#' \strong{ProductPackageRateCardAssociationError}
#' 
#' Lists all errors associated with product packages rate card associations.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.ProductPackageRateCardAssociationError}{Google Documentation for ProductPackageRateCardAssociationError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a ProductPackageRateCardAssociationError.Reason - The error reason represented by an enum. This can take one of the following values:
#'    \itemize{
#'      \item{INVALID_RATE_CARD_ID - The id of associated rate card is invalid or invisible to user.}
#'      \item{INVALID_PRODUCT_PACKAGE_ID - The id of associated package is invalid.}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.PublisherQueryLanguageContextError}{Google Documentation for PublisherQueryLanguageContextError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.PublisherQueryLanguageSyntaxError}{Google Documentation for PublisherQueryLanguageSyntaxError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.QuotaError}{Google Documentation for QuotaError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.RangeError}{Google Documentation for RangeError}
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
#' \strong{ServerError}
#' 
#' Errors related to the server.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.ServerError}{Google Documentation for ServerError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.SetValue}{Google Documentation for SetValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{values}{a Value -  The values. They must all be the same type of Value and not contain
#' duplicates.}
#' }
#' 
#' \strong{SoapRequestHeader}
#' 
#' Represents the SOAP request header used by API requests.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.SoapRequestHeader}{Google Documentation for SoapRequestHeader}
#' \describe{
#'  \item{networkCode}{a string -  The network code to use in the context of a request.}
#'  \item{applicationName}{a string -  The name of client library application.}
#' }
#' 
#' \strong{SoapResponseHeader}
#' 
#' Represents the SOAP request header used by API responses.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.SoapResponseHeader}{Google Documentation for SoapResponseHeader}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.Statement}{Google Documentation for Statement}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.StatementError}{Google Documentation for StatementError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.String_ValueMapEntry}{Google Documentation for String_ValueMapEntry}
#' \describe{
#'  \item{key}{a string}
#'  \item{value}{a Value}
#' }
#' 
#' \strong{StringLengthError}
#' 
#' Errors for Strings which do not meet given length constraints.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.StringLengthError}{Google Documentation for StringLengthError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.TextValue}{Google Documentation for TextValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a string -  The string value.}
#' }
#' 
#' \strong{UnArchiveProductPackageItems}
#' 
#' The action used to un-archive product package items.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.UnArchiveProductPackageItems}{Google Documentation for UnArchiveProductPackageItems}
#' \describe{
#'  \item{extends ProductPackageItemAction}{see documentation for ProductPackageItemAction}
#' }
#' 
#' \strong{UniqueError}
#' 
#' An error for a field which must satisfy a uniqueness constraint
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.UniqueError}{Google Documentation for UniqueError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#' }
#' 
#' \strong{UpdateResult}
#' 
#' Represents the result of performing an action on objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.UpdateResult}{Google Documentation for UpdateResult}
#' \describe{
#'  \item{numChanges}{a integer -  The number of objects that were changed as a result of performing the
#' action.}
#' }
#' 
#' \strong{Value}
#' 
#' Value represents a value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductPackageItemService.Value}{Google Documentation for Value}
#' \describe{
#' }
#' 
#' 
#' 
#' @usage dfp_ProductPackageItemService_object_factory(obj_type, obj_data)
#' 
#' @param obj_type a string from one of the object types described below
#' @param obj_data a \code{list} of \code{lists} or a \code{data.frame} with the required components to create
#' the obj_type specified. All input names must match the expected attributes for the object.
#' If submitting a list of attributes to create 1 object make sure to nest it inside top-level list, so that
#' it is a list of length 1 with 1 list of attributes to create the object.
#' @return a string of formatted XML that can be inserted into a SOAP request body to the API
#' @export
dfp_ProductPackageItemService_object_factory <- function(obj_type, obj_data){

  if(is.data.frame(obj_data)){
    sampled_names <- names(obj_data)
  } else if(is.list(obj_data)){
    sampled_names <- names(obj_data[[1]])
  } else {
    stop("obj_data must be a list or data.frame")
  }

  if(obj_type=='ProductPackageItem'){
    stopifnot(all(sampled_names %in% c('id', 'productId', 'productPackageId', 'isMandatory', 'archiveStatus')))
  }

}
#' 
#' createProductPackageItems
#' 
#' Creates new ProductPackageItem objects.
#' 
#' @usage dfp_createProductPackageItems(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a createProductPackageItemsResponse
#' @export
dfp_createProductPackageItems <- function(request_data){

  request_body <- make_request_body(service='ProductPackageItemService', root_name='createProductPackageItems', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['createProductPackageItemsResponse']])$rval
  response <- if(is.null(response)) NULL else xmlToList(response)
  return(response)
}
#' 
#' getProductPackageItemsByStatement
#' 
#' Gets a ProductPackageItemPage of ProductPackageItem objects that satisfy the filtering criteria specified by given Statement query. The following fields are supported for filtering:  filtering criteria over product packages 
#' \itemize{
#'   \item{id}
#'   \item{productPackageId}
#'   \item{productId}
#'   \item{productTemplateId}
#'   \item{mandatory}
#'   \item{archived}
#' }
#' 
#' @usage dfp_getProductPackageItemsByStatement(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a getProductPackageItemsByStatementResponse
#' @export
dfp_getProductPackageItemsByStatement <- function(request_data){

  request_body <- make_request_body(service='ProductPackageItemService', root_name='getProductPackageItemsByStatement', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getProductPackageItemsByStatementResponse']])$rval
  response <- if(is.null(response)) NULL else xmlToList(response)
  return(response)
}
#' 
#' performProductPackageItemAction
#' 
#' Performs actions on ProductPackageItem objects that satisfy the given Statement query. a set of product package items
#' 
#' @usage dfp_performProductPackageItemAction()
#' @return a \code{list} containing all the elements of a performProductPackageItemActionResponse
#' @export
dfp_performProductPackageItemAction <- function(){

  request_body <- make_request_body(service='ProductPackageItemService', root_name='performProductPackageItemAction', data=NULL)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['performProductPackageItemActionResponse']])$rval
  response <- if(is.null(response)) NULL else xmlToList(response)
  return(response)
}
#' 
#' updateProductPackageItems
#' 
#' Updates the specified ProductPackageItem objects.
#' 
#' @usage dfp_updateProductPackageItems(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a updateProductPackageItemsResponse
#' @export
dfp_updateProductPackageItems <- function(request_data){

  request_body <- make_request_body(service='ProductPackageItemService', root_name='updateProductPackageItems', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['updateProductPackageItemsResponse']])$rval
  response <- if(is.null(response)) NULL else xmlToList(response)
  return(response)
}
#' 
