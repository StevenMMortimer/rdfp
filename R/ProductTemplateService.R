#' ProductTemplateService
#' 
#' Provides methods for creating, updating and retrieving ProductTemplate
#' objects.
#' A product template is used to generate a set of products.
#' Products allow inventory managers to control what salespeople can sell.
#' #' To use this service, you need to have the new sales management solution
#' enabled on your network. If you do not see a "Sales" tab in <a
#' href="https://www.google.com/dfp">DoubleClick for Publishers (DFP)</a>, you
#' will not be able to use this service.
#' 
#' ProductTemplateService Object Factory
#' 
#' A function to create a variety of objects that are part of the ProductTemplateService
#' Note: not all objects here are inputs to the functions of this service so 
#' please consult each function for the required inputs
#' 
#' Below is a list of objects and their required components to be created with this function:
#' 
#' \strong{ActivateProductTemplates}
#' 
#' The action used for activating product templates.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.ActivateProductTemplates}{Google Documentation for ActivateProductTemplates}
#' \describe{
#'  \item{extends ProductTemplateAction}{see documentation for ProductTemplateAction}
#' }
#' 
#' \strong{AdUnitTargeting}
#' 
#' Represents targeted or excluded ad units.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.AdUnitTargeting}{Google Documentation for AdUnitTargeting}
#' \describe{
#'  \item{adUnitId}{a string -  Included or excluded ad unit id.}
#'  \item{includeDescendants}{a boolean -  Whether or not all descendants are included (or excluded) as part of
#' including (or excluding) this ad unit. By default, the value is true which
#' means targeting this ad unit will target all of its descendants.}
#' }
#' 
#' \strong{ApiError}
#' 
#' The API error base class that provides details about an error that occurred
#' while processing a service request. The OGNL field path is provided for
#' parsers to identify the request data element that may have caused the error.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.ApiError}{Google Documentation for ApiError}
#' \describe{
#'  \item{fieldPath}{a string -  The OGNL field path to identify cause of error.}
#'  \item{trigger}{a string -  The data that caused the error.}
#'  \item{errorString}{a string -  A simple string representation of the error and reason.}
#' }
#' 
#' \strong{ApiException}
#' 
#' Exception class for holding a list of service errors.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.ApiException}{Google Documentation for ApiException}
#' \describe{
#'  \item{message}{a string (inherited from ApplicationException) -  Error message.}
#'  \item{errors}{a ApiError -  List of errors.}
#' }
#' 
#' \strong{ApiVersionError}
#' 
#' Errors related to the usage of API versions.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.ApiVersionError}{Google Documentation for ApiVersionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.ApplicationException}{Google Documentation for ApplicationException}
#' \describe{
#'  \item{message}{a string -  Error message.}
#' }
#' 
#' \strong{AppliedLabel}
#' 
#' Represents a Label that can be applied to an entity. To negate an inherited
#' label, create an AppliedLabel with labelId as the inherited label's ID and
#' isNegated set to true.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.AppliedLabel}{Google Documentation for AppliedLabel}
#' \describe{
#'  \item{labelId}{a integer -  The ID of a created Label.}
#'  \item{isNegated}{a boolean -  isNegated should be set to true to negate the effects of labelId.}
#' }
#' 
#' \strong{ArchiveProductTemplates}
#' 
#' The action used for archiving product template.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.ArchiveProductTemplates}{Google Documentation for ArchiveProductTemplates}
#' \describe{
#'  \item{extends ProductTemplateAction}{see documentation for ProductTemplateAction}
#' }
#' 
#' \strong{AudienceSegmentCriteria}
#' 
#' An AudienceSegmentCriteria object is used to target AudienceSegment objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.AudienceSegmentCriteria}{Google Documentation for AudienceSegmentCriteria}
#' \describe{
#'  \item{extends CustomCriteriaLeaf}{see documentation for CustomCriteriaLeaf}
#'  \item{operator}{a AudienceSegmentCriteria.ComparisonOperator - The comparison operator. This attribute is required. This can take one of the following values:
#'    \itemize{
#'      \item{IS}
#'      \item{IS_NOT}
#'    }
#'   }
#'  \item{audienceSegmentIds}{a integer -  The ids of AudienceSegment objects used to target audience segments. This
#' attribute is required.}
#' }
#' 
#' \strong{AuthenticationError}
#' 
#' An error for an exception that occurred when authenticating.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.AuthenticationError}{Google Documentation for AuthenticationError}
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
#' \strong{BandwidthGroup}
#' 
#' Represents a group of bandwidths that are logically organized by some well
#' known generic names such as 'Cable' or 'DSL'.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.BandwidthGroup}{Google Documentation for BandwidthGroup}
#' \describe{
#'  \item{id}{a integer (inherited from Technology) -  The unique ID of the Technology. This value is required for all forms of
#' TechnologyTargeting.}
#'  \item{name}{a string (inherited from Technology) -  The name of the technology being targeting. This value is read-only and is
#' assigned by Google.}
#' }
#' 
#' \strong{BandwidthGroupTargeting}
#' 
#' Represents bandwidth groups that are being targeted or excluded by the
#' LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.BandwidthGroupTargeting}{Google Documentation for BandwidthGroupTargeting}
#' \describe{
#'  \item{isTargeted}{a boolean -  Indicates whether bandwidth groups should be targeted or excluded. This
#' attribute is optional and defaults to true.}
#'  \item{bandwidthGroups}{a Technology -  The bandwidth groups that are being targeted or excluded by the LineItem.}
#' }
#' 
#' \strong{BaseCustomFieldValue}
#' 
#' The value of a CustomField for a particular entity.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.BaseCustomFieldValue}{Google Documentation for BaseCustomFieldValue}
#' \describe{
#'  \item{customFieldId}{a integer -  Id of the CustomField to which this value belongs. This attribute is
#' required.}
#' }
#' 
#' \strong{BaseRateError}
#' 
#' An error having to do with BaseRate.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.BaseRateError}{Google Documentation for BaseRateError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a BaseRateError.Reason - This can take one of the following values:
#'    \itemize{
#'      \item{CANNOT_QUERY_BOTH_PRODUCT_TEMPLATE_ID_AND_PRODUCT_ID - The PQL statement contains both productTemplateId and productId fields.}
#'      \item{INVALID_CURRENCY_CODE - The currency code is invalid.}
#'      \item{PRODUCT_TEMPLATE_ARCHIVED - Cannot create or activate a base rate if the product template is archived.}
#'      \item{UNSUPPORTED_OPERATION - Indicates that the requested operation is not supported.}
#'      \item{PRODUCT_TEMPLATE_BASE_RATE_NOT_FOUND - Cannot create a base rate to a product if its product template does not have
#' a base rate on this rate card.}
#'      \item{PRODUCT_BASE_RATE_EXISTS - Cannot delete a base rate on a product template if its products still have
#' base rates on this rate card.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{BooleanValue}
#' 
#' Contains a boolean value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.BooleanValue}{Google Documentation for BooleanValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a boolean -  The boolean value.}
#' }
#' 
#' \strong{Browser}
#' 
#' Represents an internet browser.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.Browser}{Google Documentation for Browser}
#' \describe{
#'  \item{id}{a integer (inherited from Technology) -  The unique ID of the Technology. This value is required for all forms of
#' TechnologyTargeting.}
#'  \item{name}{a string (inherited from Technology) -  The name of the technology being targeting. This value is read-only and is
#' assigned by Google.}
#'  \item{majorVersion}{a string -  Browser major version.}
#'  \item{minorVersion}{a string -  Browser minor version.}
#' }
#' 
#' \strong{BrowserLanguage}
#' 
#' Represents a Browser's language.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.BrowserLanguage}{Google Documentation for BrowserLanguage}
#' \describe{
#'  \item{id}{a integer (inherited from Technology) -  The unique ID of the Technology. This value is required for all forms of
#' TechnologyTargeting.}
#'  \item{name}{a string (inherited from Technology) -  The name of the technology being targeting. This value is read-only and is
#' assigned by Google.}
#' }
#' 
#' \strong{BrowserLanguageTargeting}
#' 
#' Represents browser languages that are being targeted or excluded by the
#' LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.BrowserLanguageTargeting}{Google Documentation for BrowserLanguageTargeting}
#' \describe{
#'  \item{isTargeted}{a boolean -  Indicates whether browsers languages should be targeted or excluded. This
#' attribute is optional and defaults to true.}
#'  \item{browserLanguages}{a Technology -  Browser languages that are being targeted or excluded by the LineItem.}
#' }
#' 
#' \strong{BrowserTargeting}
#' 
#' Represents browsers that are being targeted or excluded by the LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.BrowserTargeting}{Google Documentation for BrowserTargeting}
#' \describe{
#'  \item{isTargeted}{a boolean -  Indicates whether browsers should be targeted or excluded. This attribute is
#' optional and defaults to true.}
#'  \item{browsers}{a Technology -  Browsers that are being targeted or excluded by the LineItem.}
#' }
#' 
#' \strong{CollectionSizeError}
#' 
#' Error for the size of the collection being too large
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.CollectionSizeError}{Google Documentation for CollectionSizeError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.CommonError}{Google Documentation for CommonError}
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
#' \strong{ContentMetadataKeyHierarchyTargeting}
#' 
#' Represents one or more CustomTargetingValue custom targeting values from
#' different CustomTargetingKey custom targeting keys ANDed together.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.ContentMetadataKeyHierarchyTargeting}{Google Documentation for ContentMetadataKeyHierarchyTargeting}
#' \describe{
#'  \item{customTargetingValueIds}{a integer -  The list of IDs of the targeted CustomTargetingValue objects that are ANDed
#' together. Targeting values do not need to be in the order of the hierarchy
#' levels. For example, if the hierarchy is "show > season > genre" the values
#' could be "season=3, show=30rock, genre=comedy."}
#' }
#' 
#' \strong{ContentMetadataTargetingError}
#' 
#' Lists all errors related to ContentMetadataTargeting.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.ContentMetadataTargetingError}{Google Documentation for ContentMetadataTargetingError}
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
#' \strong{ContentTargeting}
#' 
#' Used to target LineItems to specific videos on a publisher's site.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.ContentTargeting}{Google Documentation for ContentTargeting}
#' \describe{
#'  \item{targetedContentIds}{a integer -  The IDs of content being targeted by the LineItem.}
#'  \item{excludedContentIds}{a integer -  The IDs of content being excluded by the LineItem.}
#'  \item{targetedVideoCategoryIds}{a integer -  A list of video categories, represented by CustomTargetingValue IDs, that
#' are being targeted by the LineItem.  These IDs must be from video
#' categories, which are a set of CustomTargetingValues that belong to the
#' content browse key.  The content browse key can be obtained by getting the
#' Network contentBrowseCustomTargetingKeyId and the acceptable values can be
#' obtained using the CustomTargetingService
#' getCustomTargetingValuesByStatement.}
#'  \item{excludedVideoCategoryIds}{a integer -  A list of video categories, represented by CustomTargetingValue IDs, that
#' are being excluded by the LineItem.  These IDs must be from video
#' categories, which are a set of CustomTargetingValues that belong to the
#' content browse key.  The content browse key can be obtained by getting the
#' Network contentBrowseCustomTargetingKeyId and the acceptable values can be
#' obtained using the CustomTargetingService
#' getCustomTargetingValuesByStatement.}
#'  \item{targetedVideoContentBundleIds}{a integer -  A list of video content bundles, represented by ContentBundle IDs, that are
#' being targeted by the LineItem.}
#'  \item{excludedVideoContentBundleIds}{a integer -  A list of video content bundles, represented by ContentBundle IDs, that are
#' being excluded by the LineItem.}
#'  \item{targetedContentMetadata}{a ContentMetadataKeyHierarchyTargeting -  A list of content metadata within hierarchies that are being targeted by the
#' LineItem.}
#'  \item{excludedContentMetadata}{a ContentMetadataKeyHierarchyTargeting -  A list of content metadata within hierarchies that are being excluded by the
#' LineItem.}
#' }
#' 
#' \strong{CreativePlaceholder}
#' 
#' A CreativePlaceholder describes a slot that a creative is expected to fill.
#' This is used primarily to help in forecasting, and also to validate that the
#' correct creatives are associated with the line item. A CreativePlaceholder
#' must contain a size, and it can optionally contain companions. Companions
#' are only valid if the line item's environment type is EnvironmentType
#' VIDEO_PLAYER.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.CreativePlaceholder}{Google Documentation for CreativePlaceholder}
#' \describe{
#'  \item{size}{a Size -  The dimensions that the creative is expected to have. This attribute is
#' required.}
#'  \item{creativeTemplateId}{a integer -  The native creative template ID. This value is only required if
#' creativeSizeType is CreativeSizeType NATIVE.}
#'  \item{companions}{a CreativePlaceholder -  The companions that the creative is expected to have. This attribute can
#' only be set if the line item it belongs to has a LineItem environmentType of
#' EnvironmentType VIDEO_PLAYER or LineItem roadblockingType of
#' RoadblockingType CREATIVE_SET.}
#'  \item{appliedLabels}{a AppliedLabel -  The set of label frequency caps applied directly to this creative
#' placeholder.}
#'  \item{effectiveAppliedLabels}{a AppliedLabel -  Contains the set of labels applied directly to this creative placeholder as
#' well as those inherited from the creative template from which this creative
#' placeholder was instantiated. This field is readonly and is assigned by
#' Google.}
#'  \item{expectedCreativeCount}{a integer -  Expected number of creatives that will be uploaded corresponding to this
#' creative placeholder. This estimate is used to improve the accuracy of
#' forecasting; for example, if label frequency capping limits the number of
#' times a creative may be served.}
#'  \item{creativeSizeType}{a CreativeSizeType - Describes the types of sizes a creative can be. By default, the creative's
#' size is CreativeSizeType PIXEL, which is a dimension based size
#' (width-height pair). This can take one of the following values:
#'    \itemize{
#'      \item{PIXEL - Dimension based size, an actual height and width.}
#'      \item{ASPECT_RATIO - Mobile size, that is expressed as a ratio of say 4 by 1, that could be met
#' by a 100 x 25 sized image.}
#'      \item{INTERSTITIAL - Out-of-page size, that is not related to the slot it is served. But rather
#' is a function of the snippet, and the values set. This must be used with 1x1
#' size.}
#'      \item{NATIVE - Native size, which is a function of the how the client renders the creative.
#' This must be used with 1x1 size.}
#'    }
#'   }
#'  \item{targetingName}{a string -  The name of the CreativeTargeting for creatives this placeholder represents.
#' This attribute is optional. Specifying creative targeting here is for
#' forecasting purposes only and has no effect on serving. The same creative
#' targeting should be specified on a LineItemCreativeAssociation when
#' associating a Creative with the LineItem.}
#' }
#' 
#' \strong{CustomCriteria}
#' 
#' A CustomCriteria object is used to perform custom criteria targeting on
#' custom targeting keys of type CustomTargetingKey.Type PREDEFINED or
#' CustomTargetingKey.Type FREEFORM.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.CustomCriteria}{Google Documentation for CustomCriteria}
#' \describe{
#'  \item{extends CustomCriteriaLeaf}{see documentation for CustomCriteriaLeaf}
#'  \item{keyId}{a integer -  The CustomTargetingKey id of the CustomTargetingKey object that was created
#' using CustomTargetingService. This attribute is required.}
#'  \item{valueIds}{a integer -  The ids of CustomTargetingValue objects to target the custom targeting key
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.CustomCriteriaLeaf}{Google Documentation for CustomCriteriaLeaf}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.CustomCriteriaNode}{Google Documentation for CustomCriteriaNode}
#' \describe{
#' }
#' 
#' \strong{CustomCriteriaSet}
#' 
#' A CustomCriteriaSet comprises of a set of CustomCriteriaNode objects
#' combined by the CustomCriteriaSet.LogicalOperator logicalOperator. The
#' custom criteria targeting tree is subject to the rules defined on Targeting
#' customTargeting.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.CustomCriteriaSet}{Google Documentation for CustomCriteriaSet}
#' \describe{
#'  \item{extends CustomCriteriaNode}{see documentation for CustomCriteriaNode}
#'  \item{logicalOperator}{a CustomCriteriaSet.LogicalOperator - The logical operator to be applied to CustomCriteriaSet children. This
#' attribute is required. This can take one of the following values:
#'    \itemize{
#'      \item{AND}
#'      \item{OR}
#'    }
#'   }
#'  \item{children}{a CustomCriteriaNode -  The custom criteria. This attribute is required.}
#' }
#' 
#' \strong{CustomFieldValue}
#' 
#' The value of a CustomField that does not have a CustomField dataType of
#' CustomFieldDataType DROP_DOWN.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.CustomFieldValue}{Google Documentation for CustomFieldValue}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.CustomFieldValueError}{Google Documentation for CustomFieldValueError}
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
#' \strong{CustomizableAttributes}
#' 
#' Specifies what targeting or attributes are customizable on a
#' ProductTemplate.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.CustomizableAttributes}{Google Documentation for CustomizableAttributes}
#' \describe{
#'  \item{allowGeoTargetingCustomization}{a boolean -  Allows customization by salespeople of geographical targeting when creating
#' proposal line items. This attribute is optional and defaults to false.}
#'  \item{allowAdUnitTargetingCustomization}{a boolean -  Allows customization by salespeople of ad unit targeting in Targeting
#' inventoryTargeting when creating proposal line items. This attribute is
#' optional and defaults to false.}
#'  \item{allowPlacementTargetingCustomization}{a boolean -  Allows customization by salespeople of placement targeting in Targeting
#' inventoryTargeting when creating proposal line items. This attribute is
#' optional and defaults to false.}
#'  \item{allowUserDomainTargetingCustomization}{a boolean -  Allows customization by salespeople of user domain targeting when creating
#' proposal line items. This attribute is optional and defaults to false.}
#'  \item{allowBandwidthGroupTargetingCustomization}{a boolean -  Allows customization by salespeople of bandwidth group targeting when
#' creating proposal line items. This attribute is optional and defaults to
#' false.}
#'  \item{allowBrowserTargetingCustomization}{a boolean -  Allows customization by salespeople of browser targeting when creating
#' proposal line items. This attribute is optional and defaults to false.}
#'  \item{allowBrowserLanguageTargetingCustomization}{a boolean -  Allows customization by salespeople of browser language targeting when
#' creating proposal line items. This attribute is optional and defaults to
#' false.}
#'  \item{allowOperatingSystemTargetingCustomization}{a boolean -  Allows customization by salespeople of operating system targeting when
#' creating proposal line items. This attribute is optional and defaults to
#' false.}
#'  \item{allowDeviceCapabilityTargetingCustomization}{a boolean -  Allows customization by salespeople of device capability targeting when
#' creating proposal line items. This attribute is optional and defaults to
#' false.}
#'  \item{allowDeviceCategoryTargetingCustomization}{a boolean -  Allows customization by salespeople of device category targeting when
#' creating proposal line items. This attribute is optional and defaults to
#' false.}
#'  \item{allowMobileCarrierTargetingCustomization}{a boolean -  Allows customization by salespeople of mobile carrier targeting when
#' creating proposal line items. This attribute is optional and defaults to
#' false.}
#'  \item{allowMobileDeviceAndManufacturerTargetingCustomization}{a boolean -  Allows customization by salespeople of device manufacturer, mobile device,
#' and mobile device sub-model targeting when creating proposal line items.
#' This attribute is optional and defaults to false.}
#'  \item{allowAudienceSegmentTargetingCustomization}{a boolean -  Allows customization by salespeople of audience segment targeting when
#' creating proposal line items. This attribute is optional and defaults to
#' false.}
#'  \item{isAllCustomTargetingKeysCustomizable}{a boolean -  Specifies whether all custom targeting keys (except those used in
#' ProductSegmentation customTargetingSegment) are allowed to be customized by
#' salespeople. If it's true, then customizableCustomTargetingKeyIds is
#' ignored. This attribute is optional and defaults to false.}
#'  \item{customizableCustomTargetingKeyIds}{a integer -  Specifies what custom criteria salespeople are allow to customize. It refers
#' the key id of customizable custom criteria here. If
#' isAllCustomTargetingKeysCustomizable is true, then this attribute is
#' ignored. This attribute is optional.}
#'  \item{allowFrequencyCapsCustomization}{a boolean -  Allows customization by salespeople of frequency caps when creating proposal
#' line items. This attribute is optional and defaults to false when
#' ProductTemplate productType is ProductType DFP.}
#' }
#' 
#' \strong{CustomTargetingError}
#' 
#' Lists all errors related to CustomTargetingKey and CustomTargetingValue
#' objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.CustomTargetingError}{Google Documentation for CustomTargetingError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.Date}{Google Documentation for Date}
#' \describe{
#'  \item{year}{a integer -  Year (e.g., 2009)}
#'  \item{month}{a integer -  Month (1..12)}
#'  \item{day}{a integer -  Day (1..31)}
#' }
#' 
#' \strong{DateTime}
#' 
#' Represents a date combined with the time of day.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.DateTime}{Google Documentation for DateTime}
#' \describe{
#'  \item{date}{a Date}
#'  \item{hour}{a integer}
#'  \item{minute}{a integer}
#'  \item{second}{a integer}
#'  \item{timeZoneID}{a string}
#' }
#' 
#' \strong{DateTimeRangeTargetingError}
#' 
#' Lists all date time range errors caused by associating a line item with a
#' targeting expression.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.DateTimeRangeTargetingError}{Google Documentation for DateTimeRangeTargetingError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.DateTimeValue}{Google Documentation for DateTimeValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a DateTime -  The DateTime value.}
#' }
#' 
#' \strong{DateValue}
#' 
#' Contains a date value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.DateValue}{Google Documentation for DateValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a Date -  The Date value.}
#' }
#' 
#' \strong{DayPart}
#' 
#' DayPart represents a time-period within a day of the week which is targeted
#' by a LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.DayPart}{Google Documentation for DayPart}
#' \describe{
#'  \item{dayOfWeek}{a DayOfWeek - Day of the week the target applies to. This field is required. This can take one of the following values:
#'    \itemize{
#'      \item{MONDAY - The day of week named Monday.}
#'      \item{TUESDAY - The day of week named Tuesday.}
#'      \item{WEDNESDAY - The day of week named Wednesday.}
#'      \item{THURSDAY - The day of week named Thursday.}
#'      \item{FRIDAY - The day of week named Friday.}
#'      \item{SATURDAY - The day of week named Saturday.}
#'      \item{SUNDAY - The day of week named Sunday.}
#'    }
#'   }
#'  \item{startTime}{a TimeOfDay -  Represents the start time of the targeted period (inclusive).}
#'  \item{endTime}{a TimeOfDay -  Represents the end time of the targeted period (exclusive).}
#' }
#' 
#' \strong{DayPartTargeting}
#' 
#' Modify the delivery times of line items for particular days of the week. By
#' default, line items are served at all days and times.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.DayPartTargeting}{Google Documentation for DayPartTargeting}
#' \describe{
#'  \item{dayParts}{a DayPart -  Specifies days of the week and times at which a LineItem will be delivered.
#' If targeting all days and times, this value will be ignored.}
#'  \item{timeZone}{a DeliveryTimeZone - Specifies the time zone to be used for delivering LineItem objects. This
#' attribute is optional and defaults to DeliveryTimeZone BROWSER.  Setting
#' this has no effect if targeting all days and times. This can take one of the following values:
#'    \itemize{
#'      \item{PUBLISHER - Use the time zone of the publisher.}
#'      \item{BROWSER - Use the time zone of the browser.}
#'    }
#'   }
#' }
#' 
#' \strong{DayPartTargetingError}
#' 
#' Lists all errors associated with day-part targeting for a line item.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.DayPartTargetingError}{Google Documentation for DayPartTargetingError}
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
#' \strong{DeactivateProductTemplates}
#' 
#' The action used for deactivating product templates.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.DeactivateProductTemplates}{Google Documentation for DeactivateProductTemplates}
#' \describe{
#'  \item{extends ProductTemplateAction}{see documentation for ProductTemplateAction}
#' }
#' 
#' \strong{DeviceCapability}
#' 
#' Represents a capability of a physical device.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.DeviceCapability}{Google Documentation for DeviceCapability}
#' \describe{
#'  \item{id}{a integer (inherited from Technology) -  The unique ID of the Technology. This value is required for all forms of
#' TechnologyTargeting.}
#'  \item{name}{a string (inherited from Technology) -  The name of the technology being targeting. This value is read-only and is
#' assigned by Google.}
#' }
#' 
#' \strong{DeviceCapabilityTargeting}
#' 
#' Represents device capabilities that are being targeted or excluded by the
#' LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.DeviceCapabilityTargeting}{Google Documentation for DeviceCapabilityTargeting}
#' \describe{
#'  \item{targetedDeviceCapabilities}{a Technology -  Device capabilities that are being targeted by the LineItem.}
#'  \item{excludedDeviceCapabilities}{a Technology -  Device capabilities that are being excluded by the LineItem.}
#' }
#' 
#' \strong{DeviceCategory}
#' 
#' Represents the category of a device.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.DeviceCategory}{Google Documentation for DeviceCategory}
#' \describe{
#'  \item{id}{a integer (inherited from Technology) -  The unique ID of the Technology. This value is required for all forms of
#' TechnologyTargeting.}
#'  \item{name}{a string (inherited from Technology) -  The name of the technology being targeting. This value is read-only and is
#' assigned by Google.}
#' }
#' 
#' \strong{DeviceCategoryTargeting}
#' 
#' Represents device categories that are being targeted or excluded by the
#' LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.DeviceCategoryTargeting}{Google Documentation for DeviceCategoryTargeting}
#' \describe{
#'  \item{targetedDeviceCategories}{a Technology -  Device categories that are being targeted by the LineItem.}
#'  \item{excludedDeviceCategories}{a Technology -  Device categories that are being excluded by the LineItem.}
#' }
#' 
#' \strong{DeviceManufacturer}
#' 
#' Represents a mobile device's manufacturer.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.DeviceManufacturer}{Google Documentation for DeviceManufacturer}
#' \describe{
#'  \item{id}{a integer (inherited from Technology) -  The unique ID of the Technology. This value is required for all forms of
#' TechnologyTargeting.}
#'  \item{name}{a string (inherited from Technology) -  The name of the technology being targeting. This value is read-only and is
#' assigned by Google.}
#' }
#' 
#' \strong{DeviceManufacturerTargeting}
#' 
#' Represents device manufacturer that are being targeted or excluded by the
#' LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.DeviceManufacturerTargeting}{Google Documentation for DeviceManufacturerTargeting}
#' \describe{
#'  \item{isTargeted}{a boolean -  Indicates whether device manufacturers should be targeted or excluded. This
#' attribute is optional and defaults to true.}
#'  \item{deviceManufacturers}{a Technology -  Device manufacturers that are being targeted or excluded by the LineItem.}
#' }
#' 
#' \strong{DropDownCustomFieldValue}
#' 
#' A CustomFieldValue for a CustomField that has a CustomField dataType of
#' CustomFieldDataType DROP_DOWN
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.DropDownCustomFieldValue}{Google Documentation for DropDownCustomFieldValue}
#' \describe{
#'  \item{customFieldId}{a integer (inherited from BaseCustomFieldValue) -  Id of the CustomField to which this value belongs. This attribute is
#' required.}
#'  \item{customFieldOptionId}{a integer -  The CustomFieldOption id ID of the CustomFieldOption for this value.}
#' }
#' 
#' \strong{EntityChildrenLimitReachedError}
#' 
#' Lists errors relating to having too many children on an entity.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.EntityChildrenLimitReachedError}{Google Documentation for EntityChildrenLimitReachedError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.EntityLimitReachedError}{Google Documentation for EntityLimitReachedError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.FeatureError}{Google Documentation for FeatureError}
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
#' \strong{FrequencyCap}
#' 
#' Represents a limit on the number of times a single viewer can be exposed to
#' the same LineItem in a specified time period.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.FrequencyCap}{Google Documentation for FrequencyCap}
#' \describe{
#'  \item{maxImpressions}{a integer -  The maximum number of impressions than can be served to a user within a
#' specified time period.}
#'  \item{numTimeUnits}{a integer -  The number of FrequencyCap timeUnit to represent the total time period.}
#'  \item{timeUnit}{a TimeUnit - The unit of time for specifying the time period. This can take one of the following values:
#'    \itemize{
#'      \item{MINUTE}
#'      \item{HOUR}
#'      \item{DAY}
#'      \item{WEEK}
#'      \item{MONTH}
#'      \item{LIFETIME}
#'      \item{POD - Per pod of ads in a video stream. Only valid for entities in a
#' EnvironmentType VIDEO_PLAYER environment.}
#'      \item{STREAM - Per video stream. Only valid for entities in a EnvironmentType VIDEO_PLAYER
#' environment.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{FrequencyCapError}
#' 
#' Lists all errors associated with frequency caps.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.FrequencyCapError}{Google Documentation for FrequencyCapError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.GenericTargetingError}{Google Documentation for GenericTargetingError}
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
#' \strong{GeoTargeting}
#' 
#' Provides line items the ability to target geographical locations. By
#' default, line items target all countries and their subdivisions. With
#' geographical targeting, you can target line items to specific countries,
#' regions, metro areas, and cities. You can also exclude the same.  The
#' following rules apply for geographical targeting: You cannot target and
#' exclude the same location You cannot target a child whose parent has been
#' excluded. So if the state of Illinois has been excluded, then you cannot
#' target Chicago You must not target a location if you are also targeting its
#' parent. So if you are targeting New York City, you must not have the state
#' of New York as one of the targeted locations
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.GeoTargeting}{Google Documentation for GeoTargeting}
#' \describe{
#'  \item{targetedLocations}{a Location -  The geographical locations being targeted by the LineItem.}
#'  \item{excludedLocations}{a Location -  The geographical locations being excluded by the LineItem.}
#' }
#' 
#' \strong{GeoTargetingError}
#' 
#' Lists all errors associated with geographical targeting for a LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.GeoTargetingError}{Google Documentation for GeoTargetingError}
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
#' \strong{InternalApiError}
#' 
#' Indicates that a server-side error has occured. InternalApiErrors are
#' generally not the result of an invalid request or message sent by the
#' client.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.InternalApiError}{Google Documentation for InternalApiError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.InventoryTargeting}{Google Documentation for InventoryTargeting}
#' \describe{
#'  \item{targetedAdUnits}{a AdUnitTargeting -  A list of targeted AdUnitTargeting.}
#'  \item{excludedAdUnits}{a AdUnitTargeting -  A list of excluded AdUnitTargeting.}
#'  \item{targetedPlacementIds}{a integer -  A list of targeted Placement ids.}
#' }
#' 
#' \strong{InventoryTargetingError}
#' 
#' Lists all inventory errors caused by associating a line item with a
#' targeting expression.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.InventoryTargetingError}{Google Documentation for InventoryTargetingError}
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
#' \strong{Location}
#' 
#' A Location represents a geographical entity that can be targeted. If a
#' location type is not available because of the API version you are using, the
#' location will be represented as just the base class, otherwise it will be
#' sub-classed correctly.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.Location}{Google Documentation for Location}
#' \describe{
#'  \item{id}{a integer -  Uniquely identifies each Location.}
#'  \item{type}{a string -  The location type for this geographical entity (ex. "COUNTRY", "CITY",
#' "STATE", "COUNTY", etc.)}
#'  \item{canonicalParentId}{a integer -  The nearest location parent's ID for this geographical entity.}
#'  \item{displayName}{a string -  The localized name of the geographical entity.}
#' }
#' 
#' \strong{MobileCarrier}
#' 
#' Represents a mobile carrier. Carrier targeting is only available to DFP
#' mobile publishers.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.MobileCarrier}{Google Documentation for MobileCarrier}
#' \describe{
#'  \item{id}{a integer (inherited from Technology) -  The unique ID of the Technology. This value is required for all forms of
#' TechnologyTargeting.}
#'  \item{name}{a string (inherited from Technology) -  The name of the technology being targeting. This value is read-only and is
#' assigned by Google.}
#' }
#' 
#' \strong{MobileCarrierTargeting}
#' 
#' Represents mobile carriers that are being targeted or excluded by the
#' LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.MobileCarrierTargeting}{Google Documentation for MobileCarrierTargeting}
#' \describe{
#'  \item{isTargeted}{a boolean -  Indicates whether mobile carriers should be targeted or excluded. This
#' attribute is optional and defaults to true.}
#'  \item{mobileCarriers}{a Technology -  Mobile carriers that are being targeted or excluded by the LineItem.}
#' }
#' 
#' \strong{MobileDevice}
#' 
#' Represents a Mobile Device.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.MobileDevice}{Google Documentation for MobileDevice}
#' \describe{
#'  \item{id}{a integer (inherited from Technology) -  The unique ID of the Technology. This value is required for all forms of
#' TechnologyTargeting.}
#'  \item{name}{a string (inherited from Technology) -  The name of the technology being targeting. This value is read-only and is
#' assigned by Google.}
#'  \item{manufacturerCriterionId}{a integer -  Manufacturer Id.}
#' }
#' 
#' \strong{MobileDeviceSubmodel}
#' 
#' Represents a mobile device submodel.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.MobileDeviceSubmodel}{Google Documentation for MobileDeviceSubmodel}
#' \describe{
#'  \item{id}{a integer (inherited from Technology) -  The unique ID of the Technology. This value is required for all forms of
#' TechnologyTargeting.}
#'  \item{name}{a string (inherited from Technology) -  The name of the technology being targeting. This value is read-only and is
#' assigned by Google.}
#'  \item{mobileDeviceCriterionId}{a integer -  The mobile device id.}
#'  \item{deviceManufacturerCriterionId}{a integer -  The device manufacturer id.}
#' }
#' 
#' \strong{MobileDeviceSubmodelTargeting}
#' 
#' Represents mobile devices that are being targeted or excluded by the
#' LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.MobileDeviceSubmodelTargeting}{Google Documentation for MobileDeviceSubmodelTargeting}
#' \describe{
#'  \item{targetedMobileDeviceSubmodels}{a Technology -  Mobile device submodels that are being targeted by the LineItem.}
#'  \item{excludedMobileDeviceSubmodels}{a Technology -  Mobile device submodels that are being excluded by the LineItem.}
#' }
#' 
#' \strong{MobileDeviceTargeting}
#' 
#' Represents mobile devices that are being targeted or excluded by the
#' LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.MobileDeviceTargeting}{Google Documentation for MobileDeviceTargeting}
#' \describe{
#'  \item{targetedMobileDevices}{a Technology -  Mobile devices that are being targeted by the LineItem.}
#'  \item{excludedMobileDevices}{a Technology -  Mobile devices that are being excluded by the LineItem.}
#' }
#' 
#' \strong{NotNullError}
#' 
#' Caused by supplying a null value for an attribute that cannot be null.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.NotNullError}{Google Documentation for NotNullError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.NullError}{Google Documentation for NullError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.NumberValue}{Google Documentation for NumberValue}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.ObjectValue}{Google Documentation for ObjectValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#' }
#' 
#' \strong{OperatingSystem}
#' 
#' Represents an Operating System, such as Linux, Mac OS or Windows.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.OperatingSystem}{Google Documentation for OperatingSystem}
#' \describe{
#'  \item{id}{a integer (inherited from Technology) -  The unique ID of the Technology. This value is required for all forms of
#' TechnologyTargeting.}
#'  \item{name}{a string (inherited from Technology) -  The name of the technology being targeting. This value is read-only and is
#' assigned by Google.}
#' }
#' 
#' \strong{OperatingSystemTargeting}
#' 
#' Represents operating systems that are being targeted or excluded by the
#' LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.OperatingSystemTargeting}{Google Documentation for OperatingSystemTargeting}
#' \describe{
#'  \item{isTargeted}{a boolean -  Indicates whether operating systems should be targeted or excluded. This
#' attribute is optional and defaults to true.}
#'  \item{operatingSystems}{a Technology -  Operating systems that are being targeted or excluded by the LineItem.}
#' }
#' 
#' \strong{OperatingSystemVersion}
#' 
#' Represents a specific version of an operating system.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.OperatingSystemVersion}{Google Documentation for OperatingSystemVersion}
#' \describe{
#'  \item{id}{a integer (inherited from Technology) -  The unique ID of the Technology. This value is required for all forms of
#' TechnologyTargeting.}
#'  \item{name}{a string (inherited from Technology) -  The name of the technology being targeting. This value is read-only and is
#' assigned by Google.}
#'  \item{majorVersion}{a integer -  The operating system major version.}
#'  \item{minorVersion}{a integer -  The operating system minor version.}
#'  \item{microVersion}{a integer -  The operating system micro version.}
#' }
#' 
#' \strong{OperatingSystemVersionTargeting}
#' 
#' Represents operating system versions that are being targeted or excluded by
#' the LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.OperatingSystemVersionTargeting}{Google Documentation for OperatingSystemVersionTargeting}
#' \describe{
#'  \item{targetedOperatingSystemVersions}{a Technology -  Operating system versions that are being targeted by the LineItem.}
#'  \item{excludedOperatingSystemVersions}{a Technology -  Operating system versions that are being excluded by the LineItem.}
#' }
#' 
#' \strong{ParseError}
#' 
#' Lists errors related to parsing.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.ParseError}{Google Documentation for ParseError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.PermissionError}{Google Documentation for PermissionError}
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
#' \strong{PlacementTargeting}
#' 
#' Specifies what Placement placements are targeted.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.PlacementTargeting}{Google Documentation for PlacementTargeting}
#' \describe{
#'  \item{targetedPlacementIds}{a integer -  IDs of the targeted placements.}
#' }
#' 
#' \strong{ProductSegmentation}
#' 
#' Segmentations used to create products. Within a product template, for each
#' segmentation, a product will be created for the combination of all other
#' segments within other segmentations.  For example, a product with 3
#' segmentations with only 1 segment for each will produce 1 x 1 x 1 = 1
#' product. A product with 3 segmentations with 2 segments for each will
#' produce 2 x 2 x 2 = 8 products.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.ProductSegmentation}{Google Documentation for ProductSegmentation}
#' \describe{
#'  \item{geoSegment}{a GeoTargeting -  The geographic segmentation. Segments should be set on the GeoTargeting
#' targetedLocations field. This attribute is optional.}
#'  \item{adUnitSegments}{a AdUnitTargeting -  The ad unit targeting segmentation. For each ad unit segment,
#' AdUnitTargeting includeDescendants must be true. This attribute is optional.}
#'  \item{placementSegment}{a PlacementTargeting -  The placement targeting segmentation. This attribute is optional.}
#'  \item{customTargetingSegment}{a CustomCriteria -  The custom targeting segmentation. This attribute is optional.}
#'  \item{userDomainSegment}{a UserDomainTargeting -  The user domain segmentation. UserDomainTargeting isTargeted must be true.
#' This attribute is optional.}
#'  \item{bandwidthSegment}{a BandwidthGroupTargeting -  The bandwidth segmentation. BandwidthGroupTargeting isTargeted must be true.
#' This attribute is optional.}
#'  \item{browserSegment}{a BrowserTargeting -  The browser segmentation. BrowserTargeting isTargeted must be true. This
#' attribute is optional.}
#'  \item{browserLanguageSegment}{a BrowserLanguageTargeting -  The browser language segmentation. BrowserLanguageTargeting isTargeted must
#' be true. This attribute is optional.}
#'  \item{operatingSystemSegment}{a OperatingSystemTargeting -  The operating system segmentation. OperatingSystemTargeting isTargeted must
#' be true. We only allow segment by Operating_System, not
#' Operating_System_Version (will be ignored). This attribute is optional.}
#'  \item{mobileCarrierSegment}{a MobileCarrierTargeting -  The mobile carrier segmentation. MobileCarrierTargeting isTargeted must be
#' true. This attribute is optional.}
#'  \item{deviceCapabilitySegment}{a DeviceCapabilityTargeting -  The device capability segmentation. DeviceCapabilityTargeting
#' excludedDeviceCapabilities must be empty or null. This attribute is
#' optional.}
#'  \item{deviceCategorySegment}{a DeviceCategoryTargeting -  The device category segmentation. DeviceCategoryTargeting
#' excludedDeviceCategories must be empty or null. This attribute is optional.}
#'  \item{deviceManufacturerSegment}{a DeviceManufacturerTargeting -  The device manufacturer segmentation. DeviceFamilyTargeting isTargeted must
#' be true. This attribute is optional.}
#'  \item{mobileDeviceSegment}{a MobileDeviceTargeting -  The mobile device segmentation. MobileDeviceTargeting excludedMobileDevices
#' must be empty or null. This attribute is optional.}
#'  \item{mobileDeviceSubmodelSegment}{a MobileDeviceSubmodelTargeting -  The mobile device submodel segmentation. MobileDeviceSubmodelTargeting
#' excludedMobileDeviceSubmodels must be empty or null.}
#'  \item{videoPositionSegment}{a VideoPositionTargeting -  The video position segmentation. This attribute is optional.}
#' }
#' 
#' \strong{ProductTemplate}
#' 
#' ProductTemplate is used to generate products. All generated products will
#' inherit all attributes from their ProductTemplate, except for segmentation,
#' which will be included in the Product targeting. The generated products in
#' turn will be used to create ProposalLineItem proposal line items so that
#' almost all attributes in the product template are properties of the proposal
#' line item.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.ProductTemplate}{Google Documentation for ProductTemplate}
#' \describe{
#'  \item{id}{a integer -  Uniquely identifies the ProductTemplate. This attribute is read-only and is
#' assigned by Google when a ProductTemplate is created.}
#'  \item{name}{a string -  The name of the ProductTemplate. This attribute is required and has maximum
#' length of 255 characters.}
#'  \item{creationDateTime}{a DateTime -  The creation time of the ProductTemplate. This attribute is read-only and is
#' assigned by Google when a ProductTemplate is created.}
#'  \item{lastModifiedDateTime}{a DateTime -  The date and time this ProductTemplate was last modified. This attribute is
#' read-only and is assigned by Google when a ProductTemplate is updated.}
#'  \item{description}{a string -  The description of the ProductTemplate. This attribute has maximum length of
#' 511 characters. This attribute is optional.}
#'  \item{nameMacro}{a string -  The name macro of the ProductTemplate. The name macro is used to generate
#' the Product name. This attribute is required and has maximum length of 1023
#' characters. The name macro can contain plain text and several placeholders
#' that will be replaced with values specified in the ProductTemplate when
#' generating product names. Allowed placeholders are: Each placeholder should
#' appear no more than once and all expanded features must have their
#' corresponding placeholders in the name macro. This attribute is required.}
#'  \item{status}{a ProductTemplateStatus - The status of the ProductTemplate. This attribute is read-only and is
#' assigned by Google. This can take one of the following values:
#'    \itemize{
#'      \item{ACTIVE - Product template is active, and all products it generates without status
#' overridden are available in product catalog.}
#'      \item{DRAFT - Not used.}
#'      \item{CANCELED - Product template is inactive, no product is generated.}
#'      \item{ARCHIVED - No unarchived proposal should reference this template and report on it. All
#' persisted products based on this product template are archived as well.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{productType}{a ProductType - The type of generated Product.  Note: if the type is ProductType OFFLINE,
#' then the following fields must be null or empty: roadblockingType,
#' lineItemType, frequencyCaps, productSegmentation and targeting.  This
#' attribute is required. This can take one of the following values:
#'    \itemize{
#'      \item{DFP - For line items that are booked and managed in DFP.}
#'      \item{OFFLINE - Offline charges indicate services you render for a client which are also
#' outside of the DFP system, such as consulting or creative services.}
#'      \item{NON_DFP - For campaigns that are booked and managed by a third party outside of DFP.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{creatorId}{a integer -  The User ID id of the user who created the ProductTemplate. This attribute
#' is read-only and is assigned by Google.}
#'  \item{rateType}{a RateType - The method used for billing the created ProposalLineItem. This attribute is
#' required. This can take one of the following values:
#'    \itemize{
#'      \item{CPM - The rate applies to cost per mille (CPM) revenue.}
#'      \item{CPC - The rate applies to cost per click (CPC) revenue.}
#'      \item{CPD - The rate applies to cost per day (CPD) revenue.}
#'      \item{CPU - The rate applies to cost per unit (CPU) revenue.}
#'      \item{FLAT_FEE - The rate applies to flat fee revenue.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{roadblockingType}{a RoadblockingType - The strategy for serving roadblocked creatives (i.e. instances where
#' multiple creatives must be served together on a single web page) for the
#' created ProposalLineItem. This attribute is required when productType is
#' ProductType DFP. This can take one of the following values:
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
#'  \item{creativePlaceholders}{a CreativePlaceholder -  Details about the creatives that are expected to serve for the created
#' ProposalLineItem. For a roadblockingType of RoadblockingType CREATIVE_SET,
#' all creative placeholders must have a master and at least one companion
#' size. This attribute is required when productType is ProductType DFP.}
#'  \item{lineItemType}{a LineItemType - Indicates the line item type for the created ProposalLineItem. This
#' attribute is required when productType is ProductType DFP. This can take one of the following values:
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
#'  \item{priority}{a integer -  Priority of ProposalLineItem. The priority is a value between 1 and 16. If
#' not specified, the default priority of the LineItemType will be assigned.
#' The following default, minimum and maximum priority values is allowed for
#' each line item type: Note: it's ignored when productType is ProductType
#' OFFLINE.}
#'  \item{frequencyCaps}{a FrequencyCap -  The set of frequency capping units for the created ProposalLineItem. Each
#' frequency cap in the list must have unique TimeUnit. This attribute is
#' optional.}
#'  \item{productSegmentation}{a ProductSegmentation -  The product segmentation. The combination from the segments and the
#' targeting will produce the targeting on the resulting ProposalLineItem. Any
#' type of segmentation cannot also be used for targeting. This attribute is
#' optional. Note: if you specify ProducSegmentation geoSegment, then
#' ProductTemplateTargeting geoTargeting must be null or empty, vice versa.
#' This also applies to other targeting and segmentation.}
#'  \item{builtInTargeting}{a Targeting -  Targeting to be included in the created ProposalLineItem. Any type targeted
#' cannot also be used for segmentation. This attribute is optional. Note: if
#' productType is ProductType DFP and productSegmentation is not specified,
#' this attribute is required.}
#'  \item{customizableAttributes}{a CustomizableAttributes -  Specifies what targeting or attributes for the created ProposalLineItem are
#' customizable. This attribute is optional. If not specified, then no
#' targeting or attributes are customizable.}
#'  \item{customFieldValues}{a BaseCustomFieldValue -  The values of the custom fields associated with this ProductTemplate. This
#' attribute is optional.}
#'  \item{environmentType}{a EnvironmentType - The environment that the created ProposalLineItem is targeting. The default
#' value is EnvironmentType BROWSER. If this value is EnvironmentType
#' VIDEO_PLAYER, then the ProposalLineItem can only target AdUnits that have
#' AdUnitSizes whose environmentType is also VIDEO_PLAYER. This can take one of the following values:
#'    \itemize{
#'      \item{BROWSER - A regular web browser.}
#'      \item{VIDEO_PLAYER - Video players (such as Flash applications).}
#'    }
#'   }
#'  \item{videoMaxDuration}{a integer -  The max duration of a video creative associated with this ProductTemplate in
#' milliseconds. This attribute is optional, defaults to 0, and only meaningful
#' if this is a video product template.}
#' }
#' 
#' \strong{ProductTemplateAction}
#' 
#' Represents the actions that can be performed on product templates. May take one of the actions listed below.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.ProductTemplateAction}{Google Documentation for ProductTemplateAction}
#' \describe{
#'  \item{ActivateProductTemplates}{The action used for activating product templates.}
#'  \item{ArchiveProductTemplates}{The action used for archiving product template.}
#'  \item{DeactivateProductTemplates}{The action used for deactivating product templates.}
#'  \item{UnarchiveProductTemplates}{The action used for unarchiving ProductTemplate objects.}
#' }
#' 
#' \strong{ProductTemplateActionError}
#' 
#' An error lists all error reasons associated with performing action on
#' ProductTemplate objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.ProductTemplateActionError}{Google Documentation for ProductTemplateActionError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a ProductTemplateActionError.Reason - This can take one of the following values:
#'    \itemize{
#'      \item{NOT_APPLICABLE - The operation is not applicable to the current status.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{ProductTemplateError}
#' 
#' A catch-all error that lists all generic errors associated with
#' ProductTemplate.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.ProductTemplateError}{Google Documentation for ProductTemplateError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a ProductTemplateError.Reason - This can take one of the following values:
#'    \itemize{
#'      \item{INVALID_FEATURE_EXPANDED_EXCLUSIVE - One feature affinity should be expanded or not-expanded exclusively.}
#'      \item{INVALID_EXPANDED_FEATURE_DEFAULT_NOT_TARGETED - Expanded feature should have false default targeting type.}
#'      \item{INVALID_EXPANDED_FEATURE_DEFAULT_LOCKED - Expanded feature should be default locked.}
#'      \item{INVALID_EXPANDED_FEATURE_VALUE_TARGETED - Expanded feature value should have true targeting type.}
#'      \item{INVALID_EXPANDED_FEATURE_VALUE_LOCKED - Expanded feature value should be default locked.}
#'      \item{INVALID_FEATURE_TYPE - The feature type is mismatch with feature value's type.}
#'      \item{INVALID_ROADBLOCKING_TYPE - The roadblocking type is invalid.}
#'      \item{INVALID_TARGETING - The targeting is invalid.}
#'      \item{INVALID_FREQUENCY_CAPS - The frequency cap is invalid.}
#'      \item{INVALID_TECHNOLOGY_INCLUDE_EXCLUDE - The technology criteria is included and excluded at same time.}
#'      \item{INVALID_EXPANDED_PRODUCT_COUNT}
#'      \item{INVALID_TARGET_PLATFORM - The target platform should always be WEB.}
#'      \item{INVALID_NON_TARGETING_FEATURE - The non-targeting feature cannot have default target type TRUE.}
#'      \item{INVALID_FEATURE_CARDINALITY_AT_LEAST_ONE - The feature's targeted value number breaks the cardinality request, it
#' should have at least one value.}
#'      \item{INVALID_FEATURE_CARDINALITY_AT_MOST_ONE - The feature's targeted value number breaks the cardinality request, it
#' should have at most one value.}
#'      \item{INVALID_FEATURE_CARDINALITY_EXACTLY_ONE - The feature's targeted value number breaks the cardinality request, it
#' should have exactly one value.}
#'      \item{INVALID_FEATURE_FOR_OFFLINE - The feature is invalid for offline product template.}
#'      \item{INVALID_RATE_TYPE_FOR_OFFLINE - The rate type is invalid for offline product template.}
#'      \item{INVALID_RATE_TYPE_FOR_DFP - The rate type should be in the valid set for corresponding line item type of
#' a dfp product template.}
#'      \item{INVALID_RATE_TYPE_FOR_NON_DFP - The rate type should be in the valid set for corresponding line item type of
#' a ProductType NON_DFP product template.}
#'      \item{INVALID_VALUES_FOR_CLICK_TRACKING_LINE_ITEM_TYPE - One or more values on the product template are not valid for a LineItemType
#' CLICK_TRACKING line item type.}
#'      \item{INVALID_SEGMENTATION_OR_TARGETING_FOR_CLICK_TRACKING_LINE_ITEM_TYPE - The segmentation or targeting on the product template is not valid for a
#' LineItemType CLICK_TRACKING line item type.}
#'      \item{INVALID_LINE_ITEM_PRIORITY - The line item priority feature is not match with line item type feature.}
#'      \item{INVALID_LINE_ITEM_TYPE - The line item type value is not supported.}
#'      \item{INVALID_ENVIRONMENT_TYPE - The environment type is not valid.}
#'      \item{DUPLICATED_PLACEHOLDER_IN_NAMEMACRO - Duplication of placeholder for feature type affinity exists in name macro.}
#'      \item{INVALID_EXPANDED_FEATURE_IN_NON_EXPANDABLE_AFFINITY - Expanded features are not allowed in non expandable feature affinity.}
#'      \item{INVALID_FEATURE_DEFAULT_TARGET_TYPE - The default target type of the feature is not supported.}
#'      \item{INVALID_FEATURE_VALUE_TARGET_TYPE - The target type of the value is invalid.}
#'      \item{INVALID_FEATURE_AND_VALUE_LOCK_EXCLUSIVE - The default locked of feature is different with locked of feature values.}
#'      \item{INVALID_CREATIVE_PLACEHOLDER - The creative placeholder should have at least a master size, or has one
#' master and multiple companion sizes.}
#'      \item{DUPLICATED_FEATURE - Duplicated features with the same feature type.}
#'      \item{DUPLICATED_CUSTOM_TARGETING_KEY - Duplicated custom criteria key.}
#'      \item{DUPLICATED_CUSTOM_TARGETING_VALUE - Duplicated custom criteria value.}
#'      \item{INVALID_CUSTOM_TARGETING_KEY_ID - The id of custom criteria key is invalid.}
#'      \item{INVALID_CUSTOM_TARGETING_VALUE_ID - The id of custom criteria value is invalid.}
#'      \item{MISSING_CUSTOM_TARGETING_VALUES - Missing custom targeting values.}
#'      \item{LOCATION_CANNOT_BE_TARGETED_IF_PARENT_IS_TARGETED - A child location can not be targeted if any one of its parent locations is
#' also targeted.}
#'      \item{LOCATION_CANNOT_BE_EXCLUDED_IF_PARENT_IS_EXCLUDED - A child location can not be excluded if any one of its parent locations is
#' also excluded.}
#'      \item{LOCATION_CANNOT_BE_EXCLUDED_DIRECTLY_WHEN_HAVE_TARGETED_LOCATION - An excluded location must have one targeted parent when targeted location is
#' not empty.}
#'      \item{CUSTOMIZABLE_CUSTOM_KEY_CANNOT_BE_SEGMENTED - Customizable key is used in custom targeting segment.}
#'      \item{CUSTOM_KEY_USED_IN_TARGETING_CANNOT_BE_SEGMENTED - Custom targeting key is already used in custom targeting segment.}
#'      \item{DUPLICATED_FEATURE_VALUE - Duplicated feature values.}
#'      \item{MISSING_EXPANDED_FEATURE_PLACEHOLDER_IN_NAMEMACRO - A placeholder for an expanded feature type affinity is missing in name
#' macro.}
#'      \item{MISSING_FEATURE_VALUE_OF_NAMEMACRO_PLACEHOLDER - The feature type affinity with placeholder been added is missing
#' corresponding value.}
#'      \item{MISSING_FEATURE_OF_NAMEMACRO_PLACEHOLDER - The feature type affinity with placeholder been added is not specified.}
#'      \item{MISSING_SUBTYPE_FOR_CUSTOM_TARGETING - The SubTypeId of custom criteria feature is not specified.}
#'      \item{COMPANION_NOT_ALLOWED - A placeholder contains companions but the roadblocking type is not
#' CREATIVE_SET or the product type is offline.}
#'      \item{MISSING_COMPANION - A placeholder does not contain companions but the roadblocking type is
#' CREATIVE_SET.}
#'      \item{DUPLICATED_MASTER_SIZE - A placeholder's master size is the same as another placeholder.}
#'      \item{CANNOT_MODIFY_READONLY_FEATURE - The feature is readonly.}
#'      \item{CANNOT_MODIFY_PRODUCT_TYPE - The product type can not be modified after creation.}
#'      \item{CANNOT_ADD_SEGMENTATION - Cannot add new segmentations after product template is saved.}
#'      \item{CANNOT_REMOVE_SEGMENTATION - Cannot remove segmentations after product template is saved.}
#'      \item{CANNOT_REMOVE_VALUE_FROM_SEGMENTATION - Cannot remove value from segmentation after product template is saved.}
#'      \item{CANNOT_ADD_FEATURE_VALUE_FOR_CUSTOM_TARGETING - Cannot add feature value for custom targeting.}
#'      \item{CANNOT_MODIFY_BUILTIN_TARGETING_FEATURE - Cannot modify a builtin targeting feature.}
#'      \item{CANNOT_UPDATE_ARCHIVED_PRODUCT_TEMPLATE - Cannot update an archived product template.}
#'      \item{INVALID_VIDEO_POSITION_VALUE_FOR_LINE_ITEM_TYPE - There are video position values that are invalid for the LineItemType.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{ProductTemplatePage}
#' 
#' Captures a page of ProductTemplate objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.ProductTemplatePage}{Google Documentation for ProductTemplatePage}
#' \describe{
#'  \item{totalResultSetSize}{a integer -  The size of the total result set to which this page belongs.}
#'  \item{startIndex}{a integer -  The absolute index in the total result set on which this page begins.}
#'  \item{results}{a ProductTemplate -  The collection of ProductTemplate contained within this page.}
#' }
#' 
#' \strong{PublisherQueryLanguageContextError}
#' 
#' An error that occurs while executing a PQL query contained in a Statement
#' object.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.PublisherQueryLanguageContextError}{Google Documentation for PublisherQueryLanguageContextError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.PublisherQueryLanguageSyntaxError}{Google Documentation for PublisherQueryLanguageSyntaxError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.QuotaError}{Google Documentation for QuotaError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.RangeError}{Google Documentation for RangeError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.RequiredCollectionError}{Google Documentation for RequiredCollectionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.RequiredError}{Google Documentation for RequiredError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.RequiredNumberError}{Google Documentation for RequiredNumberError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.ServerError}{Google Documentation for ServerError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.SetValue}{Google Documentation for SetValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{values}{a Value -  The values. They must all be the same type of Value and not contain
#' duplicates.}
#' }
#' 
#' \strong{Size}
#' 
#' Represents the dimensions of an AdUnit, LineItem or Creative.  For
#' interstitial size (out-of-page), native, ignored and fluid size, Size must
#' be 1x1.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.Size}{Google Documentation for Size}
#' \describe{
#'  \item{width}{a integer -  The width of the AdUnit, LineItem or Creative.}
#'  \item{height}{a integer -  The height of the AdUnit, LineItem or Creative.}
#'  \item{isAspectRatio}{a boolean -  True if this size represents an aspect ratio, false otherwise.}
#' }
#' 
#' \strong{SoapRequestHeader}
#' 
#' Represents the SOAP request header used by API requests.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.SoapRequestHeader}{Google Documentation for SoapRequestHeader}
#' \describe{
#'  \item{networkCode}{a string -  The network code to use in the context of a request.}
#'  \item{applicationName}{a string -  The name of client library application.}
#' }
#' 
#' \strong{SoapResponseHeader}
#' 
#' Represents the SOAP request header used by API responses.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.SoapResponseHeader}{Google Documentation for SoapResponseHeader}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.Statement}{Google Documentation for Statement}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.StatementError}{Google Documentation for StatementError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.String_ValueMapEntry}{Google Documentation for String_ValueMapEntry}
#' \describe{
#'  \item{key}{a string}
#'  \item{value}{a Value}
#' }
#' 
#' \strong{StringLengthError}
#' 
#' Errors for Strings which do not meet given length constraints.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.StringLengthError}{Google Documentation for StringLengthError}
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
#' \strong{Targeting}
#' 
#' Contains targeting criteria for LineItem objects. See LineItem targeting.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.Targeting}{Google Documentation for Targeting}
#' \describe{
#'  \item{geoTargeting}{a GeoTargeting -  Specifies what geographical locations are targeted by the LineItem. This
#' attribute is optional.}
#'  \item{inventoryTargeting}{a InventoryTargeting -  Specifies what inventory is targeted by the LineItem. This attribute is
#' required. The line item must target at least one ad unit or placement.}
#'  \item{dayPartTargeting}{a DayPartTargeting -  Specifies the days of the week and times that are targeted by the LineItem.
#' This attribute is optional.}
#'  \item{technologyTargeting}{a TechnologyTargeting -  Specifies the browsing technologies that are targeted by the LineItem. This
#' attribute is optional.}
#'  \item{customTargeting}{a CustomCriteriaSet -  Specifies the collection of custom criteria that is targeted by the
#' LineItem.  Once the LineItem is updated or modified with custom targeting,
#' the server may return a normalized, but equivalent representation of the
#' custom targeting expression.  customTargeting will have up to three levels
#' of expressions including itself.  The top level CustomCriteriaSet i.e. the
#' customTargeting object can only contain a CustomCriteriaSet.LogicalOperator
#' OR of all its children.  The second level of CustomCriteriaSet objects can
#' only contain CustomCriteriaSet.LogicalOperator AND of all their children. If
#' a CustomCriteria is placed on this level, the server will wrap it in a
#' CustomCriteriaSet.  The third level can only comprise of CustomCriteria
#' objects.  The resulting custom targeting tree would be of the form:}
#'  \item{userDomainTargeting}{a UserDomainTargeting -  Specifies the domains or subdomains that are targeted or excluded by the
#' LineItem. Users visiting from an IP address associated with those domains
#' will be targeted or excluded. This attribute is optional.}
#'  \item{contentTargeting}{a ContentTargeting -  Specifies the video categories and individual videos targeted by the
#' LineItem.}
#'  \item{videoPositionTargeting}{a VideoPositionTargeting -  Specifies targeting against video position types.}
#' }
#' 
#' \strong{Technology}
#' 
#' Represents a technology entity that can be targeted.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.Technology}{Google Documentation for Technology}
#' \describe{
#'  \item{id}{a integer -  The unique ID of the Technology. This value is required for all forms of
#' TechnologyTargeting.}
#'  \item{name}{a string -  The name of the technology being targeting. This value is read-only and is
#' assigned by Google.}
#' }
#' 
#' \strong{TechnologyTargeting}
#' 
#' Provides LineItem objects the ability to target or exclude technologies.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.TechnologyTargeting}{Google Documentation for TechnologyTargeting}
#' \describe{
#'  \item{bandwidthGroupTargeting}{a BandwidthGroupTargeting -  The bandwidth groups being targeted by the LineItem.}
#'  \item{browserTargeting}{a BrowserTargeting -  The browsers being targeted by the LineItem.}
#'  \item{browserLanguageTargeting}{a BrowserLanguageTargeting -  The languages of browsers being targeted by the LineItem.}
#'  \item{deviceCapabilityTargeting}{a DeviceCapabilityTargeting -  The device capabilities being targeted by the LineItem.}
#'  \item{deviceCategoryTargeting}{a DeviceCategoryTargeting -  The device categories being targeted by the LineItem.}
#'  \item{deviceManufacturerTargeting}{a DeviceManufacturerTargeting -  The device manufacturers being targeted by the LineItem.}
#'  \item{mobileCarrierTargeting}{a MobileCarrierTargeting -  The mobile carriers being targeted by the LineItem.}
#'  \item{mobileDeviceTargeting}{a MobileDeviceTargeting -  The mobile devices being targeted by the LineItem.}
#'  \item{mobileDeviceSubmodelTargeting}{a MobileDeviceSubmodelTargeting -  The mobile device submodels being targeted by the LineItem.}
#'  \item{operatingSystemTargeting}{a OperatingSystemTargeting -  The operating systems being targeted by the LineItem.}
#'  \item{operatingSystemVersionTargeting}{a OperatingSystemVersionTargeting -  The operating system versions being targeted by the LineItem.}
#' }
#' 
#' \strong{TechnologyTargetingError}
#' 
#' Technology targeting validation errors.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.TechnologyTargetingError}{Google Documentation for TechnologyTargetingError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.TextValue}{Google Documentation for TextValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a string -  The string value.}
#' }
#' 
#' \strong{TimeOfDay}
#' 
#' Represents a specific time in a day.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.TimeOfDay}{Google Documentation for TimeOfDay}
#' \describe{
#'  \item{hour}{a integer -  Hour in 24 hour time (0..24). This field must be between 0 and 24,
#' inclusive. This field is required.}
#'  \item{minute}{a MinuteOfHour - Minutes in an hour. Currently, only 0, 15, 30, and 45 are supported. This
#' field is required. This can take one of the following values:
#'    \itemize{
#'      \item{ZERO - Zero minutes past hour.}
#'      \item{FIFTEEN - Fifteen minutes past hour.}
#'      \item{THIRTY - Thirty minutes past hour.}
#'      \item{FORTY_FIVE - Forty-five minutes past hour.}
#'    }
#'   }
#' }
#' 
#' \strong{TypeError}
#' 
#' An error for a field which is an invalid type.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.TypeError}{Google Documentation for TypeError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#' }
#' 
#' \strong{UnarchiveProductTemplates}
#' 
#' The action used for unarchiving ProductTemplate objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.UnarchiveProductTemplates}{Google Documentation for UnarchiveProductTemplates}
#' \describe{
#'  \item{extends ProductTemplateAction}{see documentation for ProductTemplateAction}
#' }
#' 
#' \strong{UniqueError}
#' 
#' An error for a field which must satisfy a uniqueness constraint
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.UniqueError}{Google Documentation for UniqueError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#' }
#' 
#' \strong{UpdateResult}
#' 
#' Represents the result of performing an action on objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.UpdateResult}{Google Documentation for UpdateResult}
#' \describe{
#'  \item{numChanges}{a integer -  The number of objects that were changed as a result of performing the
#' action.}
#' }
#' 
#' \strong{UserDomainTargeting}
#' 
#' Provides line items the ability to target or exclude users visiting their
#' websites from a list of domains or subdomains.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.UserDomainTargeting}{Google Documentation for UserDomainTargeting}
#' \describe{
#'  \item{domains}{a string -  The domains or subdomains that are being targeted or excluded by the
#' LineItem. This attribute is required and the maximum length of each domain
#' is 67 characters.}
#'  \item{targeted}{a boolean -  Indicates whether domains should be targeted or excluded. This attribute is
#' optional and defaults to true.}
#' }
#' 
#' \strong{UserDomainTargetingError}
#' 
#' Lists all errors related to user domain targeting for a line item.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.UserDomainTargetingError}{Google Documentation for UserDomainTargetingError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.Value}{Google Documentation for Value}
#' \describe{
#' }
#' 
#' \strong{VideoPosition}
#' 
#' Represents a targetable position within a video. A video ad can be targeted
#' to a position (pre-roll, all mid-rolls, or post-roll), or to a specific
#' mid-roll index.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.VideoPosition}{Google Documentation for VideoPosition}
#' \describe{
#'  \item{positionType}{a VideoPosition.Type - The type of video position (pre-roll, mid-roll, or post-roll). This can take one of the following values:
#'    \itemize{
#'      \item{PREROLL - The position defined as showing before the video starts playing.}
#'      \item{MIDROLL - The position defined as showing within the middle of the playing video.}
#'      \item{POSTROLL - The position defined as showing after the video is completed.}
#'    }
#'   }
#'  \item{midrollIndex}{a integer -  The index of the mid-roll to target. Only valid if the positionType is
#' VideoPositionType MIDROLL, otherwise this field will be ignored.}
#' }
#' 
#' \strong{VideoPositionTarget}
#' 
#' Represents the options for targetable positions within a video.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.VideoPositionTarget}{Google Documentation for VideoPositionTarget}
#' \describe{
#'  \item{videoPosition}{a VideoPosition -  The video position to target. This attribute is required.}
#'  \item{videoBumperType}{a VideoBumperType - The video bumper type to target. To target a video position or a pod
#' position, this value must be null. To target a bumper position this value
#' must be populated and the line item must have a bumper type. This can take one of the following values:
#'    \itemize{
#'      \item{BEFORE - Represents the bumper position before the ad pod.}
#'      \item{AFTER - Represents the bumper position after the ad pod.}
#'    }
#'   }
#'  \item{videoPositionWithinPod}{a VideoPositionWithinPod -  The video position within a pod to target. To target a video position or a
#' bumper position, this value must be null. To target a position within a pod
#' this value must be populated.}
#' }
#' 
#' \strong{VideoPositionTargeting}
#' 
#' Represents positions within and around a video where ads can be targeted to.
#' Example positions could be pre-roll (before the video plays), post-roll
#' (after a video has completed playback) and mid-roll (during video playback).
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.VideoPositionTargeting}{Google Documentation for VideoPositionTargeting}
#' \describe{
#'  \item{targetedPositions}{a VideoPositionTarget -  The VideoTargetingPosition objects being targeted by the video LineItem.}
#' }
#' 
#' \strong{VideoPositionTargetingError}
#' 
#' Lists all errors related to VideoPositionTargeting.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.VideoPositionTargetingError}{Google Documentation for VideoPositionTargetingError}
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
#' \strong{VideoPositionWithinPod}
#' 
#' Represents a targetable position within a pod within a video stream. A video
#' ad can be targeted to any position in the pod (first, second, third ...
#' last). If there is only 1 ad in a pod, either first or last will target that
#' position.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProductTemplateService.VideoPositionWithinPod}{Google Documentation for VideoPositionWithinPod}
#' \describe{
#'  \item{index}{a integer -  The specific index of the pod. The index is defined as: 1 = first 2 = second
#' 3 = third .... 100 = last 100 will always be the last position. For example,
#' for a pod with 5 positions, 100 would target position 5. Multiple targets
#' against the index 100 can exist.<br> Positions over 100 are not supported.}
#' }
#' 
#' 
#' 
#' @usage dfp_ProductTemplateService_object_factory(obj_type, obj_data)
#' 
#' @param obj_type a string from one of the object types described below
#' @param obj_data a \code{list} of \code{lists} or a \code{data.frame} with the required components to create
#' the obj_type specified. All input names must match the expected attributes for the object.
#' If submitting a list of attributes to create 1 object make sure to nest it inside top-level list, so that
#' it is a list of length 1 with 1 list of attributes to create the object.
#' @return a string of formatted XML that can be inserted into a SOAP request body to the API
#' @export
dfp_ProductTemplateService_object_factory <- function(obj_type, obj_data){

  if(is.data.frame(obj_data)){
    sampled_names <- names(obj_data)
  } else if(is.list(obj_data)){
    sampled_names <- names(obj_data[[1]])
  } else {
    stop("obj_data must be a list or data.frame")
  }

  if(obj_type=='AdUnitTargeting'){
    stopifnot(all(sampled_names %in% c('adUnitId', 'includeDescendants')))
  }

  if(obj_type=='AppliedLabel'){
    stopifnot(all(sampled_names %in% c('labelId', 'isNegated')))
  }

  if(obj_type=='AudienceSegmentCriteria'){
    stopifnot(all(sampled_names %in% c('operator', 'audienceSegmentIds')))
  }

  if(obj_type=='BandwidthGroup'){
    stopifnot(all(sampled_names %in% c('id', 'name')))
  }

  if(obj_type=='BandwidthGroupTargeting'){
    stopifnot(all(sampled_names %in% c('isTargeted', 'bandwidthGroups')))
  }

  if(obj_type=='BaseCustomFieldValue'){
    stopifnot(all(sampled_names %in% c('customFieldId')))
  }

  if(obj_type=='Browser'){
    stopifnot(all(sampled_names %in% c('id', 'name', 'majorVersion', 'minorVersion')))
  }

  if(obj_type=='BrowserLanguage'){
    stopifnot(all(sampled_names %in% c('id', 'name')))
  }

  if(obj_type=='BrowserLanguageTargeting'){
    stopifnot(all(sampled_names %in% c('isTargeted', 'browserLanguages')))
  }

  if(obj_type=='BrowserTargeting'){
    stopifnot(all(sampled_names %in% c('isTargeted', 'browsers')))
  }

  if(obj_type=='ContentMetadataKeyHierarchyTargeting'){
    stopifnot(all(sampled_names %in% c('customTargetingValueIds')))
  }

  if(obj_type=='ContentTargeting'){
    stopifnot(all(sampled_names %in% c('targetedContentIds', 'excludedContentIds', 'targetedVideoCategoryIds', 'excludedVideoCategoryIds', 'targetedVideoContentBundleIds', 'excludedVideoContentBundleIds', 'targetedContentMetadata', 'excludedContentMetadata')))
  }

  if(obj_type=='CreativePlaceholder'){
    stopifnot(all(sampled_names %in% c('size', 'creativeTemplateId', 'companions', 'appliedLabels', 'effectiveAppliedLabels', 'expectedCreativeCount', 'creativeSizeType', 'targetingName')))
  }

  if(obj_type=='CustomCriteria'){
    stopifnot(all(sampled_names %in% c('keyId', 'valueIds', 'operator')))
  }

  if(obj_type=='CustomCriteriaSet'){
    stopifnot(all(sampled_names %in% c('logicalOperator', 'children')))
  }

  if(obj_type=='CustomFieldValue'){
    stopifnot(all(sampled_names %in% c('customFieldId', 'value')))
  }

  if(obj_type=='CustomizableAttributes'){
    stopifnot(all(sampled_names %in% c('allowGeoTargetingCustomization', 'allowAdUnitTargetingCustomization', 'allowPlacementTargetingCustomization', 'allowUserDomainTargetingCustomization', 'allowBandwidthGroupTargetingCustomization', 'allowBrowserTargetingCustomization', 'allowBrowserLanguageTargetingCustomization', 'allowOperatingSystemTargetingCustomization', 'allowDeviceCapabilityTargetingCustomization', 'allowDeviceCategoryTargetingCustomization', 'allowMobileCarrierTargetingCustomization', 'allowMobileDeviceAndManufacturerTargetingCustomization', 'allowAudienceSegmentTargetingCustomization', 'isAllCustomTargetingKeysCustomizable', 'customizableCustomTargetingKeyIds', 'allowFrequencyCapsCustomization')))
  }

  if(obj_type=='DayPart'){
    stopifnot(all(sampled_names %in% c('dayOfWeek', 'startTime', 'endTime')))
  }

  if(obj_type=='DayPartTargeting'){
    stopifnot(all(sampled_names %in% c('dayParts', 'timeZone')))
  }

  if(obj_type=='DeviceCapability'){
    stopifnot(all(sampled_names %in% c('id', 'name')))
  }

  if(obj_type=='DeviceCapabilityTargeting'){
    stopifnot(all(sampled_names %in% c('targetedDeviceCapabilities', 'excludedDeviceCapabilities')))
  }

  if(obj_type=='DeviceCategory'){
    stopifnot(all(sampled_names %in% c('id', 'name')))
  }

  if(obj_type=='DeviceCategoryTargeting'){
    stopifnot(all(sampled_names %in% c('targetedDeviceCategories', 'excludedDeviceCategories')))
  }

  if(obj_type=='DeviceManufacturer'){
    stopifnot(all(sampled_names %in% c('id', 'name')))
  }

  if(obj_type=='DeviceManufacturerTargeting'){
    stopifnot(all(sampled_names %in% c('isTargeted', 'deviceManufacturers')))
  }

  if(obj_type=='DropDownCustomFieldValue'){
    stopifnot(all(sampled_names %in% c('customFieldId', 'customFieldOptionId')))
  }

  if(obj_type=='FrequencyCap'){
    stopifnot(all(sampled_names %in% c('maxImpressions', 'numTimeUnits', 'timeUnit')))
  }

  if(obj_type=='GeoTargeting'){
    stopifnot(all(sampled_names %in% c('targetedLocations', 'excludedLocations')))
  }

  if(obj_type=='InventoryTargeting'){
    stopifnot(all(sampled_names %in% c('targetedAdUnits', 'excludedAdUnits', 'targetedPlacementIds')))
  }

  if(obj_type=='Location'){
    stopifnot(all(sampled_names %in% c('id', 'type', 'canonicalParentId', 'displayName')))
  }

  if(obj_type=='MobileCarrier'){
    stopifnot(all(sampled_names %in% c('id', 'name')))
  }

  if(obj_type=='MobileCarrierTargeting'){
    stopifnot(all(sampled_names %in% c('isTargeted', 'mobileCarriers')))
  }

  if(obj_type=='MobileDevice'){
    stopifnot(all(sampled_names %in% c('id', 'name', 'manufacturerCriterionId')))
  }

  if(obj_type=='MobileDeviceSubmodel'){
    stopifnot(all(sampled_names %in% c('id', 'name', 'mobileDeviceCriterionId', 'deviceManufacturerCriterionId')))
  }

  if(obj_type=='MobileDeviceSubmodelTargeting'){
    stopifnot(all(sampled_names %in% c('targetedMobileDeviceSubmodels', 'excludedMobileDeviceSubmodels')))
  }

  if(obj_type=='MobileDeviceTargeting'){
    stopifnot(all(sampled_names %in% c('targetedMobileDevices', 'excludedMobileDevices')))
  }

  if(obj_type=='OperatingSystem'){
    stopifnot(all(sampled_names %in% c('id', 'name')))
  }

  if(obj_type=='OperatingSystemTargeting'){
    stopifnot(all(sampled_names %in% c('isTargeted', 'operatingSystems')))
  }

  if(obj_type=='OperatingSystemVersion'){
    stopifnot(all(sampled_names %in% c('id', 'name', 'majorVersion', 'minorVersion', 'microVersion')))
  }

  if(obj_type=='OperatingSystemVersionTargeting'){
    stopifnot(all(sampled_names %in% c('targetedOperatingSystemVersions', 'excludedOperatingSystemVersions')))
  }

  if(obj_type=='PlacementTargeting'){
    stopifnot(all(sampled_names %in% c('targetedPlacementIds')))
  }

  if(obj_type=='ProductSegmentation'){
    stopifnot(all(sampled_names %in% c('geoSegment', 'adUnitSegments', 'placementSegment', 'customTargetingSegment', 'userDomainSegment', 'bandwidthSegment', 'browserSegment', 'browserLanguageSegment', 'operatingSystemSegment', 'mobileCarrierSegment', 'deviceCapabilitySegment', 'deviceCategorySegment', 'deviceManufacturerSegment', 'mobileDeviceSegment', 'mobileDeviceSubmodelSegment', 'videoPositionSegment')))
  }

  if(obj_type=='ProductTemplate'){
    stopifnot(all(sampled_names %in% c('id', 'name', 'creationDateTime', 'lastModifiedDateTime', 'description', 'nameMacro', 'status', 'productType', 'creatorId', 'rateType', 'roadblockingType', 'creativePlaceholders', 'lineItemType', 'priority', 'frequencyCaps', 'productSegmentation', 'builtInTargeting', 'customizableAttributes', 'customFieldValues', 'environmentType', 'videoMaxDuration')))
  }

  if(obj_type=='Size'){
    stopifnot(all(sampled_names %in% c('width', 'height', 'isAspectRatio')))
  }

  if(obj_type=='Targeting'){
    stopifnot(all(sampled_names %in% c('geoTargeting', 'inventoryTargeting', 'dayPartTargeting', 'technologyTargeting', 'customTargeting', 'userDomainTargeting', 'contentTargeting', 'videoPositionTargeting')))
  }

  if(obj_type=='Technology'){
    stopifnot(all(sampled_names %in% c('id', 'name')))
  }

  if(obj_type=='TechnologyTargeting'){
    stopifnot(all(sampled_names %in% c('bandwidthGroupTargeting', 'browserTargeting', 'browserLanguageTargeting', 'deviceCapabilityTargeting', 'deviceCategoryTargeting', 'deviceManufacturerTargeting', 'mobileCarrierTargeting', 'mobileDeviceTargeting', 'mobileDeviceSubmodelTargeting', 'operatingSystemTargeting', 'operatingSystemVersionTargeting')))
  }

  if(obj_type=='TimeOfDay'){
    stopifnot(all(sampled_names %in% c('hour', 'minute')))
  }

  if(obj_type=='UserDomainTargeting'){
    stopifnot(all(sampled_names %in% c('domains', 'targeted')))
  }

  if(obj_type=='VideoPosition'){
    stopifnot(all(sampled_names %in% c('positionType', 'midrollIndex')))
  }

  if(obj_type=='VideoPositionTarget'){
    stopifnot(all(sampled_names %in% c('videoPosition', 'videoBumperType', 'videoPositionWithinPod')))
  }

  if(obj_type=='VideoPositionTargeting'){
    stopifnot(all(sampled_names %in% c('targetedPositions')))
  }

  if(obj_type=='VideoPositionWithinPod'){
    stopifnot(all(sampled_names %in% c('index')))
  }

}
#' 
#' createProductTemplates
#' 
#' Creates new ProductTemplate objects.
#' 
#' @usage dfp_createProductTemplates(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a createProductTemplatesResponse
#' @export
dfp_createProductTemplates <- function(request_data){

  request_body <- make_request_body(service='ProductTemplateService', root_name='createProductTemplates', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['createProductTemplatesResponse']])$rval
  response <- if(is.null(response)) NULL else xmlToList(response)
  return(response)
}
#' 
#' getProductTemplatesByStatement
#' 
#' Gets a ProductTemplatePage of ProductTemplate objects that satisfy the filtering criteria specified by given Statement query. The following fields are supported for filtering:  filtering criteria over productTemplates 
#' \itemize{
#'   \item{id}
#'   \item{name}
#'   \item{nameMacro}
#'   \item{description}
#'   \item{status}
#'   \item{lastModifiedDateTime}
#'   \item{lineItemType}
#'   \item{productType}
#'   \item{rateType}
#' }
#' 
#' @usage dfp_getProductTemplatesByStatement(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a getProductTemplatesByStatementResponse
#' @export
dfp_getProductTemplatesByStatement <- function(request_data){

  request_body <- make_request_body(service='ProductTemplateService', root_name='getProductTemplatesByStatement', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getProductTemplatesByStatementResponse']])$rval
  response <- if(is.null(response)) NULL else xmlToList(response)
  return(response)
}
#' 
#' performProductTemplateAction
#' 
#' Performs action on ProductTemplate objects that satisfy the given Statement query. a set of product templates
#' 
#' @usage dfp_performProductTemplateAction()
#' @return a \code{list} containing all the elements of a performProductTemplateActionResponse
#' @export
dfp_performProductTemplateAction <- function(){

  request_body <- make_request_body(service='ProductTemplateService', root_name='performProductTemplateAction', data=NULL)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['performProductTemplateActionResponse']])$rval
  response <- if(is.null(response)) NULL else xmlToList(response)
  return(response)
}
#' 
#' updateProductTemplates
#' 
#' Updates the specified ProductTemplate objects.
#' 
#' @usage dfp_updateProductTemplates(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a updateProductTemplatesResponse
#' @export
dfp_updateProductTemplates <- function(request_data){

  request_body <- make_request_body(service='ProductTemplateService', root_name='updateProductTemplates', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['updateProductTemplatesResponse']])$rval
  response <- if(is.null(response)) NULL else xmlToList(response)
  return(response)
}
#' 
