#' ProposalLineItemService
#' 
#' Provides methods for creating, updating and retrieving ProposalLineItem
#' objects.
#' To use this service, you need to have the new sales management
#' solution enabled on your network. If you do not see a "Sales" tab in <a
#' href="https://www.google.com/dfp">DoubleClick for Publishers (DFP)</a>, you
#' will not be able to use this service.
#' 
#' ProposalLineItemService Object Factory
#' 
#' A function to create a variety of objects that are part of the ProposalLineItemService
#' Note: not all objects here are inputs to the functions of this service so 
#' please consult each function for the required inputs
#' 
#' Below is a list of objects and their required components to be created with this function:
#' 
#' \strong{ActualizeProposalLineItems}
#' 
#' The action used for actualizing ProposalLineItem objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.ActualizeProposalLineItems}{Google Documentation for ActualizeProposalLineItems}
#' \describe{
#'  \item{extends ProposalLineItemAction}{see documentation for ProposalLineItemAction}
#' }
#' 
#' \strong{AdUnitPremiumFeature}
#' 
#' A premium feature applied to ad unit targeting.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.AdUnitPremiumFeature}{Google Documentation for AdUnitPremiumFeature}
#' \describe{
#'  \item{extends PremiumFeature}{see documentation for PremiumFeature}
#' }
#' 
#' \strong{AdUnitTargeting}
#' 
#' Represents targeted or excluded ad units.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.AdUnitTargeting}{Google Documentation for AdUnitTargeting}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.ApiError}{Google Documentation for ApiError}
#' \describe{
#'  \item{fieldPath}{a string -  The OGNL field path to identify cause of error.}
#'  \item{trigger}{a string -  The data that caused the error.}
#'  \item{errorString}{a string -  A simple string representation of the error and reason.}
#' }
#' 
#' \strong{ApiException}
#' 
#' Exception class for holding a list of service errors.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.ApiException}{Google Documentation for ApiException}
#' \describe{
#'  \item{message}{a string (inherited from ApplicationException) -  Error message.}
#'  \item{errors}{a ApiError -  List of errors.}
#' }
#' 
#' \strong{ApiVersionError}
#' 
#' Errors related to the usage of API versions.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.ApiVersionError}{Google Documentation for ApiVersionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.ApplicationException}{Google Documentation for ApplicationException}
#' \describe{
#'  \item{message}{a string -  Error message.}
#' }
#' 
#' \strong{AppliedLabel}
#' 
#' Represents a Label that can be applied to an entity. To negate an inherited
#' label, create an AppliedLabel with labelId as the inherited label's ID and
#' isNegated set to true.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.AppliedLabel}{Google Documentation for AppliedLabel}
#' \describe{
#'  \item{labelId}{a integer -  The ID of a created Label.}
#'  \item{isNegated}{a boolean -  isNegated should be set to true to negate the effects of labelId.}
#' }
#' 
#' \strong{ArchiveProposalLineItems}
#' 
#' The action used for archiving ProposalLineItem objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.ArchiveProposalLineItems}{Google Documentation for ArchiveProposalLineItems}
#' \describe{
#'  \item{extends ProposalLineItemAction}{see documentation for ProposalLineItemAction}
#' }
#' 
#' \strong{AudienceSegmentCriteria}
#' 
#' An AudienceSegmentCriteria object is used to target AudienceSegment objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.AudienceSegmentCriteria}{Google Documentation for AudienceSegmentCriteria}
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
#' \strong{AudienceSegmentPremiumFeature}
#' 
#' A premium feature applied to audience segment targeting.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.AudienceSegmentPremiumFeature}{Google Documentation for AudienceSegmentPremiumFeature}
#' \describe{
#'  \item{extends PremiumFeature}{see documentation for PremiumFeature}
#'  \item{audienceSegmentId}{a integer -  The ID of the AudienceSegment id. This attribute is required and cannot be
#' changed after creation.}
#' }
#' 
#' \strong{AuthenticationError}
#' 
#' An error for an exception that occurred when authenticating.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.AuthenticationError}{Google Documentation for AuthenticationError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.AvailableBillingError}{Google Documentation for AvailableBillingError}
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
#' \strong{BandwidthGroup}
#' 
#' Represents a group of bandwidths that are logically organized by some well
#' known generic names such as 'Cable' or 'DSL'.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.BandwidthGroup}{Google Documentation for BandwidthGroup}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.BandwidthGroupTargeting}{Google Documentation for BandwidthGroupTargeting}
#' \describe{
#'  \item{isTargeted}{a boolean -  Indicates whether bandwidth groups should be targeted or excluded. This
#' attribute is optional and defaults to true.}
#'  \item{bandwidthGroups}{a Technology -  The bandwidth groups that are being targeted or excluded by the LineItem.}
#' }
#' 
#' \strong{BandwidthPremiumFeature}
#' 
#' A premium feature applied to bandwidth targeting.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.BandwidthPremiumFeature}{Google Documentation for BandwidthPremiumFeature}
#' \describe{
#'  \item{extends PremiumFeature}{see documentation for PremiumFeature}
#' }
#' 
#' \strong{BaseCustomFieldValue}
#' 
#' The value of a CustomField for a particular entity.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.BaseCustomFieldValue}{Google Documentation for BaseCustomFieldValue}
#' \describe{
#'  \item{customFieldId}{a integer -  Id of the CustomField to which this value belongs. This attribute is
#' required.}
#' }
#' 
#' \strong{BillingError}
#' 
#' Lists all errors associated with the billing settings of a proposal or
#' proposal line item.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.BillingError}{Google Documentation for BillingError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.BooleanValue}{Google Documentation for BooleanValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a boolean -  The boolean value.}
#' }
#' 
#' \strong{Browser}
#' 
#' Represents an internet browser.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.Browser}{Google Documentation for Browser}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.BrowserLanguage}{Google Documentation for BrowserLanguage}
#' \describe{
#'  \item{id}{a integer (inherited from Technology) -  The unique ID of the Technology. This value is required for all forms of
#' TechnologyTargeting.}
#'  \item{name}{a string (inherited from Technology) -  The name of the technology being targeting. This value is read-only and is
#' assigned by Google.}
#' }
#' 
#' \strong{BrowserLanguagePremiumFeature}
#' 
#' A premium feature applied to browser language targeting.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.BrowserLanguagePremiumFeature}{Google Documentation for BrowserLanguagePremiumFeature}
#' \describe{
#'  \item{extends PremiumFeature}{see documentation for PremiumFeature}
#' }
#' 
#' \strong{BrowserLanguageTargeting}
#' 
#' Represents browser languages that are being targeted or excluded by the
#' LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.BrowserLanguageTargeting}{Google Documentation for BrowserLanguageTargeting}
#' \describe{
#'  \item{isTargeted}{a boolean -  Indicates whether browsers languages should be targeted or excluded. This
#' attribute is optional and defaults to true.}
#'  \item{browserLanguages}{a Technology -  Browser languages that are being targeted or excluded by the LineItem.}
#' }
#' 
#' \strong{BrowserPremiumFeature}
#' 
#' A premium feature applied to browser targeting.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.BrowserPremiumFeature}{Google Documentation for BrowserPremiumFeature}
#' \describe{
#'  \item{extends PremiumFeature}{see documentation for PremiumFeature}
#' }
#' 
#' \strong{BrowserTargeting}
#' 
#' Represents browsers that are being targeted or excluded by the LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.BrowserTargeting}{Google Documentation for BrowserTargeting}
#' \describe{
#'  \item{isTargeted}{a boolean -  Indicates whether browsers should be targeted or excluded. This attribute is
#' optional and defaults to true.}
#'  \item{browsers}{a Technology -  Browsers that are being targeted or excluded by the LineItem.}
#' }
#' 
#' \strong{CollectionSizeError}
#' 
#' Error for the size of the collection being too large
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.CollectionSizeError}{Google Documentation for CollectionSizeError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.CommonError}{Google Documentation for CommonError}
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
#' \strong{ContentBundlePremiumFeature}
#' 
#' A premium feature applied to content bundle targeting.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.ContentBundlePremiumFeature}{Google Documentation for ContentBundlePremiumFeature}
#' \describe{
#'  \item{extends PremiumFeature}{see documentation for PremiumFeature}
#' }
#' 
#' \strong{ContentMetadataKeyHierarchyTargeting}
#' 
#' Represents one or more CustomTargetingValue custom targeting values from
#' different CustomTargetingKey custom targeting keys ANDed together.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.ContentMetadataKeyHierarchyTargeting}{Google Documentation for ContentMetadataKeyHierarchyTargeting}
#' \describe{
#'  \item{customTargetingValueIds}{a integer -  The list of IDs of the targeted CustomTargetingValue objects that are ANDed
#' together. Targeting values do not need to be in the order of the hierarchy
#' levels. For example, if the hierarchy is "show > season > genre" the values
#' could be "season=3, show=30rock, genre=comedy."}
#' }
#' 
#' \strong{ContentTargeting}
#' 
#' Used to target LineItems to specific videos on a publisher's site.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.ContentTargeting}{Google Documentation for ContentTargeting}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.CreativePlaceholder}{Google Documentation for CreativePlaceholder}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.CustomCriteria}{Google Documentation for CustomCriteria}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.CustomCriteriaLeaf}{Google Documentation for CustomCriteriaLeaf}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.CustomCriteriaNode}{Google Documentation for CustomCriteriaNode}
#' \describe{
#' }
#' 
#' \strong{CustomCriteriaSet}
#' 
#' A CustomCriteriaSet comprises of a set of CustomCriteriaNode objects
#' combined by the CustomCriteriaSet.LogicalOperator logicalOperator. The
#' custom criteria targeting tree is subject to the rules defined on Targeting
#' customTargeting.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.CustomCriteriaSet}{Google Documentation for CustomCriteriaSet}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.CustomFieldValue}{Google Documentation for CustomFieldValue}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.CustomFieldValueError}{Google Documentation for CustomFieldValueError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.CustomizableAttributes}{Google Documentation for CustomizableAttributes}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.CustomTargetingError}{Google Documentation for CustomTargetingError}
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
#' \strong{CustomTargetingPremiumFeature}
#' 
#' A premium feature applied to custom criteria targeting.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.CustomTargetingPremiumFeature}{Google Documentation for CustomTargetingPremiumFeature}
#' \describe{
#'  \item{extends PremiumFeature}{see documentation for PremiumFeature}
#'  \item{customTargetingKeyId}{a integer -  The ID of the CustomTargetingKey. This attribute is required and cannot be
#' changed after creation.}
#'  \item{customTargetingValueId}{a integer -  The ID of the CustomTargetingValue. null if all custom targeting values of
#' the customTargetingKeyId should be matched. This attribute cannot be changed
#' after creation.}
#' }
#' 
#' \strong{Date}
#' 
#' Represents a date.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.Date}{Google Documentation for Date}
#' \describe{
#'  \item{year}{a integer -  Year (e.g., 2009)}
#'  \item{month}{a integer -  Month (1..12)}
#'  \item{day}{a integer -  Day (1..31)}
#' }
#' 
#' \strong{DateTime}
#' 
#' Represents a date combined with the time of day.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.DateTime}{Google Documentation for DateTime}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.DateTimeValue}{Google Documentation for DateTimeValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a DateTime -  The DateTime value.}
#' }
#' 
#' \strong{DateValue}
#' 
#' Contains a date value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.DateValue}{Google Documentation for DateValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a Date -  The Date value.}
#' }
#' 
#' \strong{DayPart}
#' 
#' DayPart represents a time-period within a day of the week which is targeted
#' by a LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.DayPart}{Google Documentation for DayPart}
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
#' \strong{DaypartPremiumFeature}
#' 
#' A premium feature applied to daypart targeting.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.DaypartPremiumFeature}{Google Documentation for DaypartPremiumFeature}
#' \describe{
#'  \item{extends PremiumFeature}{see documentation for PremiumFeature}
#' }
#' 
#' \strong{DayPartTargeting}
#' 
#' Modify the delivery times of line items for particular days of the week. By
#' default, line items are served at all days and times.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.DayPartTargeting}{Google Documentation for DayPartTargeting}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.DayPartTargetingError}{Google Documentation for DayPartTargetingError}
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
#' \strong{DeliveryData}
#' 
#' Holds the number of clicks or impressions, determined by LineItem costType,
#' delivered for a single line item for the last 7 days
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.DeliveryData}{Google Documentation for DeliveryData}
#' \describe{
#'  \item{units}{a integer -  Clicks or impressions delivered for the last 7 days.}
#' }
#' 
#' \strong{DeliveryIndicator}
#' 
#' Indicates the delivery performance of the LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.DeliveryIndicator}{Google Documentation for DeliveryIndicator}
#' \describe{
#'  \item{expectedDeliveryPercentage}{a double -  How much the LineItem was expected to deliver as a percentage of LineItem
#' unitsBought.}
#'  \item{actualDeliveryPercentage}{a double -  How much the line item actually delivered as a percentage of LineItem
#' unitsBought.}
#' }
#' 
#' \strong{DeviceCapability}
#' 
#' Represents a capability of a physical device.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.DeviceCapability}{Google Documentation for DeviceCapability}
#' \describe{
#'  \item{id}{a integer (inherited from Technology) -  The unique ID of the Technology. This value is required for all forms of
#' TechnologyTargeting.}
#'  \item{name}{a string (inherited from Technology) -  The name of the technology being targeting. This value is read-only and is
#' assigned by Google.}
#' }
#' 
#' \strong{DeviceCapabilityPremiumFeature}
#' 
#' A premium feature applied to device capability targeting.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.DeviceCapabilityPremiumFeature}{Google Documentation for DeviceCapabilityPremiumFeature}
#' \describe{
#'  \item{extends PremiumFeature}{see documentation for PremiumFeature}
#' }
#' 
#' \strong{DeviceCapabilityTargeting}
#' 
#' Represents device capabilities that are being targeted or excluded by the
#' LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.DeviceCapabilityTargeting}{Google Documentation for DeviceCapabilityTargeting}
#' \describe{
#'  \item{targetedDeviceCapabilities}{a Technology -  Device capabilities that are being targeted by the LineItem.}
#'  \item{excludedDeviceCapabilities}{a Technology -  Device capabilities that are being excluded by the LineItem.}
#' }
#' 
#' \strong{DeviceCategory}
#' 
#' Represents the category of a device.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.DeviceCategory}{Google Documentation for DeviceCategory}
#' \describe{
#'  \item{id}{a integer (inherited from Technology) -  The unique ID of the Technology. This value is required for all forms of
#' TechnologyTargeting.}
#'  \item{name}{a string (inherited from Technology) -  The name of the technology being targeting. This value is read-only and is
#' assigned by Google.}
#' }
#' 
#' \strong{DeviceCategoryPremiumFeature}
#' 
#' A premium feature applied to device category targeting.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.DeviceCategoryPremiumFeature}{Google Documentation for DeviceCategoryPremiumFeature}
#' \describe{
#'  \item{extends PremiumFeature}{see documentation for PremiumFeature}
#' }
#' 
#' \strong{DeviceCategoryTargeting}
#' 
#' Represents device categories that are being targeted or excluded by the
#' LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.DeviceCategoryTargeting}{Google Documentation for DeviceCategoryTargeting}
#' \describe{
#'  \item{targetedDeviceCategories}{a Technology -  Device categories that are being targeted by the LineItem.}
#'  \item{excludedDeviceCategories}{a Technology -  Device categories that are being excluded by the LineItem.}
#' }
#' 
#' \strong{DeviceManufacturer}
#' 
#' Represents a mobile device's manufacturer.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.DeviceManufacturer}{Google Documentation for DeviceManufacturer}
#' \describe{
#'  \item{id}{a integer (inherited from Technology) -  The unique ID of the Technology. This value is required for all forms of
#' TechnologyTargeting.}
#'  \item{name}{a string (inherited from Technology) -  The name of the technology being targeting. This value is read-only and is
#' assigned by Google.}
#' }
#' 
#' \strong{DeviceManufacturerPremiumFeature}
#' 
#' A premium feature applied to device manufacturer targeting.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.DeviceManufacturerPremiumFeature}{Google Documentation for DeviceManufacturerPremiumFeature}
#' \describe{
#'  \item{extends PremiumFeature}{see documentation for PremiumFeature}
#' }
#' 
#' \strong{DeviceManufacturerTargeting}
#' 
#' Represents device manufacturer that are being targeted or excluded by the
#' LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.DeviceManufacturerTargeting}{Google Documentation for DeviceManufacturerTargeting}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.DropDownCustomFieldValue}{Google Documentation for DropDownCustomFieldValue}
#' \describe{
#'  \item{customFieldId}{a integer (inherited from BaseCustomFieldValue) -  Id of the CustomField to which this value belongs. This attribute is
#' required.}
#'  \item{customFieldOptionId}{a integer -  The CustomFieldOption id ID of the CustomFieldOption for this value.}
#' }
#' 
#' \strong{EntityChildrenLimitReachedError}
#' 
#' Lists errors relating to having too many children on an entity.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.EntityChildrenLimitReachedError}{Google Documentation for EntityChildrenLimitReachedError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.EntityLimitReachedError}{Google Documentation for EntityLimitReachedError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.FeatureError}{Google Documentation for FeatureError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.ForecastError}{Google Documentation for ForecastError}
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
#' \strong{FrequencyCap}
#' 
#' Represents a limit on the number of times a single viewer can be exposed to
#' the same LineItem in a specified time period.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.FrequencyCap}{Google Documentation for FrequencyCap}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.FrequencyCapError}{Google Documentation for FrequencyCapError}
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
#' \strong{FrequencyCapPremiumFeature}
#' 
#' A premium feature applied to frequency caps.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.FrequencyCapPremiumFeature}{Google Documentation for FrequencyCapPremiumFeature}
#' \describe{
#'  \item{extends PremiumFeature}{see documentation for PremiumFeature}
#' }
#' 
#' \strong{GenericTargetingError}
#' 
#' Targeting validation errors that can be used by different targeting types.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.GenericTargetingError}{Google Documentation for GenericTargetingError}
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
#' \strong{GeographyPremiumFeature}
#' 
#' A premium feature applied to geography targeting.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.GeographyPremiumFeature}{Google Documentation for GeographyPremiumFeature}
#' \describe{
#'  \item{extends PremiumFeature}{see documentation for PremiumFeature}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.GeoTargeting}{Google Documentation for GeoTargeting}
#' \describe{
#'  \item{targetedLocations}{a Location -  The geographical locations being targeted by the LineItem.}
#'  \item{excludedLocations}{a Location -  The geographical locations being excluded by the LineItem.}
#' }
#' 
#' \strong{GeoTargetingError}
#' 
#' Lists all errors associated with geographical targeting for a LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.GeoTargetingError}{Google Documentation for GeoTargetingError}
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
#' \strong{Goal}
#' 
#' Defines the criteria a LineItem needs to satisfy to meet its delivery goal.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.Goal}{Google Documentation for Goal}
#' \describe{
#'  \item{goalType}{a GoalType - The type of the goal for the LineItem. It defines the period over which the
#' goal for LineItem should be reached. This can take one of the following values:
#'    \itemize{
#'      \item{NONE - No goal is specified for the number of ads delivered. The LineItem
#' lineItemType must be one of: LineItemType PRICE_PRIORITY LineItemType
#' AD_EXCHANGE LineItemType CLICK_TRACKING}
#'      \item{LIFETIME - There is a goal on the number of ads delivered for this line item during its
#' entire lifetime. The LineItem lineItemType must be one of: LineItemType
#' STANDARD LineItemType BULK LineItemType PRICE_PRIORITY LineItemType ADSENSE
#' LineItemType AD_EXCHANGE LineItemType ADMOB LineItemType CLICK_TRACKING}
#'      \item{DAILY - There is a daily goal on the number of ads delivered for this line item. The
#' LineItem lineItemType must be one of: LineItemType SPONSORSHIP LineItemType
#' NETWORK LineItemType PRICE_PRIORITY LineItemType HOUSE LineItemType ADSENSE
#' LineItemType AD_EXCHANGE LineItemType ADMOB LineItemType BUMPER}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{unitType}{a UnitType - The type of the goal unit for the LineItem. This can take one of the following values:
#'    \itemize{
#'      \item{IMPRESSIONS - The number of impressions served by creatives associated with the line item.
#' Line items of all LineItemType support this UnitType.}
#'      \item{CLICKS - The number of clicks reported by creatives associated with the line item.
#' The LineItem lineItemType must be LineItemType STANDARD, LineItemType BULK
#' or LineItemType PRICE_PRIORITY.}
#'      \item{CLICK_THROUGH_CPA_CONVERSIONS - The number of click-through Cost-Per-Action (CPA) conversions from creatives
#' associated with the line item. This is only supported as secondary goal and
#' the LineItem costType must be CostType CPA.}
#'      \item{VIEW_THROUGH_CPA_CONVERSIONS - The number of view-through Cost-Per-Action (CPA) conversions from creatives
#' associated with the line item. This is only supported as secondary goal and
#' the LineItem costType must be CostType CPA.}
#'      \item{TOTAL_CPA_CONVERSIONS - The number of total Cost-Per-Action (CPA) conversions from creatives
#' associated with the line item. This is only supported as secondary goal and
#' the LineItem costType must be CostType CPA.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{units}{a integer -  If this is a primary goal, it represents the number or percentage of
#' impressions or clicks that will be reserved for the LineItem. If the line
#' item is of type LineItemType SPONSORSHIP, it represents the percentage of
#' available impressions reserved. If the line item is of type LineItemType
#' BULK or LineItemType PRICE_PRIORITY, it represents the number of remaining
#' impressions reserved. If the line item is of type LineItemType NETWORK or
#' LineItemType HOUSE, it represents the percentage of remaining impressions
#' reserved. If this is a secondary goal, it represents the number of
#' impressions or conversions that the line item will stop serving at if
#' reached. For valid line item types, see LineItem secondaryGoals.}
#' }
#' 
#' \strong{InternalApiError}
#' 
#' Indicates that a server-side error has occured. InternalApiErrors are
#' generally not the result of an invalid request or message sent by the
#' client.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.InternalApiError}{Google Documentation for InternalApiError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.InventoryTargeting}{Google Documentation for InventoryTargeting}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.InventoryTargetingError}{Google Documentation for InventoryTargetingError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.LabelEntityAssociationError}{Google Documentation for LabelEntityAssociationError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.LineItemOperationError}{Google Documentation for LineItemOperationError}
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
#' \strong{Location}
#' 
#' A Location represents a geographical entity that can be targeted. If a
#' location type is not available because of the API version you are using, the
#' location will be represented as just the base class, otherwise it will be
#' sub-classed correctly.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.Location}{Google Documentation for Location}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.MobileCarrier}{Google Documentation for MobileCarrier}
#' \describe{
#'  \item{id}{a integer (inherited from Technology) -  The unique ID of the Technology. This value is required for all forms of
#' TechnologyTargeting.}
#'  \item{name}{a string (inherited from Technology) -  The name of the technology being targeting. This value is read-only and is
#' assigned by Google.}
#' }
#' 
#' \strong{MobileCarrierPremiumFeature}
#' 
#' A premium feature applied to mobile carrier targeting.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.MobileCarrierPremiumFeature}{Google Documentation for MobileCarrierPremiumFeature}
#' \describe{
#'  \item{extends PremiumFeature}{see documentation for PremiumFeature}
#' }
#' 
#' \strong{MobileCarrierTargeting}
#' 
#' Represents mobile carriers that are being targeted or excluded by the
#' LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.MobileCarrierTargeting}{Google Documentation for MobileCarrierTargeting}
#' \describe{
#'  \item{isTargeted}{a boolean -  Indicates whether mobile carriers should be targeted or excluded. This
#' attribute is optional and defaults to true.}
#'  \item{mobileCarriers}{a Technology -  Mobile carriers that are being targeted or excluded by the LineItem.}
#' }
#' 
#' \strong{MobileDevice}
#' 
#' Represents a Mobile Device.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.MobileDevice}{Google Documentation for MobileDevice}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.MobileDeviceSubmodel}{Google Documentation for MobileDeviceSubmodel}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.MobileDeviceSubmodelTargeting}{Google Documentation for MobileDeviceSubmodelTargeting}
#' \describe{
#'  \item{targetedMobileDeviceSubmodels}{a Technology -  Mobile device submodels that are being targeted by the LineItem.}
#'  \item{excludedMobileDeviceSubmodels}{a Technology -  Mobile device submodels that are being excluded by the LineItem.}
#' }
#' 
#' \strong{MobileDeviceTargeting}
#' 
#' Represents mobile devices that are being targeted or excluded by the
#' LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.MobileDeviceTargeting}{Google Documentation for MobileDeviceTargeting}
#' \describe{
#'  \item{targetedMobileDevices}{a Technology -  Mobile devices that are being targeted by the LineItem.}
#'  \item{excludedMobileDevices}{a Technology -  Mobile devices that are being excluded by the LineItem.}
#' }
#' 
#' \strong{Money}
#' 
#' Represents a money amount.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.Money}{Google Documentation for Money}
#' \describe{
#'  \item{currencyCode}{a string -  Three letter currency code in string format.}
#'  \item{microAmount}{a integer -  Money values are always specified in terms of micros which are a millionth
#' of the fundamental currency unit. For US dollars, $1 is 1,000,000 micros.}
#' }
#' 
#' \strong{NotNullError}
#' 
#' Caused by supplying a null value for an attribute that cannot be null.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.NotNullError}{Google Documentation for NotNullError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.NumberValue}{Google Documentation for NumberValue}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.ObjectValue}{Google Documentation for ObjectValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#' }
#' 
#' \strong{OperatingSystem}
#' 
#' Represents an Operating System, such as Linux, Mac OS or Windows.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.OperatingSystem}{Google Documentation for OperatingSystem}
#' \describe{
#'  \item{id}{a integer (inherited from Technology) -  The unique ID of the Technology. This value is required for all forms of
#' TechnologyTargeting.}
#'  \item{name}{a string (inherited from Technology) -  The name of the technology being targeting. This value is read-only and is
#' assigned by Google.}
#' }
#' 
#' \strong{OperatingSystemPremiumFeature}
#' 
#' A premium feature applied to operating system targeting.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.OperatingSystemPremiumFeature}{Google Documentation for OperatingSystemPremiumFeature}
#' \describe{
#'  \item{extends PremiumFeature}{see documentation for PremiumFeature}
#' }
#' 
#' \strong{OperatingSystemTargeting}
#' 
#' Represents operating systems that are being targeted or excluded by the
#' LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.OperatingSystemTargeting}{Google Documentation for OperatingSystemTargeting}
#' \describe{
#'  \item{isTargeted}{a boolean -  Indicates whether operating systems should be targeted or excluded. This
#' attribute is optional and defaults to true.}
#'  \item{operatingSystems}{a Technology -  Operating systems that are being targeted or excluded by the LineItem.}
#' }
#' 
#' \strong{OperatingSystemVersion}
#' 
#' Represents a specific version of an operating system.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.OperatingSystemVersion}{Google Documentation for OperatingSystemVersion}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.OperatingSystemVersionTargeting}{Google Documentation for OperatingSystemVersionTargeting}
#' \describe{
#'  \item{targetedOperatingSystemVersions}{a Technology -  Operating system versions that are being targeted by the LineItem.}
#'  \item{excludedOperatingSystemVersions}{a Technology -  Operating system versions that are being excluded by the LineItem.}
#' }
#' 
#' \strong{ParseError}
#' 
#' Lists errors related to parsing.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.ParseError}{Google Documentation for ParseError}
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
#' \strong{PauseProposalLineItems}
#' 
#' The action used for pausing ProposalLineItem objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.PauseProposalLineItems}{Google Documentation for PauseProposalLineItems}
#' \describe{
#'  \item{extends ProposalLineItemAction}{see documentation for ProposalLineItemAction}
#' }
#' 
#' \strong{PermissionError}
#' 
#' Errors related to incorrect permission.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.PermissionError}{Google Documentation for PermissionError}
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
#' \strong{PlacementPremiumFeature}
#' 
#' A premium feature applied to placement targeting.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.PlacementPremiumFeature}{Google Documentation for PlacementPremiumFeature}
#' \describe{
#'  \item{extends PremiumFeature}{see documentation for PremiumFeature}
#' }
#' 
#' \strong{PrecisionError}
#' 
#' List all errors associated with number precisions.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.PrecisionError}{Google Documentation for PrecisionError}
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
#' \strong{PremiumFeature}
#' 
#' A PremiumFeature represents the feature type to be applied as a premium on a
#' RateCard.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.PremiumFeature}{Google Documentation for PremiumFeature}
#' \describe{
#' }
#' 
#' \strong{PremiumRateValue}
#' 
#' A premium of a RateCard which could be applied to the line item and charges
#' extra.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.PremiumRateValue}{Google Documentation for PremiumRateValue}
#' \describe{
#'  \item{premiumRateId}{a integer -  The ID of the PremiumRate object to which this premium rate value belongs.
#' This attribute is readonly.}
#'  \item{premiumFeature}{a PremiumFeature -  The feature type of this premium rate value. This attribute is required and
#' cannot be changed after creation.}
#'  \item{rateType}{a RateType - The rate type this premium rate value would be applied to. This attribute is
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
#'  \item{adjustmentType}{a PremiumAdjustmentType - Whether the premium rate value is a percentage or absolute value to the
#' product rate. This attribute is required. This can take one of the following values:
#'    \itemize{
#'      \item{PERCENTAGE - The adjustment size to the base rate is a percentage.}
#'      \item{ABSOLUTE_VALUE - The adjustment size to the base rate is an absolute value.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{adjustmentSize}{a integer -  If adjustmentType is PremiumAdjustmentType ABSOLUTE_VALUE, this value is in
#' micros. If adjustmentType is PremiumAdjustmentType PERCENTAGE, this value is
#' in millipercent. This attribute is required.}
#' }
#' 
#' \strong{ProductError}
#' 
#' A catch-all error that lists all generic errors associated with Product.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.ProductError}{Google Documentation for ProductError}
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
#' \strong{ProposalError}
#' 
#' Lists all errors associated with proposals.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.ProposalError}{Google Documentation for ProposalError}
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
#' \strong{ProposalLineItem}
#' 
#' A ProposalLineItem is an instance of sales Product. It belongs to a Proposal
#' and is created according to a Product and RateCard. When the proposal is
#' turned into an Order, this object is turned into a LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.ProposalLineItem}{Google Documentation for ProposalLineItem}
#' \describe{
#'  \item{id}{a integer -  The unique ID of the ProposalLineItem. This attribute is readonly and is
#' assigned by Google.}
#'  \item{proposalId}{a integer -  The unique ID of the Proposal, to which the ProposalLineItem belongs. This
#' attribute is required for creation and then is readonly.}
#'  \item{packageId}{a integer -  The unique ID of the Package, to which the ProposalLineItem belongs. This
#' attribute is assigned by Google when creating the ProposalLineItem by
#' performing the package action CreateProposalLineItemsFromPackages. And then
#' it's readonly.}
#'  \item{rateCardId}{a integer -  The unique ID of the RateCard, based on which the ProposalLineItem is
#' priced. The rate card must be associated with a rate belonging to the
#' productId product. This attribute is required for creation and then is
#' readonly.}
#'  \item{productId}{a integer -  The unique ID of the Product, which the ProposalLineItem is created from.
#' This attribute is required for creation and then is readonly.}
#'  \item{name}{a string -  The name of the ProposalLineItem which should be unique under the same
#' Proposal. This attribute is required and has a maximum length of 255
#' characters. This attribute can be configured as editable after the proposal
#' has been submitted. Please check with your network administrator for
#' editable fields configuration.}
#'  \item{startDateTime}{a DateTime -  The date and time at which the line item associated with the
#' ProposalLineItem is enabled to begin serving. This attribute is optional
#' during creation, but required and must be in the future when it turns into a
#' line item. The DateTime timeZoneID is required if start date time is not
#' null. This attribute becomes readonly once the ProposalLineItem has started
#' delivering.}
#'  \item{endDateTime}{a DateTime -  The date and time at which the line item associated with the
#' ProposalLineItem stops beening served. This attribute is optional during
#' creation, but required and must be after the startDateTime. The DateTime
#' timeZoneID is required if end date time is not null.}
#'  \item{timeZoneId}{a string -  The time zone ID in tz database format (e.g. "America/Los_Angeles") for this
#' ProposalLineItem. The number of serving days is calculated in this time
#' zone. So if rateType is RateType CPD, it will affect the cost calculation.
#' The startDateTime and endDateTime will be returned in this time zone. This
#' attribute is optional and defaults to the network's time zone.}
#'  \item{notes}{a string -  Provides any additional notes that may annotate the ProposalLineItem. This
#' attribute is optional and has a maximum length of 65,535 characters. This
#' attribute can be configured as editable after the proposal has been
#' submitted. Please check with your network administrator for editable fields
#' configuration.}
#'  \item{costAdjustment}{a CostAdjustment - The cost adjustment applied to the ProposalLineItem. This attribute is
#' optional and default value is CostAdjustment NONE. This can take one of the following values:
#'    \itemize{
#'      \item{NONE - Indicates that the ProposalLineItem has no cost adjustment.}
#'      \item{MAKE_GOOD - Indicates that the cost adjustment of the ProposalLineItem is make good.}
#'      \item{BARTER - Indicates that the cost adjustment of the ProposalLineItem is barter.}
#'      \item{ADDED_VALUE - Indicates that the cost adjustment of the ProposalLineItem is added value.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{isArchived}{a boolean -  The archival status of the ProposalLineItem. This attribute is readonly.}
#'  \item{goal}{a Goal -  The goal(i.e. contracted quantity, quantity or limit) that this
#' ProposalLineItem is associated with, which is used in its pacing and
#' budgeting. This attribute is required. Goal units must be greater than 0
#' when the proposal line item turns into a line item, Goal goalType and Goal
#' unitType are readonly.}
#'  \item{contractedQuantityBuffer}{a integer -  A percentage number to a STANDARD line item with CPM or CPC as the rate
#' type, so that the scheduled delivery goal could be relaxed. This number is
#' milli-percent based, i.e. 10\% would be 10000.}
#'  \item{scheduledQuantity}{a integer -  The scheduled number of impressions or clicks of a STANDARD line item with
#' CPM or CPC as the rate type, so that the scheduled delivery goal could be
#' relaxed. This attribute is calculated from Goal units and
#' contractedQuantityBuffer, and is readonly.}
#'  \item{deliveryRateType}{a DeliveryRateType - The strategy for delivering ads over the course of the ProposalLineItem's
#' duration. This attribute is optional and default value is DeliveryRateType
#' EVENLY. This can take one of the following values:
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
#'  \item{roadblockingType}{a RoadblockingType - The strategy for serving roadblocked creatives, i.e. instances where
#' multiple creatives must be served together on a single web page. This
#' attribute is optional during creation and defaults to the Product
#' roadblockingType product's roadblocking type, or RoadblockingType ONLY_ONE
#' if the product does not have one. This can take one of the following values:
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
#'  \item{companionDeliveryOption}{a CompanionDeliveryOption - The delivery option for companions. This is only valid if the roadblocking
#' type is RoadblockingType CREATIVE_SET. The default value for roadblocking
#' creatives is CompanionDeliveryOption OPTIONAL. The default value in other
#' cases is CompanionDeliveryOption UNKNOWN. Providing something other than
#' CompanionDeliveryOption UNKNOWN will cause an error. This can take one of the following values:
#'    \itemize{
#'      \item{OPTIONAL - Companions are not required to serve a creative set. The creative set can
#' serve to inventory that has zero or more matching companions.}
#'      \item{AT_LEAST_ONE - At least one companion must be served in order for the creative set to be
#' used.}
#'      \item{ALL - All companions in the set must be served in order for the creative set to be
#' used. This can still serve to inventory that has more companions than can be
#' filled.}
#'      \item{UNKNOWN - The delivery type is unknown.}
#'    }
#'   }
#'  \item{creativeRotationType}{a CreativeRotationType - The strategy used for displaying multiple Creative objects that are
#' associated with the ProposalLineItem. This attribute is optional and default
#' value is CreativeRotationType OPTIMIZED. This can take one of the following values:
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
#'  \item{videoMaxDuration}{a integer -  The max duration of a video creative associated with this ProposalLineItem
#' in milliseconds. This attribute is optional, defaults to the Product
#' videoMaxDuration on the Product it was created with, and only meaningful if
#' this is a video proposal line item.}
#'  \item{frequencyCaps}{a FrequencyCap -  The set of frequency capping units for this ProposalLineItem. This attribute
#' is optional during creation and defaults to the Product frequencyCaps
#' product's frequency caps if Product allowFrequencyCapsCustomization is
#' false.}
#'  \item{dfpLineItemId}{a integer -  The unique ID of corresponding LineItem. This attribute is readonly. This
#' will be null if the Proposal has not been pushed to DFP.}
#'  \item{lineItemType}{a LineItemType - The corresponding LineItemType of the ProposalLineItem. This attribute is
#' required and must be one of: LineItemType SPONSORSHIP LineItemType STANDARD
#' LineItemType NETWORK LineItemType BULK LineItemType PRICE_PRIORITY
#' LineItemType HOUSE This can take one of the following values:
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
#'  \item{lineItemPriority}{a integer -  The priority for the corresponding LineItem of the ProposalLineItem. The
#' priority is a value between 1 and 16. The following default, minimum and
#' maximum priority values is allowed for each line item type: This attribute
#' is optional during creation and defaults to the Product priority product's
#' priority, or the default value listed above if the product's priority cannot
#' be used.}
#'  \item{rateType}{a RateType - The method used for billing the ProposalLineItem. This attribute is
#' readonly. This can take one of the following values:
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
#'  \item{creativePlaceholders}{a CreativePlaceholder -  Details about the creatives that are expected to serve through the
#' ProposalLineItem. This attribute is optional during creation and defaults to
#' the Product creativePlaceholders product's creative placeholders.}
#'  \item{targeting}{a Targeting -  Contains the targeting criteria for the ProposalLineItem. This attribute is
#' optional during creation and defaults to the Product targeting product's
#' targeting.}
#'  \item{derivedProductCustomCriteria}{a CustomCriteriaSet -  The built-in non-customizable custom criteria that is targeted by this
#' ProposalLineItem. This attribute is readonly and is populated from the
#' product's custom targeting. When the ProposalLineItem is pushed to DFP, this
#' attribute is AND'd with the custom targeting set in targeting.}
#'  \item{customFieldValues}{a BaseCustomFieldValue -  The values of the custom fields associated with the ProposalLineItem. This
#' attribute is optional. This attribute can be configured as editable after
#' the proposal has been submitted. Please check with your network
#' administrator for editable fields configuration.}
#'  \item{appliedLabels}{a AppliedLabel -  The set of labels applied directly to the ProposalLineItem. This attribute
#' is optional.}
#'  \item{effectiveAppliedLabels}{a AppliedLabel -  Contains the set of labels applied directly to the proposal as well as those
#' inherited ones. If a label has been negated, only the negated label is
#' returned. This field is readonly and is assigned by Google.}
#'  \item{disableSameAdvertiserCompetitiveExclusion}{a boolean -  If a line item has a series of competitive exclusions on it, it could be
#' blocked from serving with line items from the same advertiser. Setting this
#' to true will allow line items from the same advertiser to serve regardless
#' of the other competitive exclusion labels being applied. This attribute is
#' optional and defaults to false.}
#'  \item{productConstraints}{a ProposalLineItemConstraints -  All the product constraints set for this ProposalLineItem. This attribute is
#' readonly.}
#'  \item{premiums}{a ProposalLineItemPremium -  The premiums triggered by this ProposalLineItem and their statuses. For
#' those tiggered premiums whose statues are not specified, the default status
#' is ProposalLineItemPremiumStatus INCLUDED.}
#'  \item{isSold}{a boolean -  Indicates whether this ProposalLineItem has been sold. This attribute is
#' readonly.}
#'  \item{baseRate}{a Money -  The base rate of the ProposalLineItem in proposal currency. This attribute
#' is readonly.}
#'  \item{costPerUnit}{a Money -  The amount of money to spend per impression or click in proposal currency.
#' It supports precision of 4 decimal places in terms of the fundamental
#' currency unit, so the Money microAmount must be multiples of 100. This
#' attribute is required.}
#'  \item{cost}{a Money -  The cost of the ProposalLineItem in proposal currency. It supports precision
#' of 2 decimal places in terms of the fundamental currency unit, so the Money
#' microAmount must be multiples of 10000. This attribute is required.}
#'  \item{deliveryIndicator}{a DeliveryIndicator -  Indicates how well the line item generated from this proposal line item has
#' been performing. This attribute is readonly and is populated by Google. This
#' will be null if the delivery indicator information is not available due to
#' one of the following reasons: The proposal line item has not pushed to DFP.
#' The line item is not delivering. The line item has an unlimited goal or cap.
#' The line item has a percentage based goal or cap.}
#'  \item{deliveryData}{a DeliveryData -  Delivery data provides the number of clicks or impressions delivered for the
#' LineItem generated from this proposal line item in the last 7 days. This
#' attribute is readonly and is populated by Google. This will be null if the
#' delivery data cannot be computed due to one of the following reasons: The
#' proposal line item has not pushed to DFP. The line item is not deliverable.
#' The line item has completed delivering more than 7 days ago. The line item
#' has an absolute-based goal. ProposalLineItem deliveryIndicator should be
#' used to track its progress in this case.}
#'  \item{computedStatus}{a ComputedStatus - The status of the LineItem generated from this proposal line item. This
#' attribute is readonly. This will be null if the proposal line item has not
#' pushed to DFP. This can take one of the following values:
#'    \itemize{
#'      \item{DELIVERY_EXTENDED - The LineItem has past its LineItem endDateTime with an auto extension, but
#' hasn't met its goal.}
#'      \item{DELIVERING - The LineItem has begun serving.}
#'      \item{READY - The LineItem has been activated and is ready to serve.}
#'      \item{PAUSED - The LineItem has been paused from serving.}
#'      \item{INACTIVE - The LineItem is inactive. It is either caused by missing creatives or the
#' network disabling auto-activation.}
#'      \item{PAUSED_INVENTORY_RELEASED - The LineItem has been paused and its reserved inventory has been released.
#' The LineItem will not serve.}
#'      \item{PENDING_APPROVAL - The LineItem has been submitted for approval.}
#'      \item{COMPLETED - The LineItem has completed its run.}
#'      \item{DISAPPROVED - The LineItem has been disapproved and is not eligible to serve.}
#'      \item{DRAFT - The LineItem is still being drafted.}
#'      \item{CANCELED - The LineItem has been canceled and is no longer eligible to serve. This is a
#' legacy status imported from Google Ad Manager orders.}
#'    }
#'   }
#'  \item{billingCap}{a BillingCap - Overrides the billing cap of this ProposalLineItem. This attribute is
#' optional. If this field is overridden, then other required billing fields (
#' billingSource, or billingBase) also need to be overridden depending on the
#' billingSource. That is, none of the billing fields will inherit from their
#' Proposal object anymore. This attribute can be configured as editable after
#' the proposal has been submitted. Please check with your network
#' administrator for editable fields configuration. This can take one of the following values:
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
#'  \item{billingSchedule}{a BillingSchedule - Overrides the billing schedule of this ProposalLineItem. This attribute is
#' optional. If this field is overridden, then other required billing fields (
#' billingSource, or billingBase) also need to be overridden depending on the
#' billingSource. That is, none of the billing fields will inherit from their
#' Proposal object anymore. This attribute can be configured as editable after
#' the proposal has been submitted. Please check with your network
#' administrator for editable fields configuration. This can take one of the following values:
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
#'  \item{billingSource}{a BillingSource - Overrides the billing source of this ProposalLineItem. This attribute is
#' optional. If this field is overridden, then other required billing fields (
#' billingCap, billingSchedule, or billingBase) also need to be overridden
#' depending on this field. That is, none of the billing fields will inherit
#' from their Proposal object anymore. This attribute can be configured as
#' editable after the proposal has been submitted. Please check with your
#' network administrator for editable fields configuration. This can take one of the following values:
#'    \itemize{
#'      \item{CONTRACTED - Charge based on the quantity of impressions, clicks, or days booked,
#' regardless of what actually delivered.}
#'      \item{DFP_VOLUME - Charge based on what actually delivered counted by DFP}
#'      \item{THIRD_PARTY_VOLUME - Charge based on what actually delivered counted by third party ads server}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{billingBase}{a BillingBase - Overrides the billing base of this ProposalLineItem. This attribute is
#' optional. If this field is overridden, then other required billing fields (
#' billingCap, billingSchedule, or billingSource) also need to be overridden
#' depending on the billingSource. That is, none of the billing fields will
#' inherit from their Proposal object anymore. This attribute can be configured
#' as editable after the proposal has been submitted. Please check with your
#' network administrator for editable fields configuration. This can take one of the following values:
#'    \itemize{
#'      \item{VOLUME - Billing calculation (eg. proration) should be based on volume.}
#'      \item{REVENUE - Billing calculation (eg. proration) should be based on revenue.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{lastModifiedDateTime}{a DateTime -  The date and time this ProposalLineItem was last modified. This attribute is
#' readonly and is assigned by Google when a ProposalLineItem is updated.}
#'  \item{reservationStatus}{a ReservationStatus - The reservation status of the ProposalLineItem. This attribute is read-only
#' and assigned by Google. This can take one of the following values:
#'    \itemize{
#'      \item{RESERVED - The inventory is reserved.}
#'      \item{NOT_RESERVED - The proposal line item's inventory is never reserved.}
#'      \item{RELEASED - The inventory is once reserved and now released.}
#'      \item{IGNORED - This entity does not need inventory.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{useThirdPartyAdServerFromProposal}{a boolean -  Whether to use the corresponding proposal's third party ad server. If this
#' field is true, thirdPartyAdServerId and customThirdPartyAdServerName will be
#' ignored.}
#'  \item{thirdPartyAdServerId}{a integer -  A predefined third party ad server, which will be used to fill in
#' reconciliation. All predefined third party ad servers can be found in the
#' Third_Party_Company PQL table. If actual third party ad server is not in the
#' predefined list, this field is set to 0, and actual third party ad server
#' name is set in customThirdPartyAdServerName.}
#'  \item{customThirdPartyAdServerName}{a string -  When actual third party ad server is not in the predefined list,
#' thirdPartyAdServerId is set to 0, and actual third party ad server name is
#' set here. When thirdPartyAdServerId is not 0, this field is ignored.}
#'  \item{linkStatus}{a LinkStatus - The status of the link between this ProposalLineItem and its \{link
#' Product\}. This attribute is read-only. This can take one of the following values:
#'    \itemize{
#'      \item{LINKED}
#'      \item{UNLINKED}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{ProposalLineItemAction}
#' 
#' Represents the actions that can be performed on ProposalLineItem objects. May take one of the actions listed below.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.ProposalLineItemAction}{Google Documentation for ProposalLineItemAction}
#' \describe{
#'  \item{ActualizeProposalLineItems}{The action used for actualizing ProposalLineItem objects.}
#'  \item{ArchiveProposalLineItems}{The action used for archiving ProposalLineItem objects.}
#'  \item{PauseProposalLineItems}{The action used for pausing ProposalLineItem objects.}
#'  \item{ReleaseProposalLineItems}{The action used for releasing inventory for ProposalLineItem objects.}
#'  \item{ResumeProposalLineItems}{The action used for resuming ProposalLineItem objects.}
#'  \item{UnarchiveProposalLineItems}{The action used for unarchiving ProposalLineItem objects.}
#'  \item{UnlinkProposalLineItems}{The action used for unlinking ProposalLineItem objects.}
#' }
#' 
#' \strong{ProposalLineItemActionError}
#' 
#' Lists all errors for executing operations on proposal line items.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.ProposalLineItemActionError}{Google Documentation for ProposalLineItemActionError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a ProposalLineItemActionError.Reason - The error reason represented by an enum. This can take one of the following values:
#'    \itemize{
#'      \item{NOT_APPLICABLE - The operation is not applicable to the current state.}
#'      \item{PROPOSAL_NOT_EDITABLE - The operation is not applicable because the containing proposal is not
#' editable.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{ProposalLineItemConstraints}
#' 
#' A PropoalLineItemConstraints represents all the constraints set for a
#' ProposalLineItem and is always readonly. It comes from the Product, based on
#' which the proposal line item is created.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.ProposalLineItemConstraints}{Google Documentation for ProposalLineItemConstraints}
#' \describe{
#'  \item{builtInFrequencyCaps}{a FrequencyCap -  The built-in frequency caps for the created ProposalLineItem. This attribute
#' is read-only.}
#'  \item{productBuiltInTargeting}{a Targeting -  Built-in targeting for the created ProposalLineItem. This attribute is
#' read-only.}
#'  \item{customizableAttributes}{a CustomizableAttributes -  Specifies what targeting or attributes for the created ProposalLineItem are
#' customizable. This attribute is read-only.}
#' }
#' 
#' \strong{ProposalLineItemError}
#' 
#' Lists all errors associated with proposal line items.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.ProposalLineItemError}{Google Documentation for ProposalLineItemError}
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
#' \strong{ProposalLineItemPage}
#' 
#' Captures a page of ProposalLineItem objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.ProposalLineItemPage}{Google Documentation for ProposalLineItemPage}
#' \describe{
#'  \item{results}{a ProposalLineItem -  The collection of proposal line items contained within this page.}
#'  \item{startIndex}{a integer -  The absolute index in the total result set on which this page begins.}
#'  \item{totalResultSetSize}{a integer -  The size of the total result set to which this page belongs.}
#' }
#' 
#' \strong{ProposalLineItemPremium}
#' 
#' Represents the status of a triggered PremiumRateValue (formerly referred to
#' as a RateCardCustomization).
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.ProposalLineItemPremium}{Google Documentation for ProposalLineItemPremium}
#' \describe{
#'  \item{premiumRateValue}{a PremiumRateValue -  The PremiumRateValue triggered by the ProposalLineItem. This attribute is
#' required.}
#'  \item{status}{a ProposalLineItemPremiumStatus - The status of the triggered premium. This attribute is required. This can take one of the following values:
#'    \itemize{
#'      \item{INCLUDED - Indicating the premium is included in the pricing.}
#'      \item{EXCLUDED - Indicating the premium is excluded from the pricing.}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.PublisherQueryLanguageContextError}{Google Documentation for PublisherQueryLanguageContextError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.PublisherQueryLanguageSyntaxError}{Google Documentation for PublisherQueryLanguageSyntaxError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.QuotaError}{Google Documentation for QuotaError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.RangeError}{Google Documentation for RangeError}
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
#' \strong{ReleaseProposalLineItems}
#' 
#' The action used for releasing inventory for ProposalLineItem objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.ReleaseProposalLineItems}{Google Documentation for ReleaseProposalLineItems}
#' \describe{
#'  \item{extends ProposalLineItemAction}{see documentation for ProposalLineItemAction}
#' }
#' 
#' \strong{RequiredError}
#' 
#' Errors due to missing required field.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.RequiredError}{Google Documentation for RequiredError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.RequiredNumberError}{Google Documentation for RequiredNumberError}
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
#' \strong{ReservationDetailsError}
#' 
#' Lists all errors associated with LineItem's reservation details.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.ReservationDetailsError}{Google Documentation for ReservationDetailsError}
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
#' \strong{ResumeProposalLineItems}
#' 
#' The action used for resuming ProposalLineItem objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.ResumeProposalLineItems}{Google Documentation for ResumeProposalLineItems}
#' \describe{
#'  \item{extends ProposalLineItemAction}{see documentation for ProposalLineItemAction}
#' }
#' 
#' \strong{ServerError}
#' 
#' Errors related to the server.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.ServerError}{Google Documentation for ServerError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.SetValue}{Google Documentation for SetValue}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.Size}{Google Documentation for Size}
#' \describe{
#'  \item{width}{a integer -  The width of the AdUnit, LineItem or Creative.}
#'  \item{height}{a integer -  The height of the AdUnit, LineItem or Creative.}
#'  \item{isAspectRatio}{a boolean -  True if this size represents an aspect ratio, false otherwise.}
#' }
#' 
#' \strong{SoapRequestHeader}
#' 
#' Represents the SOAP request header used by API requests.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.SoapRequestHeader}{Google Documentation for SoapRequestHeader}
#' \describe{
#'  \item{networkCode}{a string -  The network code to use in the context of a request.}
#'  \item{applicationName}{a string -  The name of client library application.}
#' }
#' 
#' \strong{SoapResponseHeader}
#' 
#' Represents the SOAP request header used by API responses.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.SoapResponseHeader}{Google Documentation for SoapResponseHeader}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.Statement}{Google Documentation for Statement}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.StatementError}{Google Documentation for StatementError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.String_ValueMapEntry}{Google Documentation for String_ValueMapEntry}
#' \describe{
#'  \item{key}{a string}
#'  \item{value}{a Value}
#' }
#' 
#' \strong{StringLengthError}
#' 
#' Errors for Strings which do not meet given length constraints.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.StringLengthError}{Google Documentation for StringLengthError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.Targeting}{Google Documentation for Targeting}
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
#' \strong{TeamError}
#' 
#' Errors related to a Team.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.TeamError}{Google Documentation for TeamError}
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
#' \strong{Technology}
#' 
#' Represents a technology entity that can be targeted.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.Technology}{Google Documentation for Technology}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.TechnologyTargeting}{Google Documentation for TechnologyTargeting}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.TechnologyTargetingError}{Google Documentation for TechnologyTargetingError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.TextValue}{Google Documentation for TextValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a string -  The string value.}
#' }
#' 
#' \strong{TimeOfDay}
#' 
#' Represents a specific time in a day.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.TimeOfDay}{Google Documentation for TimeOfDay}
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
#' \strong{TimeZoneError}
#' 
#' Errors related to timezones.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.TimeZoneError}{Google Documentation for TimeZoneError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.TypeError}{Google Documentation for TypeError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#' }
#' 
#' \strong{UnarchiveProposalLineItems}
#' 
#' The action used for unarchiving ProposalLineItem objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.UnarchiveProposalLineItems}{Google Documentation for UnarchiveProposalLineItems}
#' \describe{
#'  \item{extends ProposalLineItemAction}{see documentation for ProposalLineItemAction}
#' }
#' 
#' \strong{UniqueError}
#' 
#' An error for a field which must satisfy a uniqueness constraint
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.UniqueError}{Google Documentation for UniqueError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#' }
#' 
#' \strong{UnknownPremiumFeature}
#' 
#' The PremiumFeature returned if the actual feature is not exposed by the
#' requested API version.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.UnknownPremiumFeature}{Google Documentation for UnknownPremiumFeature}
#' \describe{
#'  \item{extends PremiumFeature}{see documentation for PremiumFeature}
#' }
#' 
#' \strong{UnlinkProposalLineItems}
#' 
#' The action used for unlinking ProposalLineItem objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.UnlinkProposalLineItems}{Google Documentation for UnlinkProposalLineItems}
#' \describe{
#'  \item{extends ProposalLineItemAction}{see documentation for ProposalLineItemAction}
#' }
#' 
#' \strong{UpdateResult}
#' 
#' Represents the result of performing an action on objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.UpdateResult}{Google Documentation for UpdateResult}
#' \describe{
#'  \item{numChanges}{a integer -  The number of objects that were changed as a result of performing the
#' action.}
#' }
#' 
#' \strong{UserDomainPremiumFeature}
#' 
#' A premium feature applied to user domain targeting.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.UserDomainPremiumFeature}{Google Documentation for UserDomainPremiumFeature}
#' \describe{
#'  \item{extends PremiumFeature}{see documentation for PremiumFeature}
#' }
#' 
#' \strong{UserDomainTargeting}
#' 
#' Provides line items the ability to target or exclude users visiting their
#' websites from a list of domains or subdomains.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.UserDomainTargeting}{Google Documentation for UserDomainTargeting}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.UserDomainTargetingError}{Google Documentation for UserDomainTargetingError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.Value}{Google Documentation for Value}
#' \describe{
#' }
#' 
#' \strong{VideoPosition}
#' 
#' Represents a targetable position within a video. A video ad can be targeted
#' to a position (pre-roll, all mid-rolls, or post-roll), or to a specific
#' mid-roll index.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.VideoPosition}{Google Documentation for VideoPosition}
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
#' \strong{VideoPositionPremiumFeature}
#' 
#' A premium feature applied to video position targeting.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.VideoPositionPremiumFeature}{Google Documentation for VideoPositionPremiumFeature}
#' \describe{
#'  \item{extends PremiumFeature}{see documentation for PremiumFeature}
#' }
#' 
#' \strong{VideoPositionTarget}
#' 
#' Represents the options for targetable positions within a video.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.VideoPositionTarget}{Google Documentation for VideoPositionTarget}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.VideoPositionTargeting}{Google Documentation for VideoPositionTargeting}
#' \describe{
#'  \item{targetedPositions}{a VideoPositionTarget -  The VideoTargetingPosition objects being targeted by the video LineItem.}
#' }
#' 
#' \strong{VideoPositionWithinPod}
#' 
#' Represents a targetable position within a pod within a video stream. A video
#' ad can be targeted to any position in the pod (first, second, third ...
#' last). If there is only 1 ad in a pod, either first or last will target that
#' position.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService.VideoPositionWithinPod}{Google Documentation for VideoPositionWithinPod}
#' \describe{
#'  \item{index}{a integer -  The specific index of the pod. The index is defined as: 1 = first 2 = second
#' 3 = third .... 100 = last 100 will always be the last position. For example,
#' for a pod with 5 positions, 100 would target position 5. Multiple targets
#' against the index 100 can exist.<br> Positions over 100 are not supported.}
#' }
#' 
#' 
#' 
#' @usage dfp_ProposalLineItemService_object_factory(obj_type, obj_data)
#' 
#' @param obj_type a string from one of the object types described below
#' @param obj_data a \code{list} of \code{lists} or a \code{data.frame} with the required components to create
#' the obj_type specified. All input names must match the expected attributes for the object.
#' If submitting a list of attributes to create 1 object make sure to nest it inside top-level list, so that
#' it is a list of length 1 with 1 list of attributes to create the object.
#' @return a string of formatted XML that can be inserted into a SOAP request body to the API
#' @export
dfp_ProposalLineItemService_object_factory <- function(obj_type, obj_data){

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

  if(obj_type=='AudienceSegmentPremiumFeature'){
    stopifnot(all(sampled_names %in% c('audienceSegmentId')))
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

  if(obj_type=='CustomTargetingPremiumFeature'){
    stopifnot(all(sampled_names %in% c('customTargetingKeyId', 'customTargetingValueId')))
  }

  if(obj_type=='DayPart'){
    stopifnot(all(sampled_names %in% c('dayOfWeek', 'startTime', 'endTime')))
  }

  if(obj_type=='DayPartTargeting'){
    stopifnot(all(sampled_names %in% c('dayParts', 'timeZone')))
  }

  if(obj_type=='DeliveryData'){
    stopifnot(all(sampled_names %in% c('units')))
  }

  if(obj_type=='DeliveryIndicator'){
    stopifnot(all(sampled_names %in% c('expectedDeliveryPercentage', 'actualDeliveryPercentage')))
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

  if(obj_type=='Goal'){
    stopifnot(all(sampled_names %in% c('goalType', 'unitType', 'units')))
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

  if(obj_type=='Money'){
    stopifnot(all(sampled_names %in% c('currencyCode', 'microAmount')))
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

  if(obj_type=='PremiumRateValue'){
    stopifnot(all(sampled_names %in% c('premiumRateId', 'premiumFeature', 'rateType', 'adjustmentType', 'adjustmentSize')))
  }

  if(obj_type=='ProposalLineItem'){
    stopifnot(all(sampled_names %in% c('id', 'proposalId', 'packageId', 'rateCardId', 'productId', 'name', 'startDateTime', 'endDateTime', 'timeZoneId', 'notes', 'costAdjustment', 'isArchived', 'goal', 'contractedQuantityBuffer', 'scheduledQuantity', 'deliveryRateType', 'roadblockingType', 'companionDeliveryOption', 'creativeRotationType', 'videoMaxDuration', 'frequencyCaps', 'dfpLineItemId', 'lineItemType', 'lineItemPriority', 'rateType', 'creativePlaceholders', 'targeting', 'derivedProductCustomCriteria', 'customFieldValues', 'appliedLabels', 'effectiveAppliedLabels', 'disableSameAdvertiserCompetitiveExclusion', 'productConstraints', 'premiums', 'isSold', 'baseRate', 'costPerUnit', 'cost', 'deliveryIndicator', 'deliveryData', 'computedStatus', 'billingCap', 'billingSchedule', 'billingSource', 'billingBase', 'lastModifiedDateTime', 'reservationStatus', 'useThirdPartyAdServerFromProposal', 'thirdPartyAdServerId', 'customThirdPartyAdServerName', 'linkStatus')))
  }

  if(obj_type=='ProposalLineItemConstraints'){
    stopifnot(all(sampled_names %in% c('builtInFrequencyCaps', 'productBuiltInTargeting', 'customizableAttributes')))
  }

  if(obj_type=='ProposalLineItemPremium'){
    stopifnot(all(sampled_names %in% c('premiumRateValue', 'status')))
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
#' createProposalLineItems
#' 
#' Creates new ProposalLineItem objects. For each proposal line item, the following fields are required: <ul> <li>ProposalLineItem proposalId</li> <li>ProposalLineItem rateCardId</li> <li>ProposalLineItem productId</li> <li>ProposalLineItem name</li> <li>ProposalLineItem startDateTime</li> <li>ProposalLineItem endDateTime</li> </ul>
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService#createProposalLineItems}{Google Documentation for createProposalLineItems}
#' 
#' @usage dfp_createProposalLineItems(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a createProposalLineItemsResponse
#' @export
dfp_createProposalLineItems <- function(request_data){

  request_body <- make_request_body(service='ProposalLineItemService', root_name='createProposalLineItems', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['createProposalLineItemsResponse']])$rval
  response <- if(is.null(response)) NULL else xmlToList(response)
  return(response)
}
#' 
#' getProposalLineItemsByStatement
#' 
#' Gets a ProposalLineItemPage of ProposalLineItem objects that satisfy the given Statement query. The following fields are supported for filtering:  a set of proposal line items 
#' \itemize{
#'   \item{id}
#'   \item{name}
#'   \item{proposalId}
#'   \item{isArchived}
#'   \item{lastModifiedDateTime}
#'   \item{useThirdPartyAdServerFromProposal}
#'   \item{thirdPartyAdServerId}
#'   \item{customThirdPartyAdServerName}
#' }
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService#getProposalLineItemsByStatement}{Google Documentation for getProposalLineItemsByStatement}
#' 
#' @usage dfp_getProposalLineItemsByStatement(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a getProposalLineItemsByStatementResponse
#' @export
dfp_getProposalLineItemsByStatement <- function(request_data){

  request_body <- make_request_body(service='ProposalLineItemService', root_name='getProposalLineItemsByStatement', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getProposalLineItemsByStatementResponse']])$rval
  response <- if(is.null(response)) NULL else xmlToList(response)
  return(response)
}
#' 
#' performProposalLineItemAction
#' 
#' Performs actions on ProposalLineItem objects that match the given Statement query. proposal line items
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService#performProposalLineItemAction}{Google Documentation for performProposalLineItemAction}
#' 
#' @usage dfp_performProposalLineItemAction()
#' @return a \code{list} containing all the elements of a performProposalLineItemActionResponse
#' @export
dfp_performProposalLineItemAction <- function(){

  request_body <- make_request_body(service='ProposalLineItemService', root_name='performProposalLineItemAction', data=NULL)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['performProposalLineItemActionResponse']])$rval
  response <- if(is.null(response)) NULL else xmlToList(response)
  return(response)
}
#' 
#' updateProposalLineItems
#' 
#' Updates the specified ProposalLineItem objects. If free editing mode is enabled, this will trigger inventory reservation and cause the proposal to be pushed to DFP again.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ProposalLineItemService#updateProposalLineItems}{Google Documentation for updateProposalLineItems}
#' 
#' @usage dfp_updateProposalLineItems(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a updateProposalLineItemsResponse
#' @export
dfp_updateProposalLineItems <- function(request_data){

  request_body <- make_request_body(service='ProposalLineItemService', root_name='updateProposalLineItems', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['updateProposalLineItemsResponse']])$rval
  response <- if(is.null(response)) NULL else xmlToList(response)
  return(response)
}
#' 
