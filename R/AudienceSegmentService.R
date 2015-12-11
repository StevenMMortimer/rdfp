#' AudienceSegmentService
#' 
#' Provides operations for creating, updating and retrieving AudienceSegment
#' objects.
#' 
#' AudienceSegmentService Object Factory
#' 
#' A function to create a variety of objects that are part of the AudienceSegmentService
#' Note: not all objects here are inputs to the functions of this service so 
#' please consult each function for the required inputs
#' 
#' Below is a list of objects and their required components to be created with this function:
#' 
#' \strong{ActivateAudienceSegments}
#' 
#' Action that can be performed on FirstPartyAudienceSegment objects to
#' activate them.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.ActivateAudienceSegments}{Google Documentation for ActivateAudienceSegments}
#' \describe{
#'  \item{extends AudienceSegmentAction}{see documentation for AudienceSegmentAction}
#' }
#' 
#' \strong{AdUnitTargeting}
#' 
#' Represents targeted or excluded ad units.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.AdUnitTargeting}{Google Documentation for AdUnitTargeting}
#' \describe{
#'  \item{adUnitId}{a character - Included or excluded ad unit id.}
#'  \item{includeDescendants}{a boolean - Whether or not all descendants are included (or excluded) as part of
#' including (or excluding) this ad unit. By default, the value is true which
#' means targeting this ad unit will target all of its descendants.}
#' }
#' 
#' \strong{ApiError}
#' 
#' The API error base class that provides details about an error that occurred
#' while processing a service request. The OGNL field path is provided for
#' parsers to identify the request data element that may have caused the error.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.ApiError}{Google Documentation for ApiError}
#' \describe{
#'  \item{fieldPath}{a character - The OGNL field path to identify cause of error.}
#'  \item{trigger}{a character - The data that caused the error.}
#'  \item{errorString}{a character - A simple string representation of the error and reason.}
#' }
#' 
#' \strong{ApiException}
#' 
#' Exception class for holding a list of service errors.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.ApiException}{Google Documentation for ApiException}
#' \describe{
#'  \item{message}{a character (inherited from ApplicationException) - Error message.}
#'  \item{errors}{a ApiError - List of errors.}
#' }
#' 
#' \strong{ApiVersionError}
#' 
#' Errors related to the usage of API versions.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.ApiVersionError}{Google Documentation for ApiVersionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.ApplicationException}{Google Documentation for ApplicationException}
#' \describe{
#'  \item{message}{a character - Error message.}
#' }
#' 
#' \strong{ApproveAudienceSegments}
#' 
#' Action that can be performed on ThirdPartyAudienceSegment objects to approve
#' them.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.ApproveAudienceSegments}{Google Documentation for ApproveAudienceSegments}
#' \describe{
#'  \item{extends AudienceSegmentAction}{see documentation for AudienceSegmentAction}
#' }
#' 
#' \strong{AudienceSegment}
#' 
#' An AudienceSegment represents audience segment object.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.AudienceSegment}{Google Documentation for AudienceSegment}
#' \describe{
#'  \item{id}{a integer - Id of the AudienceSegment. This attribute is readonly and is populated by
#' Google.}
#'  \item{name}{a character - Name of the AudienceSegment. This attribute is required and has a maximum
#' length of 255 characters.}
#'  \item{categoryIds}{a integer - The ids of the categories this segment belongs to. This field is optional,
#' it may be empty.}
#'  \item{description}{a character - Description of the AudienceSegment. This attribute is optional and has a
#' maximum length of 8192 characters.}
#'  \item{status}{a AudienceSegment.Status - Status of the AudienceSegment. This controls whether the given segment is
#' available for targeting or not. During creation this attribute is optional
#' and defaults to ACTIVE. This attribute is readonly for updates. This can take one of the following values: 
#'    \itemize{
#'      \item{ACTIVE - Active status means this audience segment is available for targeting.}
#'      \item{INACTIVE - Inactive status means this audience segment is not available for targeting.}
#'    }
#'   }
#'  \item{size}{a integer - Number of unique cookies in the AudienceSegment. This attribute is readonly
#' and is populated by Google.}
#'  \item{dataProvider}{a AudienceSegmentDataProvider - Owner data provider of this segment. This attribute is readonly and is
#' assigned by Google.}
#'  \item{type}{a AudienceSegment.AudienceSegmentType - Type of the segment. This attribute is readonly and is assigned by Google. This can take one of the following values: 
#'    \itemize{
#'      \item{FIRST_PARTY - First party segments created and owned by the publisher.}
#'      \item{SHARED - First party segments shared by other clients.}
#'      \item{THIRD_PARTY - Third party segments licensed by the publisher from data providers. This
#' doesn't include Google-provided licensed segments.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{AudienceSegmentAction}
#' 
#' Action that can be performed on AudienceSegment objects. May take one of the actions listed below.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.AudienceSegmentAction}{Google Documentation for AudienceSegmentAction}
#' \describe{
#'  \item{ActivateAudienceSegments}{Action that can be performed on FirstPartyAudienceSegment objects to
#' activate them.}
#'  \item{ApproveAudienceSegments}{Action that can be performed on ThirdPartyAudienceSegment objects to approve
#' them.}
#'  \item{DeactivateAudienceSegments}{Action that can be performed on FirstPartyAudienceSegment objects to
#' deactivate them.}
#'  \item{PopulateAudienceSegments}{Action that can be performed on FirstPartyAudienceSegment objects to
#' populate them based on last 30 days of traffic.}
#'  \item{RejectAudienceSegments}{Action that can be performed on ThirdPartyAudienceSegment objects to reject
#' them.}
#' }
#' 
#' \strong{AudienceSegmentCriteria}
#' 
#' An AudienceSegmentCriteria object is used to target AudienceSegment objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.AudienceSegmentCriteria}{Google Documentation for AudienceSegmentCriteria}
#' \describe{
#'  \item{extends CustomCriteriaLeaf}{see documentation for CustomCriteriaLeaf}
#'  \item{operator}{a AudienceSegmentCriteria.ComparisonOperator - The comparison operator. This attribute is required. This can take one of the following values: 
#'    \itemize{
#'      \item{IS}
#'      \item{IS_NOT}
#'    }
#'   }
#'  \item{audienceSegmentIds}{a integer - The ids of AudienceSegment objects used to target audience segments. This
#' attribute is required.}
#' }
#' 
#' \strong{AudienceSegmentDataProvider}
#' 
#' Data provider that owns this segment. For a FirstPartyAudienceSegment, it
#' would be the publisher network. For a SharedAudienceSegment or a
#' ThirdPartyAudienceSegment, it would be the entity that provides that
#' AudienceSegment.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.AudienceSegmentDataProvider}{Google Documentation for AudienceSegmentDataProvider}
#' \describe{
#'  \item{name}{a character - Name of the data provider. This attribute is readonly and is assigned by
#' Google.}
#' }
#' 
#' \strong{AudienceSegmentError}
#' 
#' Errors that could occur on audience segment related requests.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.AudienceSegmentError}{Google Documentation for AudienceSegmentError}
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
#' \strong{AudienceSegmentPage}
#' 
#' Represents a page of AudienceSegment objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.AudienceSegmentPage}{Google Documentation for AudienceSegmentPage}
#' \describe{
#'  \item{totalResultSetSize}{a integer - The size of the total result set to which this page belongs.}
#'  \item{startIndex}{a integer - The absolute index in the total result set on which this page begins.}
#'  \item{results}{a AudienceSegment - The collection of audience segments contained within this page.}
#' }
#' 
#' \strong{AuthenticationError}
#' 
#' An error for an exception that occurred when authenticating.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.AuthenticationError}{Google Documentation for AuthenticationError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.BooleanValue}{Google Documentation for BooleanValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a boolean - The boolean value.}
#' }
#' 
#' \strong{CollectionSizeError}
#' 
#' Error for the size of the collection being too large
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.CollectionSizeError}{Google Documentation for CollectionSizeError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.CommonError}{Google Documentation for CommonError}
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
#' \strong{CustomCriteria}
#' 
#' A CustomCriteria object is used to perform custom criteria targeting on
#' custom targeting keys of type CustomTargetingKey.Type PREDEFINED or
#' CustomTargetingKey.Type FREEFORM.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.CustomCriteria}{Google Documentation for CustomCriteria}
#' \describe{
#'  \item{extends CustomCriteriaLeaf}{see documentation for CustomCriteriaLeaf}
#'  \item{keyId}{a integer - The CustomTargetingKey id of the CustomTargetingKey object that was created
#' using CustomTargetingService. This attribute is required.}
#'  \item{valueIds}{a integer - The ids of CustomTargetingValue objects to target the custom targeting key
#' with id CustomCriteria keyId. This attribute is required.}
#'  \item{operator}{a CustomCriteria.ComparisonOperator - The comparison operator. This attribute is required. This can take one of the following values: 
#'    \itemize{
#'      \item{IS}
#'      \item{IS_NOT}
#'    }
#'   }
#' }
#' 
#' \strong{CustomCriteriaLeaf}
#' 
#' A CustomCriteriaLeaf object represents a generic leaf of CustomCriteria tree
#' structure.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.CustomCriteriaLeaf}{Google Documentation for CustomCriteriaLeaf}
#' \describe{
#'  \item{extends CustomCriteriaNode}{see documentation for CustomCriteriaNode}
#' }
#' 
#' \strong{CustomCriteriaNode}
#' 
#' A CustomCriteriaNode is a node in the custom targeting tree. A custom
#' criteria node can either be a CustomCriteriaSet (a non-leaf node) or a
#' CustomCriteria (a leaf node). The custom criteria targeting tree is subject
#' to the rules defined on Targeting customTargeting.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.CustomCriteriaNode}{Google Documentation for CustomCriteriaNode}
#' \describe{
#' }
#' 
#' \strong{CustomCriteriaSet}
#' 
#' A CustomCriteriaSet comprises of a set of CustomCriteriaNode objects
#' combined by the CustomCriteriaSet.LogicalOperator logicalOperator. The
#' custom criteria targeting tree is subject to the rules defined on Targeting
#' customTargeting.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.CustomCriteriaSet}{Google Documentation for CustomCriteriaSet}
#' \describe{
#'  \item{extends CustomCriteriaNode}{see documentation for CustomCriteriaNode}
#'  \item{logicalOperator}{a CustomCriteriaSet.LogicalOperator - The logical operator to be applied to CustomCriteriaSet children. This
#' attribute is required. This can take one of the following values: 
#'    \itemize{
#'      \item{AND}
#'      \item{OR}
#'    }
#'   }
#'  \item{children}{a CustomCriteriaNode - The custom criteria. This attribute is required.}
#' }
#' 
#' \strong{Date}
#' 
#' Represents a date.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.Date}{Google Documentation for Date}
#' \describe{
#'  \item{year}{a integer - Year (e.g., 2009)}
#'  \item{month}{a integer - Month (1..12)}
#'  \item{day}{a integer - Day (1..31)}
#' }
#' 
#' \strong{DateTime}
#' 
#' Represents a date combined with the time of day.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.DateTime}{Google Documentation for DateTime}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.DateTimeValue}{Google Documentation for DateTimeValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a DateTime - The DateTime value.}
#' }
#' 
#' \strong{DateValue}
#' 
#' Contains a date value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.DateValue}{Google Documentation for DateValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a Date - The Date value.}
#' }
#' 
#' \strong{DeactivateAudienceSegments}
#' 
#' Action that can be performed on FirstPartyAudienceSegment objects to
#' deactivate them.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.DeactivateAudienceSegments}{Google Documentation for DeactivateAudienceSegments}
#' \describe{
#'  \item{extends AudienceSegmentAction}{see documentation for AudienceSegmentAction}
#' }
#' 
#' \strong{EntityChildrenLimitReachedError}
#' 
#' Lists errors relating to having too many children on an entity.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.EntityChildrenLimitReachedError}{Google Documentation for EntityChildrenLimitReachedError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.EntityLimitReachedError}{Google Documentation for EntityLimitReachedError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.FeatureError}{Google Documentation for FeatureError}
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
#' \strong{FirstPartyAudienceSegment}
#' 
#' A FirstPartyAudienceSegment is an AudienceSegment owned by the publisher
#' network.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.FirstPartyAudienceSegment}{Google Documentation for FirstPartyAudienceSegment}
#' \describe{
#'  \item{id}{a integer (inherited from AudienceSegment) - Id of the AudienceSegment. This attribute is readonly and is populated by
#' Google.}
#'  \item{name}{a character (inherited from AudienceSegment) - Name of the AudienceSegment. This attribute is required and has a maximum
#' length of 255 characters.}
#'  \item{categoryIds}{a integer (inherited from AudienceSegment) - The ids of the categories this segment belongs to. This field is optional,
#' it may be empty.}
#'  \item{description}{a character (inherited from AudienceSegment) - Description of the AudienceSegment. This attribute is optional and has a
#' maximum length of 8192 characters.}
#'  \item{status}{a AudienceSegment.Status (inherited from AudienceSegment) - Status of the AudienceSegment. This controls whether the given segment is
#' available for targeting or not. During creation this attribute is optional
#' and defaults to ACTIVE. This attribute is readonly for updates.}
#'  \item{size}{a integer (inherited from AudienceSegment) - Number of unique cookies in the AudienceSegment. This attribute is readonly
#' and is populated by Google.}
#'  \item{dataProvider}{a AudienceSegmentDataProvider (inherited from AudienceSegment) - Owner data provider of this segment. This attribute is readonly and is
#' assigned by Google.}
#'  \item{type}{a AudienceSegment.AudienceSegmentType (inherited from AudienceSegment) - Type of the segment. This attribute is readonly and is assigned by Google.}
#' }
#' 
#' \strong{FirstPartyAudienceSegmentRule}
#' 
#' Rule of a FirstPartyAudienceSegment that defines user's eligibility criteria
#' to be part of a segment.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.FirstPartyAudienceSegmentRule}{Google Documentation for FirstPartyAudienceSegmentRule}
#' \describe{
#'  \item{inventoryRule}{a InventoryTargeting - Specifies the inventory (i.e. ad units and placements) that are part of the
#' rule of a FirstPartyAudienceSegment. This attribute is required.}
#'  \item{customCriteriaRule}{a CustomCriteriaSet - Specifies the collection of custom criteria that are part of the rule of a
#' FirstPartyAudienceSegment.  Once the FirstPartyAudienceSegment is updated or
#' modified with custom criteria, the server may return a normalized, but
#' equivalent representation of the custom criteria rule.  customCriteriaRule
#' will have up to three levels including itself.  The top level
#' CustomCriteriaSet i.e. the customTargeting object can only contain a
#' CustomCriteriaSet.LogicalOperator OR of all its children.  The second level
#' of CustomCriteriaSet objects can only contain
#' CustomCriteriaSet.LogicalOperator AND of all their children. If a
#' CustomCriteria is placed on this level, the server will wrap it in a
#' CustomCriteriaSet.  The third level can only comprise of CustomCriteria
#' objects.  The resulting custom criteria rule would be of the form: <br>}
#' }
#' 
#' \strong{InternalApiError}
#' 
#' Indicates that a server-side error has occured. InternalApiErrors are
#' generally not the result of an invalid request or message sent by the
#' client.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.InternalApiError}{Google Documentation for InternalApiError}
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
#' \strong{InventoryTargeting}
#' 
#' A collection of targeted and excluded ad units and placements.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.InventoryTargeting}{Google Documentation for InventoryTargeting}
#' \describe{
#'  \item{targetedAdUnits}{a AdUnitTargeting - A list of targeted AdUnitTargeting.}
#'  \item{excludedAdUnits}{a AdUnitTargeting - A list of excluded AdUnitTargeting.}
#'  \item{targetedPlacementIds}{a integer - A list of targeted Placement ids.}
#' }
#' 
#' \strong{Money}
#' 
#' Represents a money amount.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.Money}{Google Documentation for Money}
#' \describe{
#'  \item{currencyCode}{a character - Three letter currency code in string format.}
#'  \item{microAmount}{a integer - Money values are always specified in terms of micros which are a millionth
#' of the fundamental currency unit. For US dollars, $1 is 1,000,000 micros.}
#' }
#' 
#' \strong{NonRuleBasedFirstPartyAudienceSegment}
#' 
#' A NonRuleBasedFirstPartyAudienceSegment is a FirstPartyAudienceSegment owned
#' by the publisher network. It doesn't contain a rule. Cookies are usually
#' added to this segment via cookie upload. These segments are created by data
#' management platforms or Google Analytics. They cannot be created using the
#' DFP API.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.NonRuleBasedFirstPartyAudienceSegment}{Google Documentation for NonRuleBasedFirstPartyAudienceSegment}
#' \describe{
#'  \item{extends FirstPartyAudienceSegment}{see documentation for FirstPartyAudienceSegment}
#'  \item{membershipExpirationDays}{a integer - Specifies the number of days after which a user's cookie will be removed
#' from the audience segment due to inactivity. This attribute is required and
#' can be between 1 and 540.}
#' }
#' 
#' \strong{NotNullError}
#' 
#' Caused by supplying a null value for an attribute that cannot be null.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.NotNullError}{Google Documentation for NotNullError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.NumberValue}{Google Documentation for NumberValue}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.ObjectValue}{Google Documentation for ObjectValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#' }
#' 
#' \strong{ParseError}
#' 
#' Lists errors related to parsing.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.ParseError}{Google Documentation for ParseError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.PermissionError}{Google Documentation for PermissionError}
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
#' \strong{PopulateAudienceSegments}
#' 
#' Action that can be performed on FirstPartyAudienceSegment objects to
#' populate them based on last 30 days of traffic.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.PopulateAudienceSegments}{Google Documentation for PopulateAudienceSegments}
#' \describe{
#'  \item{extends AudienceSegmentAction}{see documentation for AudienceSegmentAction}
#' }
#' 
#' \strong{PublisherQueryLanguageContextError}
#' 
#' An error that occurs while executing a PQL query contained in a Statement
#' object.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.PublisherQueryLanguageContextError}{Google Documentation for PublisherQueryLanguageContextError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.PublisherQueryLanguageSyntaxError}{Google Documentation for PublisherQueryLanguageSyntaxError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.QuotaError}{Google Documentation for QuotaError}
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
#' \strong{RejectAudienceSegments}
#' 
#' Action that can be performed on ThirdPartyAudienceSegment objects to reject
#' them.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.RejectAudienceSegments}{Google Documentation for RejectAudienceSegments}
#' \describe{
#'  \item{extends AudienceSegmentAction}{see documentation for AudienceSegmentAction}
#' }
#' 
#' \strong{RequiredError}
#' 
#' Errors due to missing required field.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.RequiredError}{Google Documentation for RequiredError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a RequiredError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{REQUIRED - Missing required field.}
#'    }
#'   }
#' }
#' 
#' \strong{RuleBasedFirstPartyAudienceSegment}
#' 
#' A RuleBasedFirstPartyAudienceSegment is a FirstPartyAudienceSegment owned by
#' the publisher network. It contains a rule.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.RuleBasedFirstPartyAudienceSegment}{Google Documentation for RuleBasedFirstPartyAudienceSegment}
#' \describe{
#'  \item{pageViews}{a integer (inherited from RuleBasedFirstPartyAudienceSegmentSummary) - Specifies the number of times a user's cookie must match the segment rule
#' before it's associated with the audience segment. This is used in
#' combination with FirstPartyAudienceSegment recencyDays to determine
#' eligibility of the association. This attribute is required and can be
#' between 1 and 12.}
#'  \item{recencyDays}{a integer (inherited from RuleBasedFirstPartyAudienceSegmentSummary) - Specifies the number of days within which a user's cookie must match the
#' segment rule before it's associated with the audience segment. This is used
#' in combination with FirstPartyAudienceSegment pageViews to determine
#' eligibility of the association. This attribute is required only if
#' FirstPartyAudienceSegment pageViews is greater than 1. When required, it can
#' be between 1 and 90.}
#'  \item{membershipExpirationDays}{a integer (inherited from RuleBasedFirstPartyAudienceSegmentSummary) - Specifies the number of days after which a user's cookie will be removed
#' from the audience segment due to inactivity. This attribute is required and
#' can be between 1 and 540.}
#'  \item{rule}{a FirstPartyAudienceSegmentRule - Specifies the rule of the segment which determines user's eligibility
#' criteria to be part of the segment. This attribute is required.}
#' }
#' 
#' \strong{RuleBasedFirstPartyAudienceSegmentSummary}
#' 
#' A RuleBasedFirstPartyAudienceSegmentSummary is a FirstPartyAudienceSegment
#' owned by the publisher network.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.RuleBasedFirstPartyAudienceSegmentSummary}{Google Documentation for RuleBasedFirstPartyAudienceSegmentSummary}
#' \describe{
#'  \item{extends FirstPartyAudienceSegment}{see documentation for FirstPartyAudienceSegment}
#'  \item{pageViews}{a integer - Specifies the number of times a user's cookie must match the segment rule
#' before it's associated with the audience segment. This is used in
#' combination with FirstPartyAudienceSegment recencyDays to determine
#' eligibility of the association. This attribute is required and can be
#' between 1 and 12.}
#'  \item{recencyDays}{a integer - Specifies the number of days within which a user's cookie must match the
#' segment rule before it's associated with the audience segment. This is used
#' in combination with FirstPartyAudienceSegment pageViews to determine
#' eligibility of the association. This attribute is required only if
#' FirstPartyAudienceSegment pageViews is greater than 1. When required, it can
#' be between 1 and 90.}
#'  \item{membershipExpirationDays}{a integer - Specifies the number of days after which a user's cookie will be removed
#' from the audience segment due to inactivity. This attribute is required and
#' can be between 1 and 540.}
#' }
#' 
#' \strong{ServerError}
#' 
#' Errors related to the server.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.ServerError}{Google Documentation for ServerError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.SetValue}{Google Documentation for SetValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{values}{a Value - The values. They must all be the same type of Value and not contain
#' duplicates.}
#' }
#' 
#' \strong{SharedAudienceSegment}
#' 
#' A SharedAudienceSegment is an AudienceSegment owned by another entity and
#' shared with the publisher network.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.SharedAudienceSegment}{Google Documentation for SharedAudienceSegment}
#' \describe{
#'  \item{id}{a integer (inherited from AudienceSegment) - Id of the AudienceSegment. This attribute is readonly and is populated by
#' Google.}
#'  \item{name}{a character (inherited from AudienceSegment) - Name of the AudienceSegment. This attribute is required and has a maximum
#' length of 255 characters.}
#'  \item{categoryIds}{a integer (inherited from AudienceSegment) - The ids of the categories this segment belongs to. This field is optional,
#' it may be empty.}
#'  \item{description}{a character (inherited from AudienceSegment) - Description of the AudienceSegment. This attribute is optional and has a
#' maximum length of 8192 characters.}
#'  \item{status}{a AudienceSegment.Status (inherited from AudienceSegment) - Status of the AudienceSegment. This controls whether the given segment is
#' available for targeting or not. During creation this attribute is optional
#' and defaults to ACTIVE. This attribute is readonly for updates.}
#'  \item{size}{a integer (inherited from AudienceSegment) - Number of unique cookies in the AudienceSegment. This attribute is readonly
#' and is populated by Google.}
#'  \item{dataProvider}{a AudienceSegmentDataProvider (inherited from AudienceSegment) - Owner data provider of this segment. This attribute is readonly and is
#' assigned by Google.}
#'  \item{type}{a AudienceSegment.AudienceSegmentType (inherited from AudienceSegment) - Type of the segment. This attribute is readonly and is assigned by Google.}
#' }
#' 
#' \strong{SoapRequestHeader}
#' 
#' Represents the SOAP request header used by API requests.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.SoapRequestHeader}{Google Documentation for SoapRequestHeader}
#' \describe{
#'  \item{networkCode}{a character - The network code to use in the context of a request.}
#'  \item{applicationName}{a character - The name of client library application.}
#' }
#' 
#' \strong{SoapResponseHeader}
#' 
#' Represents the SOAP request header used by API responses.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.SoapResponseHeader}{Google Documentation for SoapResponseHeader}
#' \describe{
#'  \item{requestId}{a character}
#'  \item{responseTime}{a integer}
#' }
#' 
#' \strong{Statement}
#' 
#' Holds the query in PQL syntax. See link for how to form PQL.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.Statement}{Google Documentation for Statement}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.StatementError}{Google Documentation for StatementError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.String_ValueMapEntry}{Google Documentation for String_ValueMapEntry}
#' \describe{
#'  \item{key}{a character}
#'  \item{value}{a Value}
#' }
#' 
#' \strong{TextValue}
#' 
#' Contains a string value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.TextValue}{Google Documentation for TextValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a character - The string value.}
#' }
#' 
#' \strong{ThirdPartyAudienceSegment}
#' 
#' A ThirdPartyAudienceSegment is an AudienceSegment owned by a data provider
#' and licensed to the DFP publisher.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.ThirdPartyAudienceSegment}{Google Documentation for ThirdPartyAudienceSegment}
#' \describe{
#'  \item{id}{a integer (inherited from AudienceSegment) - Id of the AudienceSegment. This attribute is readonly and is populated by
#' Google.}
#'  \item{name}{a character (inherited from AudienceSegment) - Name of the AudienceSegment. This attribute is required and has a maximum
#' length of 255 characters.}
#'  \item{categoryIds}{a integer (inherited from AudienceSegment) - The ids of the categories this segment belongs to. This field is optional,
#' it may be empty.}
#'  \item{description}{a character (inherited from AudienceSegment) - Description of the AudienceSegment. This attribute is optional and has a
#' maximum length of 8192 characters.}
#'  \item{status}{a AudienceSegment.Status (inherited from AudienceSegment) - Status of the AudienceSegment. This controls whether the given segment is
#' available for targeting or not. During creation this attribute is optional
#' and defaults to ACTIVE. This attribute is readonly for updates.}
#'  \item{size}{a integer (inherited from AudienceSegment) - Number of unique cookies in the AudienceSegment. This attribute is readonly
#' and is populated by Google.}
#'  \item{dataProvider}{a AudienceSegmentDataProvider (inherited from AudienceSegment) - Owner data provider of this segment. This attribute is readonly and is
#' assigned by Google.}
#'  \item{type}{a AudienceSegment.AudienceSegmentType (inherited from AudienceSegment) - Type of the segment. This attribute is readonly and is assigned by Google.}
#'  \item{approvalStatus}{a ThirdPartyAudienceSegment.AudienceSegmentApprovalStatus - Specifies if the publisher has approved or rejected the segment. This can take one of the following values: 
#'    \itemize{
#'      \item{UNAPPROVED - Specifies that this segment is waiting to be approved or rejected. It cannot
#' be targeted.}
#'      \item{APPROVED - Specifies that this segment is approved and can be targeted.}
#'      \item{REJECTED - Specifies that this segment is rejected and cannot be targeted.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{cost}{a Money - Specifies CPM cost for the given segment. This attribute is readonly and is
#' assigned by the data provider.  The CPM cost comes from the active pricing,
#' if there is one; otherwise it comes from the latest pricing.}
#'  \item{licenseType}{a ThirdPartyAudienceSegment.LicenseType - Specifies the license type of the external segment. This attribute is
#' read-only. This can take one of the following values: 
#'    \itemize{
#'      \item{DIRECT_LICENSE - A direct license is the result of a direct contract between the data
#' provider and the publisher.}
#'      \item{GLOBAL_LICENSE - A global license is the result of an agreement between Google and the data
#' provider, which agrees to license their audience segments to all the
#' publishers and/or advertisers of the Doubleclick ecosystem.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{startDateTime}{a DateTime - Specifies the date and time at which this segment becomes available for use.
#' This attribute is readonly and is assigned by the data provider.}
#'  \item{endDateTime}{a DateTime - Specifies the date and time at which this segment ceases to be available for
#' use. This attribute is readonly and is assigned by the data provider.}
#' }
#' 
#' \strong{TypeError}
#' 
#' An error for a field which is an invalid type.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.TypeError}{Google Documentation for TypeError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#' }
#' 
#' \strong{UpdateResult}
#' 
#' Represents the result of performing an action on objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.UpdateResult}{Google Documentation for UpdateResult}
#' \describe{
#'  \item{numChanges}{a integer - The number of objects that were changed as a result of performing the
#' action.}
#' }
#' 
#' \strong{Value}
#' 
#' Value represents a value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService.Value}{Google Documentation for Value}
#' \describe{
#' }
#' 
#' 
#' 
#' @usage dfp_AudienceSegmentService_object_factory(obj_type, obj_data)
#' 
#' @param obj_type a string from one of the object types described above
#' @param obj_data a \code{list} of \code{lists} or a \code{data.frame} with the required components to create
#' the obj_type specified. All input names must match the expected attributes for the object.
#' If submitting a list of attributes to create 1 object make sure to nest it inside top-level list, so that
#' it is a list of length 1 with 1 list of attributes to create the object.
#' @return a string of formatted XML that can be inserted into a SOAP request body to the APT
#' @export
dfp_AudienceSegmentService_object_factory <- function(obj_type, obj_data){
 if(is.data.frame(obj_data)){
 sampled_names <- names(obj_data) } else if(is.list(obj_data)){
 sampled_names <- names(obj_data[[1]])
 } else { stop("obj_data must be a list or data.frame")
 }

 if(obj_type=='AdUnitTargeting'){
 stopifnot(all(sampled_names %in% c('adUnitId', 'includeDescendants')))
 }

 if(obj_type=='AudienceSegment'){
 stopifnot(all(sampled_names %in% c('id', 'name', 'categoryIds', 'description', 'status', 'size', 'dataProvider', 'type')))
 }

 if(obj_type=='AudienceSegmentCriteria'){
 stopifnot(all(sampled_names %in% c('operator', 'audienceSegmentIds')))
 }

 if(obj_type=='AudienceSegmentDataProvider'){
 stopifnot(all(sampled_names %in% c('name')))
 }

 if(obj_type=='CustomCriteria'){
 stopifnot(all(sampled_names %in% c('keyId', 'valueIds', 'operator')))
 }

 if(obj_type=='CustomCriteriaSet'){
 stopifnot(all(sampled_names %in% c('logicalOperator', 'children')))
 }

 if(obj_type=='Date'){
 stopifnot(all(sampled_names %in% c('year', 'month', 'day')))
 }

 if(obj_type=='FirstPartyAudienceSegment'){
 stopifnot(all(sampled_names %in% c('id', 'name', 'categoryIds', 'description', 'status', 'size', 'dataProvider', 'type')))
 }

 if(obj_type=='FirstPartyAudienceSegmentRule'){
 stopifnot(all(sampled_names %in% c('inventoryRule', 'customCriteriaRule')))
 }

 if(obj_type=='InventoryTargeting'){
 stopifnot(all(sampled_names %in% c('targetedAdUnits', 'excludedAdUnits', 'targetedPlacementIds')))
 }

 if(obj_type=='Money'){
 stopifnot(all(sampled_names %in% c('currencyCode', 'microAmount')))
 }

 if(obj_type=='NonRuleBasedFirstPartyAudienceSegment'){
 stopifnot(all(sampled_names %in% c('membershipExpirationDays')))
 }

 if(obj_type=='RuleBasedFirstPartyAudienceSegment'){
 stopifnot(all(sampled_names %in% c('pageViews', 'recencyDays', 'membershipExpirationDays', 'rule')))
 }

 if(obj_type=='RuleBasedFirstPartyAudienceSegmentSummary'){
 stopifnot(all(sampled_names %in% c('pageViews', 'recencyDays', 'membershipExpirationDays')))
 }

 if(obj_type=='SharedAudienceSegment'){
 stopifnot(all(sampled_names %in% c('id', 'name', 'categoryIds', 'description', 'status', 'size', 'dataProvider', 'type')))
 }

 if(obj_type=='ThirdPartyAudienceSegment'){
 stopifnot(all(sampled_names %in% c('id', 'name', 'categoryIds', 'description', 'status', 'size', 'dataProvider', 'type', 'approvalStatus', 'cost', 'licenseType', 'startDateTime', 'endDateTime')))
 }

}
#' 
#' createAudienceSegments
#' 
#' Creates new RuleBasedFirstPartyAudienceSegment objects.
#' 
#' @importFrom plyr llply ldply
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService#createAudienceSegments}{Google Documentation for createAudienceSegments}
#' 
#' @usage dfp_createAudienceSegments(request_data, as_df=FALSE)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into a \code{data.frame}
#' @return a \code{list} or \code{data.frame} containing all the elements of a createAudienceSegmentsResponse 
#' @export
dfp_createAudienceSegments <- function(request_data, as_df=FALSE){
 request_body <- make_request_body(service='AudienceSegmentService', root_name='createAudienceSegments', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['createAudienceSegmentsResponse']])
  result <- if(is.null(response$rval)){
    NULL
  } else if (!as_df){
      llply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               return(x)
             })
  } else {
      ldply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x$rval)
               new_x <- as.data.frame(x, stringsAsFactors = F)
               return(new_x)
             }, .id=NULL)
  }
  return(result)
}
#' 
#' getAudienceSegmentsByStatement
#' 
#' Gets an AudienceSegmentPage of AudienceSegment objects that satisfy the given Statement query. The following fields are supported for filtering:  segments 
#' \itemize{
#'   \item{id}
#'   \item{name}
#'   \item{status}
#'   \item{type}
#'   \item{size}
#'   \item{dataProviderName}
#'   \item{approvalStatus}
#'   \item{cost}
#'   \item{startDateTime}
#'   \item{endDateTime}
#' }
#' 
#' @importFrom plyr llply ldply
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService#getAudienceSegmentsByStatement}{Google Documentation for getAudienceSegmentsByStatement}
#' 
#' @usage dfp_getAudienceSegmentsByStatement(request_data, as_df=FALSE)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into a \code{data.frame}
#' @return a \code{list} or \code{data.frame} containing all the elements of a getAudienceSegmentsByStatementResponse 
#' @export
dfp_getAudienceSegmentsByStatement <- function(request_data, as_df=FALSE){
 request_body <- make_request_body(service='AudienceSegmentService', root_name='getAudienceSegmentsByStatement', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getAudienceSegmentsByStatementResponse']])
  result <- if(is.null(response$rval)){
    NULL
  } else if (!as_df){
      llply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               return(x)
             })
  } else {
      ldply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x$rval)
               new_x <- as.data.frame(x, stringsAsFactors = F)
               return(new_x)
             }, .id=NULL)
  }
  return(result)
}
#' 
#' performAudienceSegmentAction
#' 
#' Performs the given AudienceSegmentAction on the set of segments identified by the given statement. segments
#' 
#' @importFrom plyr llply ldply
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService#performAudienceSegmentAction}{Google Documentation for performAudienceSegmentAction}
#' 
#' @usage dfp_performAudienceSegmentAction(request_data, as_df=FALSE)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into a \code{data.frame}
#' @return a \code{list} or \code{data.frame} containing all the elements of a performAudienceSegmentActionResponse 
#' @export
dfp_performAudienceSegmentAction <- function(request_data, as_df=FALSE){
 request_body <- make_request_body(service='AudienceSegmentService', root_name='performAudienceSegmentAction', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['performAudienceSegmentActionResponse']])
  result <- if(is.null(response$rval)){
    NULL
  } else if (!as_df){
      llply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               return(x)
             })
  } else {
      ldply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x$rval)
               new_x <- as.data.frame(x, stringsAsFactors = F)
               return(new_x)
             }, .id=NULL)
  }
  return(result)
}
#' 
#' updateAudienceSegments
#' 
#' Updates the given RuleBasedFirstPartyAudienceSegment objects.
#' 
#' @importFrom plyr llply ldply
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AudienceSegmentService#updateAudienceSegments}{Google Documentation for updateAudienceSegments}
#' 
#' @usage dfp_updateAudienceSegments(request_data, as_df=FALSE)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into a \code{data.frame}
#' @return a \code{list} or \code{data.frame} containing all the elements of a updateAudienceSegmentsResponse 
#' @export
dfp_updateAudienceSegments <- function(request_data, as_df=FALSE){
 request_body <- make_request_body(service='AudienceSegmentService', root_name='updateAudienceSegments', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['updateAudienceSegmentsResponse']])
  result <- if(is.null(response$rval)){
    NULL
  } else if (!as_df){
      llply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x)
               return(x)
             })
  } else {
      ldply(response[grepl('rval', names(response))],
            .fun=function(x){
               x <- xmlToList(x$rval)
               new_x <- as.data.frame(x, stringsAsFactors = F)
               return(new_x)
             }, .id=NULL)
  }
  return(result)
}
#' 
