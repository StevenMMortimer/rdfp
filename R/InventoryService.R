#' InventoryService
#' 
#' Provides operations for creating, updating and retrieving AdUnit objects.
#'
#' Line items connect a creative with its associated ad unit through
#' targeting.
#' An ad unit represents a piece of inventory within a
#' publisher. It contains all the settings that need to be associated with the
#' inventory in order to serve ads. For example, the ad unit contains creative
#' size restrictions and AdSense settings.
#' 
#' InventoryService Object Factory
#' 
#' A function to create a variety of objects that are part of the InventoryService
#' Note: not all objects here are inputs to the functions of this service so 
#' please consult each function for the required inputs
#' 
#' Below is a list of objects and their required components to be created with this function:
#' 
#' \strong{ActivateAdUnits}
#' 
#' The action used for activating AdUnit objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.ActivateAdUnits}{Google Documentation for ActivateAdUnits}
#' \describe{
#'  \item{extends AdUnitAction}{see documentation for AdUnitAction}
#' }
#' 
#' \strong{AdSenseAccountError}
#' 
#' Error for AdSense related API calls.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.AdSenseAccountError}{Google Documentation for AdSenseAccountError}
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
#' \strong{AdSenseSettings}
#' 
#' Contains the AdSense configuration for an AdUnit.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.AdSenseSettings}{Google Documentation for AdSenseSettings}
#' \describe{
#'  \item{adSenseEnabled}{a boolean -  Specifies whether or not the AdUnit is enabled for serving ads from the
#' AdSense content network. This attribute is optional and defaults to the ad
#' unit's parent or ancestor's setting if one has been set. If no ancestor of
#' the ad unit has set adSenseEnabled, the attribute is defaulted to true.}
#'  \item{borderColor}{a string -  Specifies the Hexadecimal border color, from 000000 to FFFFFF. This
#' attribute is optional and defaults to the ad unit's parent or ancestor's
#' setting if one has been set. If no ancestor of the ad unit has set
#' borderColor, the attribute is defaulted to FFFFFF.}
#'  \item{titleColor}{a string -  Specifies the Hexadecimal title color of an ad, from 000000 to FFFFFF. This
#' attribute is optional and defaults to the ad unit's parent or ancestor's
#' setting if one has been set. If no ancestor of the ad unit has set
#' titleColor, the attribute is defaulted to 0000FF.}
#'  \item{backgroundColor}{a string -  Specifies the Hexadecimal background color of an ad, from 000000 to FFFFFF.
#' This attribute is optional and defaults to the ad unit's parent or
#' ancestor's setting if one has been set. If no ancestor of the ad unit has
#' set backgroundColor, the attribute is defaulted to FFFFFF.}
#'  \item{textColor}{a string -  Specifies the Hexadecimal color of the text of an ad, from 000000 to FFFFFF.
#' This attribute is optional and defaults to the ad unit's parent or
#' ancestor's setting if one has been set. If no ancestor of the ad unit has
#' set textColor, the attribute is defaulted to 000000.}
#'  \item{urlColor}{a string -  Specifies the Hexadecimal color of the URL of an ad, from 000000 to FFFFFF.
#' This attribute is optional and defaults to the ad unit's parent or
#' ancestor's setting if one has been set. If no ancestor of the ad unit has
#' set urlColor, the attribute is defaulted to 008000 .}
#'  \item{adType}{a AdSenseSettings.AdType - Specifies what kind of ad can be served by this AdUnit from the AdSense
#' Content Network. This attribute is optional and defaults to the ad unit's
#' parent or ancestor's setting if one has been set. If no ancestor of the ad
#' unit has set adType, the attribute is defaulted to AdType TEXT_AND_IMAGE. This can take one of the following values:
#'    \itemize{
#'      \item{TEXT - Allows text-only ads.}
#'      \item{IMAGE - Allows image-only ads.}
#'      \item{TEXT_AND_IMAGE - Allows both text and image ads.}
#'    }
#'   }
#'  \item{borderStyle}{a AdSenseSettings.BorderStyle - Specifies the border-style of the AdUnit. This attribute is optional and
#' defaults to the ad unit's parent or ancestor's setting if one has been set.
#' If no ancestor of the ad unit has set borderStyle, the attribute is
#' defaulted to BorderStyle DEFAULT. This can take one of the following values:
#'    \itemize{
#'      \item{DEFAULT - Uses the default border-style of the browser.}
#'      \item{NOT_ROUNDED - Uses a cornered border-style.}
#'      \item{SLIGHTLY_ROUNDED - Uses a slightly rounded border-style.}
#'      \item{VERY_ROUNDED - Uses a rounded border-style.}
#'    }
#'   }
#'  \item{fontFamily}{a AdSenseSettings.FontFamily - Specifies the font family of the AdUnit. This attribute is optional and
#' defaults to the ad unit's parent or ancestor's setting if one has been set.
#' If no ancestor of the ad unit has set fontFamily, the attribute is defaulted
#' to FontFamily DEFAULT. This can take one of the following values:
#'    \itemize{
#'      \item{DEFAULT}
#'      \item{ARIAL}
#'      \item{TAHOMA}
#'      \item{GEORGIA}
#'      \item{TIMES}
#'      \item{VERDANA}
#'    }
#'   }
#'  \item{fontSize}{a AdSenseSettings.FontSize - Specifies the font size of the AdUnit. This attribute is optional and
#' defaults to the ad unit's parent or ancestor's setting if one has been set.
#' If no ancestor of the ad unit has set fontSize, the attribute is defaulted
#' to FontSize DEFAULT. This can take one of the following values:
#'    \itemize{
#'      \item{DEFAULT}
#'      \item{SMALL}
#'      \item{MEDIUM}
#'      \item{LARGE}
#'    }
#'   }
#'  \item{afcFormats}{a Size_StringMapEntry -  Maps ad unit sizes to AdSense-For-Content Size Formats. This attribute is
#' optional.}
#' }
#' 
#' \strong{AdSenseSettingsInheritedProperty}
#' 
#' The property of the AdUnit that specifies how and from where the
#' AdSenseSettings are inherited.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.AdSenseSettingsInheritedProperty}{Google Documentation for AdSenseSettingsInheritedProperty}
#' \describe{
#'  \item{value}{a AdSenseSettings -  The AdSenseSettings from which the property is inherited.}
#' }
#' 
#' \strong{AdUnit}
#' 
#' An AdUnit represents a chunk of identified inventory for the publisher. It
#' contains all the settings that need to be associated with inventory in order
#' to serve ads to it. An AdUnit can also be the parent of other ad units in
#' the inventory hierarchy.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.AdUnit}{Google Documentation for AdUnit}
#' \describe{
#'  \item{id}{a string -  Uniquely identifies the AdUnit. This value is read-only and is assigned by
#' Google when an ad unit is created. This attribute is required for updates.}
#'  \item{parentId}{a string -  The ID of the ad unit's parent. Every ad unit has a parent except for the
#' root ad unit, which is created by Google. This attribute is required when
#' creating the ad unit. Once the ad unit is created this value will be
#' read-only.}
#'  \item{hasChildren}{a boolean -  This field is set to true if the ad unit has any children. This attribute is
#' read-only and is populated by Google.}
#'  \item{parentPath}{a AdUnitParent -  The path to this ad unit in the ad unit hierarchy represented as a list from
#' the root to this ad unit's parent. For root ad units, this list is empty.
#' This attribute is read-only and is populated by Google.}
#'  \item{name}{a string -  The name of the ad unit. This attribute is required and its maximum length
#' is 255 characters. This attribute must also be case-insensitive unique.
#' Beginning in V201311, this attribute can be updated. In versions before
#' v201311, this attribute is read-only after creation.}
#'  \item{description}{a string -  A description of the ad unit. This value is optional and its maximum length
#' is 65,535 characters.}
#'  \item{targetWindow}{a AdUnit.TargetWindow - The value to use for the HTML link's target attribute. This value is
#' optional and will be interpreted as TargetWindow TOP if left blank. This can take one of the following values:
#'    \itemize{
#'      \item{TOP - Specifies that the link should open in the full body of the page.}
#'      \item{BLANK - Specifies that the link should open in a new window.}
#'    }
#'   }
#'  \item{status}{a InventoryStatus - The status of this ad unit. It defaults to InventoryStatus ACTIVE. This
#' value cannot be updated directly using InventoryService updateAdUnit. It can
#' only be modified by performing actions via InventoryService
#' performAdUnitAction. This can take one of the following values:
#'    \itemize{
#'      \item{ACTIVE - The object is active.}
#'      \item{INACTIVE - The object is no longer active.}
#'      \item{ARCHIVED - The object has been archived.}
#'    }
#'   }
#'  \item{adUnitCode}{a string -  A string used to uniquely identify the ad unit for the purposes of serving
#' the ad. Beginning in V201311, this attribute is optional and can be set
#' during ad unit creation. If it is not provided, it will be assigned by
#' Google based off of the inventory unit ID. Before V201311, this attribute is
#' read-only and assigned by Google. Once an ad unit is created, its adUnitCode
#' cannot be changed.}
#'  \item{adUnitSizes}{a AdUnitSize -  The permissible creative sizes that can be served inside this ad unit. This
#' attribute is optional. This attribute replaces the sizes attribute.}
#'  \item{targetPlatform}{a TargetPlatform - The platform that the AdUnit is serving, the default value is TargetPlatform
#' WEB.  This field is deprecated in favor of desktop and mobile unification
#' and should not be used or set to anything other than TargetPlatform WEB. This can take one of the following values:
#'    \itemize{
#'      \item{WEB - The desktop web.}
#'      \item{MOBILE - Mobile devices.}
#'      \item{ANY - An universal target platform that combines mobile and desktop features.}
#'    }
#'   }
#'  \item{mobilePlatform}{a MobilePlatform - The platform associated with a mobile AdUnit, i.e. whether this ad unit
#' appears in a mobile application or in a mobile web site. This attribute can
#' only be used with TargetPlatform MOBILE ad units. This attribute is optional
#' and defaults to MobilePlatform SITE. This can take one of the following values:
#'    \itemize{
#'      \item{SITE - The ad unit appears in a mobile site.}
#'      \item{APPLICATION - The ad unit appears in a moible application.}
#'    }
#'   }
#'  \item{explicitlyTargeted}{a boolean -  If this field is set to true, then the AdUnit will not be implicitly
#' targeted when its parent is. Traffickers must explicitly target such an ad
#' unit or else no line items will serve to it. This feature is only available
#' for DFP Premium accounts.}
#'  \item{inheritedAdSenseSettings}{a AdSenseSettingsInheritedProperty -  AdSense specific settings. This value is optional and if left blank will be
#' inherited from the parent ad unit.}
#'  \item{partnerId}{a integer -  The unique ID of the Company, which is of type Company.Type
#' AFFILIATE_DISTRIBUTION_PARTNER, to which this ad unit belongs. This
#' attribute is optional. Setting this attribute to null will disassociate the
#' partner from this ad unit.}
#'  \item{appliedLabelFrequencyCaps}{a LabelFrequencyCap -  The set of label frequency caps applied directly to this ad unit. There is a
#' limit of 10 label frequency caps per ad unit.}
#'  \item{effectiveLabelFrequencyCaps}{a LabelFrequencyCap -  Contains the set of labels applied directly to the ad unit as well as those
#' inherited from parent ad units. This field is readonly and is assigned by
#' Google.}
#'  \item{appliedLabels}{a AppliedLabel -  The set of labels applied directly to this ad unit.}
#'  \item{effectiveAppliedLabels}{a AppliedLabel -  Contains the set of labels applied directly to the ad unit as well as those
#' inherited from the parent ad units. If a label has been negated, only the
#' negated label is returned. This field is readonly and is assigned by Google.}
#'  \item{effectiveTeamIds}{a integer -  The IDs of all teams that this ad unit is on as well as those inherited from
#' parent ad units. This value is read-only and is set by Google.}
#'  \item{appliedTeamIds}{a integer -  The IDs of all teams that this ad unit is on directly.}
#'  \item{lastModifiedDateTime}{a DateTime -  The date and time this ad unit was last modified.}
#'  \item{smartSizeMode}{a SmartSizeMode - The smart size mode for this ad unit. This attribute is optional and
#' defaults to SmartSizeMode NONE for fixed sizes. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{NONE - Fixed size mode (default).}
#'      \item{SMART_BANNER - The height is fixed for the request, the width is a range.}
#'      \item{DYNAMIC_SIZE - Height and width are ranges.}
#'    }
#'   }
#'  \item{refreshRate}{a integer -  The interval in seconds which ad units in mobile apps automatically refresh.
#' Valid values are between 30 and 120 seconds. This attribute is optional and
#' only applies to ad units in mobile apps. If this value is not set, then the
#' mobile app ad will not refresh.}
#'  \item{isSharedByDistributor}{a boolean -  Whether this ad unit is shared by a distributor network. When this field is
#' true, then crossSellingDistributor will contain data for the distributor
#' network. This attribute is read-only.}
#'  \item{crossSellingDistributor}{a CrossSellingDistributor -  If this ad unit is shared by a distributor network, then this field will
#' contain data describing that distributor network. This attribute is
#' read-only.}
#'  \item{externalSetTopBoxChannelId}{a string -  Specifies an ID for a channel in an external set-top box campaign management
#' system. This attribute is only meaningful if isSetTopBoxEnabled is true.
#' This attribute is read-only.}
#'  \item{isSetTopBoxEnabled}{a boolean -  Flag that specifies whether this ad unit represents an external set-top box
#' channel. This attribute is read-only.}
#' }
#' 
#' \strong{AdUnitAction}
#' 
#' Represents the actions that can be performed on AdUnit objects. May take one of the actions listed below.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.AdUnitAction}{Google Documentation for AdUnitAction}
#' \describe{
#'  \item{ActivateAdUnits}{The action used for activating AdUnit objects.}
#'  \item{ArchiveAdUnits}{The action used for archiving AdUnit objects.}
#'  \item{AssignAdUnitsToPlacement}{The action used for assigning a group of AdUnit objects to a Placement.}
#'  \item{DeactivateAdUnits}{The action used for deactivating AdUnit objects.}
#'  \item{RemoveAdUnitsFromPlacement}{The action used for removing a group of AdUnit objects from a Placement.}
#' }
#' 
#' \strong{AdUnitAfcSizeError}
#' 
#' Caused by supplying sizes that are not compatible with the Afc sizes.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.AdUnitAfcSizeError}{Google Documentation for AdUnitAfcSizeError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a AdUnitAfcSizeError.Reason - This can take one of the following values:
#'    \itemize{
#'      \item{INVALID - The supplied Afc size is not valid.}
#'      \item{DOESNT_FIT - The supplied AdUnit size does not fit into any of the Afc sizes specified by
#' the ad unit's AdSenseSettings.}
#'      \item{NOT_APPLICABLE - The supplied Afc size is not applicable for the AdUnit. This should only be
#' set on the root AdUnit.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{AdUnitCodeError}
#' 
#' Lists the generic errors associated with AdUnit adUnitCode.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.AdUnitCodeError}{Google Documentation for AdUnitCodeError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a AdUnitCodeError.Reason - This can take one of the following values:
#'    \itemize{
#'      \item{INVALID_CHARACTERS - For AdUnit adUnitCode, only alpha-numeric characters, underscores, hyphens,
#' periods, asterisks, double quotes, back slashes, forward slashes,
#' exclamations, left angle brackets, colons and parentheses are allowed.}
#'      \item{INVALID_CHARACTERS_WHEN_UTF_CHARACTERS_ARE_ALLOWED - For AdUnit adUnitCode, only letters, numbers, underscores, hyphens, periods,
#' asterisks, double quotes, back slashes, forward slashes, exclamations, left
#' angle brackets, colons and parentheses are allowed.}
#'      \item{LEADING_FORWARD_SLASH - For AdUnit adUnitCode, forward slashes are not allowed as the first
#' character.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{AdUnitHierarchyError}
#' 
#' Caused by creating an AdUnit object with an invalid hierarchy.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.AdUnitHierarchyError}{Google Documentation for AdUnitHierarchyError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a AdUnitHierarchyError.Reason - This can take one of the following values:
#'    \itemize{
#'      \item{INVALID_DEPTH - The depth of the AdUnit in the inventory hierarchy is greater than is
#' allowed. The maximum allowed depth is two below the effective root ad unit
#' for Premium accounts and one level below effective root ad unit for Small
#' Business accounts.}
#'      \item{INVALID_PARENT - The only valid AdUnit parentId for a DFP Small Business account is the
#' Network effectiveRootAdUnitId.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{AdUnitPage}
#' 
#' Captures a page of AdUnit objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.AdUnitPage}{Google Documentation for AdUnitPage}
#' \describe{
#'  \item{totalResultSetSize}{a integer -  The size of the total result set to which this page belongs.}
#'  \item{startIndex}{a integer -  The absolute index in the total result set on which this page begins.}
#'  \item{results}{a AdUnit -  The collection of ad units contained within this page.}
#' }
#' 
#' \strong{AdUnitParent}
#' 
#' The summary of a parent AdUnit.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.AdUnitParent}{Google Documentation for AdUnitParent}
#' \describe{
#'  \item{id}{a string -  The ID of the parent AdUnit. This value is readonly and is populated by
#' Google.}
#'  \item{name}{a string -  The name of the parent AdUnit. This value is readonly and is populated by
#' Google.}
#'  \item{adUnitCode}{a string -  A string used to uniquely identify the ad unit for the purposes of serving
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.AdUnitSize}{Google Documentation for AdUnitSize}
#' \describe{
#'  \item{size}{a Size -  The permissible creative size that can be served inside this ad unit.}
#'  \item{environmentType}{a EnvironmentType - The environment type of the ad unit size. The default value is
#' EnvironmentType BROWSER. This can take one of the following values:
#'    \itemize{
#'      \item{BROWSER - A regular web browser.}
#'      \item{VIDEO_PLAYER - Video players (such as Flash applications).}
#'    }
#'   }
#'  \item{companions}{a AdUnitSize -  The companions for this ad unit size. Companions are only valid if the
#' environment is EnvironmentType VIDEO_PLAYER. If the environment is
#' EnvironmentType BROWSER including companions results in an error.}
#'  \item{fullDisplayString}{a string -  The full (including companion sizes, if applicable) display string of the
#' size, e.g. "300x250" or "300x250v (180x150)"}
#' }
#' 
#' \strong{AdUnitTypeError}
#' 
#' Lists the errors associated with the type of AdUnit object.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.AdUnitTypeError}{Google Documentation for AdUnitTypeError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a AdUnitTypeError.Reason - This can take one of the following values:
#'    \itemize{
#'      \item{MOBILE_APP_PLATFORM_NOT_VALID - Non-mobile AdUnit cannot have a mobile application platform.}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.ApiError}{Google Documentation for ApiError}
#' \describe{
#'  \item{fieldPath}{a string -  The OGNL field path to identify cause of error.}
#'  \item{trigger}{a string -  The data that caused the error.}
#'  \item{errorString}{a string -  A simple string representation of the error and reason.}
#' }
#' 
#' \strong{ApiException}
#' 
#' Exception class for holding a list of service errors.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.ApiException}{Google Documentation for ApiException}
#' \describe{
#'  \item{message}{a string (inherited from ApplicationException) -  Error message.}
#'  \item{errors}{a ApiError -  List of errors.}
#' }
#' 
#' \strong{ApiVersionError}
#' 
#' Errors related to the usage of API versions.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.ApiVersionError}{Google Documentation for ApiVersionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.ApplicationException}{Google Documentation for ApplicationException}
#' \describe{
#'  \item{message}{a string -  Error message.}
#' }
#' 
#' \strong{AppliedLabel}
#' 
#' Represents a Label that can be applied to an entity. To negate an inherited
#' label, create an AppliedLabel with labelId as the inherited label's ID and
#' isNegated set to true.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.AppliedLabel}{Google Documentation for AppliedLabel}
#' \describe{
#'  \item{labelId}{a integer -  The ID of a created Label.}
#'  \item{isNegated}{a boolean -  isNegated should be set to true to negate the effects of labelId.}
#' }
#' 
#' \strong{ArchiveAdUnits}
#' 
#' The action used for archiving AdUnit objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.ArchiveAdUnits}{Google Documentation for ArchiveAdUnits}
#' \describe{
#'  \item{extends AdUnitAction}{see documentation for AdUnitAction}
#' }
#' 
#' \strong{AssignAdUnitsToPlacement}
#' 
#' The action used for assigning a group of AdUnit objects to a Placement.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.AssignAdUnitsToPlacement}{Google Documentation for AssignAdUnitsToPlacement}
#' \describe{
#'  \item{extends AdUnitAction}{see documentation for AdUnitAction}
#'  \item{placementId}{a integer -  The Placement id to which ad units are to be assigned.}
#' }
#' 
#' \strong{AuthenticationError}
#' 
#' An error for an exception that occurred when authenticating.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.AuthenticationError}{Google Documentation for AuthenticationError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.BooleanValue}{Google Documentation for BooleanValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a boolean -  The boolean value.}
#' }
#' 
#' \strong{CollectionSizeError}
#' 
#' Error for the size of the collection being too large
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.CollectionSizeError}{Google Documentation for CollectionSizeError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.CommonError}{Google Documentation for CommonError}
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
#' \strong{CreativeWrapperError}
#' 
#' Errors specific to creative wrappers.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.CreativeWrapperError}{Google Documentation for CreativeWrapperError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a CreativeWrapperError.Reason - The error reason represented by an enum. This can take one of the following values:
#'    \itemize{
#'      \item{LABEL_ALREADY_ASSOCIATED_WITH_CREATIVE_WRAPPER - The label is already associated with a CreativeWrapper.}
#'      \item{INVALID_LABEL_TYPE - The label type of a creative wrapper must be LabelType CREATIVE_WRAPPER.}
#'      \item{UNRECOGNIZED_MACRO - A macro used inside the snippet is not recognized.}
#'      \item{NEITHER_HEADER_NOR_FOOTER_SPECIFIED - When creating a new creative wrapper, either header or footer should exist.}
#'      \item{CANNOT_USE_CREATIVE_WRAPPER_TYPE - The network has not been enabled for creating labels of type LabelType
#' CREATIVE_WRAPPER.}
#'      \item{CANNOT_UPDATE_LABEL_ID - Cannot update CreativeWrapper labelId.}
#'      \item{CANNOT_APPLY_TO_AD_UNIT_WITH_VIDEO_SIZES - Cannot apply LabelType CREATIVE_WRAPPER labels to an ad unit if it has no
#' descendants with AdUnit adUnitSizes of AdUnitSize environmentType as
#' EnvironmentType BROWSER.}
#'      \item{CANNOT_APPLY_TO_MOBILE_AD_UNIT - Cannot apply LabelType CREATIVE_WRAPPER labels to an ad unit if AdUnit
#' targetPlatform is of type TargetPlatform MOBILE}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{CrossSellError}
#' 
#' Lists all errors associated with cross selling.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.CrossSellError}{Google Documentation for CrossSellError}
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
#' \strong{CrossSellingDistributor}
#' 
#' Encapsulation of data describing a distributor network that has shared an ad
#' unit with a content provider network.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.CrossSellingDistributor}{Google Documentation for CrossSellingDistributor}
#' \describe{
#'  \item{networkName}{a string -  The name of the distributor network sharing its ad unit with the active
#' content provider network.}
#' }
#' 
#' \strong{Date}
#' 
#' Represents a date.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.Date}{Google Documentation for Date}
#' \describe{
#'  \item{year}{a integer -  Year (e.g., 2009)}
#'  \item{month}{a integer -  Month (1..12)}
#'  \item{day}{a integer -  Day (1..31)}
#' }
#' 
#' \strong{DateTime}
#' 
#' Represents a date combined with the time of day.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.DateTime}{Google Documentation for DateTime}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.DateTimeValue}{Google Documentation for DateTimeValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a DateTime -  The DateTime value.}
#' }
#' 
#' \strong{DateValue}
#' 
#' Contains a date value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.DateValue}{Google Documentation for DateValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a Date -  The Date value.}
#' }
#' 
#' \strong{DeactivateAdUnits}
#' 
#' The action used for deactivating AdUnit objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.DeactivateAdUnits}{Google Documentation for DeactivateAdUnits}
#' \describe{
#'  \item{extends AdUnitAction}{see documentation for AdUnitAction}
#' }
#' 
#' \strong{EntityLimitReachedError}
#' 
#' An error that occurs when creating an entity if the limit on the number of
#' allowed entities for a network has already been reached.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.EntityLimitReachedError}{Google Documentation for EntityLimitReachedError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.FeatureError}{Google Documentation for FeatureError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.FrequencyCap}{Google Documentation for FrequencyCap}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.FrequencyCapError}{Google Documentation for FrequencyCapError}
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
#' \strong{InternalApiError}
#' 
#' Indicates that a server-side error has occured. InternalApiErrors are
#' generally not the result of an invalid request or message sent by the
#' client.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.InternalApiError}{Google Documentation for InternalApiError}
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
#' \strong{InvalidColorError}
#' 
#' A list of all errors associated with a color attribute.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.InvalidColorError}{Google Documentation for InvalidColorError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a InvalidColorError.Reason - This can take one of the following values:
#'    \itemize{
#'      \item{INVALID_FORMAT - The provided value is not a valid hexadecimal color.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{InventoryUnitError}
#' 
#' Lists the generic errors associated with AdUnit objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.InventoryUnitError}{Google Documentation for InventoryUnitError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a InventoryUnitError.Reason - This can take one of the following values:
#'    \itemize{
#'      \item{EXPLICIT_TARGETING_NOT_ALLOWED - AdUnit explicitlyTargeted can be set to true only in a DFP Premium account.}
#'      \item{TARGET_PLATFORM_NOT_APPLICABLE - The specified target platform is not applicable for the inventory unit.}
#'      \item{ADSENSE_CANNOT_BE_ENABLED - AdSense cannot be enabled on this inventory unit if it is disabled for the
#' network.}
#'      \item{ROOT_UNIT_CANNOT_BE_DEACTIVATED - A root unit cannot be deactivated.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{InventoryUnitPartnerAssociationError}
#' 
#' Errors relating to the association of partner companies with inventory
#' units.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.InventoryUnitPartnerAssociationError}{Google Documentation for InventoryUnitPartnerAssociationError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a InventoryUnitPartnerAssociationError.Reason - This can take one of the following values:
#'    \itemize{
#'      \item{ANCESTOR_AD_UNIT_HAS_PARTNER_ASSOCIATION - Indicates the error that the ancestor inventory unit has already been
#' associated to a partner.}
#'      \item{DESCENDANT_AD_UNIT_HAS_PARTNER_ASSOCIATION - Indicates the error that at least one of the descendant inventory units have
#' already been associated to a partner.}
#'      \item{NO_PARTNER_CATCH_ALL - Indicates the error that the partner intended to be associated has no
#' default financial term. Default financial term is essential for those
#' partner associating with inventory units.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{InventoryUnitRefreshRateError}
#' 
#' Lists errors relating to AdUnit refreshRate.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.InventoryUnitRefreshRateError}{Google Documentation for InventoryUnitRefreshRateError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a InventoryUnitRefreshRateError.Reason - This can take one of the following values:
#'    \itemize{
#'      \item{INVALID_RANGE - The refresh rate must be between 30 and 120 seconds.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{InventoryUnitSizesError}
#' 
#' An error specifically for InventoryUnitSizes.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.InventoryUnitSizesError}{Google Documentation for InventoryUnitSizesError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.LabelEntityAssociationError}{Google Documentation for LabelEntityAssociationError}
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
#' \strong{LabelFrequencyCap}
#' 
#' A LabelFrequencyCap assigns a frequency cap to a label. The frequency cap
#' will limit the cumulative number of impressions of any ad units with this
#' label that may be shown to a particular user over a time unit.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.LabelFrequencyCap}{Google Documentation for LabelFrequencyCap}
#' \describe{
#'  \item{frequencyCap}{a FrequencyCap -  The frequency cap to be applied with this label.}
#'  \item{labelId}{a integer -  ID of the label being capped on the AdUnit.}
#' }
#' 
#' \strong{NotNullError}
#' 
#' Caused by supplying a null value for an attribute that cannot be null.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.NotNullError}{Google Documentation for NotNullError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.NullError}{Google Documentation for NullError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.NumberValue}{Google Documentation for NumberValue}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.ObjectValue}{Google Documentation for ObjectValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#' }
#' 
#' \strong{ParseError}
#' 
#' Lists errors related to parsing.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.ParseError}{Google Documentation for ParseError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.PermissionError}{Google Documentation for PermissionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.PublisherQueryLanguageContextError}{Google Documentation for PublisherQueryLanguageContextError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.PublisherQueryLanguageSyntaxError}{Google Documentation for PublisherQueryLanguageSyntaxError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.QuotaError}{Google Documentation for QuotaError}
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
#' \strong{RegExError}
#' 
#' Caused by supplying a value for an object attribute that does not conform to
#' a documented valid regular expression.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.RegExError}{Google Documentation for RegExError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a RegExError.Reason - The error reason represented by an enum. This can take one of the following values:
#'    \itemize{
#'      \item{INVALID - Invalid value found.}
#'      \item{NULL - Null value found.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{RemoveAdUnitsFromPlacement}
#' 
#' The action used for removing a group of AdUnit objects from a Placement.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.RemoveAdUnitsFromPlacement}{Google Documentation for RemoveAdUnitsFromPlacement}
#' \describe{
#'  \item{extends AdUnitAction}{see documentation for AdUnitAction}
#'  \item{placementId}{a integer -  The Placement id from which ad units are to be removed.}
#' }
#' 
#' \strong{RequiredCollectionError}
#' 
#' A list of all errors to be used for validating sizes of collections.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.RequiredCollectionError}{Google Documentation for RequiredCollectionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.RequiredError}{Google Documentation for RequiredError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.RequiredNumberError}{Google Documentation for RequiredNumberError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.ServerError}{Google Documentation for ServerError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.SetValue}{Google Documentation for SetValue}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.Size}{Google Documentation for Size}
#' \describe{
#'  \item{width}{a integer -  The width of the AdUnit, LineItem or Creative.}
#'  \item{height}{a integer -  The height of the AdUnit, LineItem or Creative.}
#'  \item{isAspectRatio}{a boolean -  True if this size represents an aspect ratio, false otherwise.}
#' }
#' 
#' \strong{Size_StringMapEntry}
#' 
#' This represents an entry in a map with a key of type Size and value of type
#' String.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.Size_StringMapEntry}{Google Documentation for Size_StringMapEntry}
#' \describe{
#'  \item{key}{a Size}
#'  \item{value}{a string}
#' }
#' 
#' \strong{SoapRequestHeader}
#' 
#' Represents the SOAP request header used by API requests.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.SoapRequestHeader}{Google Documentation for SoapRequestHeader}
#' \describe{
#'  \item{networkCode}{a string -  The network code to use in the context of a request.}
#'  \item{applicationName}{a string -  The name of client library application.}
#' }
#' 
#' \strong{SoapResponseHeader}
#' 
#' Represents the SOAP request header used by API responses.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.SoapResponseHeader}{Google Documentation for SoapResponseHeader}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.Statement}{Google Documentation for Statement}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.StatementError}{Google Documentation for StatementError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.String_ValueMapEntry}{Google Documentation for String_ValueMapEntry}
#' \describe{
#'  \item{key}{a string}
#'  \item{value}{a Value}
#' }
#' 
#' \strong{StringLengthError}
#' 
#' Errors for Strings which do not meet given length constraints.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.StringLengthError}{Google Documentation for StringLengthError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.TeamError}{Google Documentation for TeamError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.TextValue}{Google Documentation for TextValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a string -  The string value.}
#' }
#' 
#' \strong{TypeError}
#' 
#' An error for a field which is an invalid type.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.TypeError}{Google Documentation for TypeError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#' }
#' 
#' \strong{UniqueError}
#' 
#' An error for a field which must satisfy a uniqueness constraint
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.UniqueError}{Google Documentation for UniqueError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#' }
#' 
#' \strong{UpdateResult}
#' 
#' Represents the result of performing an action on objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.UpdateResult}{Google Documentation for UpdateResult}
#' \describe{
#'  \item{numChanges}{a integer -  The number of objects that were changed as a result of performing the
#' action.}
#' }
#' 
#' \strong{Value}
#' 
#' Value represents a value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService.Value}{Google Documentation for Value}
#' \describe{
#' }
#' 
#' 
#' 
#' @usage dfp_InventoryService_object_factory(obj_type, obj_data)
#' 
#' @param obj_type a string from one of the object types described below
#' @param obj_data a \code{list} of \code{lists} or a \code{data.frame} with the required components to create
#' the obj_type specified. All input names must match the expected attributes for the object.
#' If submitting a list of attributes to create 1 object make sure to nest it inside top-level list, so that
#' it is a list of length 1 with 1 list of attributes to create the object.
#' @return a string of formatted XML that can be inserted into a SOAP request body to the API
#' @export
dfp_InventoryService_object_factory <- function(obj_type, obj_data){

  if(is.data.frame(obj_data)){
    sampled_names <- names(obj_data)
  } else if(is.list(obj_data)){
    sampled_names <- names(obj_data[[1]])
  } else {
    stop("obj_data must be a list or data.frame")
  }

  if(obj_type=='AdSenseSettings'){
    stopifnot(all(sampled_names %in% c('adSenseEnabled', 'borderColor', 'titleColor', 'backgroundColor', 'textColor', 'urlColor', 'adType', 'borderStyle', 'fontFamily', 'fontSize', 'afcFormats')))
  }

  if(obj_type=='AdSenseSettingsInheritedProperty'){
    stopifnot(all(sampled_names %in% c('value')))
  }

  if(obj_type=='AdUnit'){
    stopifnot(all(sampled_names %in% c('id', 'parentId', 'hasChildren', 'parentPath', 'name', 'description', 'targetWindow', 'status', 'adUnitCode', 'adUnitSizes', 'targetPlatform', 'mobilePlatform', 'explicitlyTargeted', 'inheritedAdSenseSettings', 'partnerId', 'appliedLabelFrequencyCaps', 'effectiveLabelFrequencyCaps', 'appliedLabels', 'effectiveAppliedLabels', 'effectiveTeamIds', 'appliedTeamIds', 'lastModifiedDateTime', 'smartSizeMode', 'refreshRate', 'isSharedByDistributor', 'crossSellingDistributor', 'externalSetTopBoxChannelId', 'isSetTopBoxEnabled')))
  }

  if(obj_type=='AdUnitParent'){
    stopifnot(all(sampled_names %in% c('id', 'name', 'adUnitCode')))
  }

  if(obj_type=='AdUnitSize'){
    stopifnot(all(sampled_names %in% c('size', 'environmentType', 'companions', 'fullDisplayString')))
  }

  if(obj_type=='AppliedLabel'){
    stopifnot(all(sampled_names %in% c('labelId', 'isNegated')))
  }

  if(obj_type=='AssignAdUnitsToPlacement'){
    stopifnot(all(sampled_names %in% c('placementId')))
  }

  if(obj_type=='CrossSellingDistributor'){
    stopifnot(all(sampled_names %in% c('networkName')))
  }

  if(obj_type=='FrequencyCap'){
    stopifnot(all(sampled_names %in% c('maxImpressions', 'numTimeUnits', 'timeUnit')))
  }

  if(obj_type=='LabelFrequencyCap'){
    stopifnot(all(sampled_names %in% c('frequencyCap', 'labelId')))
  }

  if(obj_type=='RemoveAdUnitsFromPlacement'){
    stopifnot(all(sampled_names %in% c('placementId')))
  }

  if(obj_type=='Size'){
    stopifnot(all(sampled_names %in% c('width', 'height', 'isAspectRatio')))
  }

  if(obj_type=='Size_StringMapEntry'){
    stopifnot(all(sampled_names %in% c('key', 'value')))
  }

}
#' 
#' createAdUnits
#' 
#' Creates new AdUnit objects.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService#createAdUnits}{Google Documentation for createAdUnits}
#' 
#' @usage dfp_createAdUnits(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a createAdUnitsResponse
#' @export
dfp_createAdUnits <- function(request_data){

  request_body <- make_request_body(service='InventoryService', root_name='createAdUnits', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['createAdUnitsResponse']])$rval
  response <- if(is.null(response)) NULL else xmlToList(response)
  return(response)
}
#' 
#' getAdUnitSizesByStatement
#' 
#' Gets a set of AdUnitSize objects that satisfy the given Statement query. The following fields are supported for filtering:  An exception will be thrown for queries with unsupported fields. Paging is not supported, as aren't the LIMIT and OFFSET PQL keywords. Only "=" operator is supported. a set of ad unit sizes 
#' \itemize{
#'   \item{targetPlatform}
#' }
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService#getAdUnitSizesByStatement}{Google Documentation for getAdUnitSizesByStatement}
#' 
#' @usage dfp_getAdUnitSizesByStatement(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a getAdUnitSizesByStatementResponse
#' @export
dfp_getAdUnitSizesByStatement <- function(request_data){

  request_body <- make_request_body(service='InventoryService', root_name='getAdUnitSizesByStatement', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getAdUnitSizesByStatementResponse']])$rval
  response <- if(is.null(response)) NULL else xmlToList(response)
  return(response)
}
#' 
#' getAdUnitsByStatement
#' 
#' Gets a AdUnitPage of AdUnit objects that satisfy the given Statement query. The following fields are supported for filtering:  a set of ad units 
#' \itemize{
#'   \item{adUnitCode}
#'   \item{id}
#'   \item{name}
#'   \item{parentId}
#'   \item{status}
#'   \item{lastModifiedDateTime}
#' }
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService#getAdUnitsByStatement}{Google Documentation for getAdUnitsByStatement}
#' 
#' @usage dfp_getAdUnitsByStatement(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a getAdUnitsByStatementResponse
#' @export
dfp_getAdUnitsByStatement <- function(request_data){

  request_body <- make_request_body(service='InventoryService', root_name='getAdUnitsByStatement', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getAdUnitsByStatementResponse']])$rval
  response <- if(is.null(response)) NULL else xmlToList(response)
  return(response)
}
#' 
#' performAdUnitAction
#' 
#' Performs actions on AdUnit objects that match the given Statement query. a set of ad units
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService#performAdUnitAction}{Google Documentation for performAdUnitAction}
#' 
#' @usage dfp_performAdUnitAction(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a performAdUnitActionResponse
#' @export
dfp_performAdUnitAction <- function(request_data){

  request_body <- make_request_body(service='InventoryService', root_name='performAdUnitAction', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['performAdUnitActionResponse']])$rval
  response <- if(is.null(response)) NULL else xmlToList(response)
  return(response)
}
#' 
#' updateAdUnits
#' 
#' Updates the specified AdUnit objects.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/InventoryService#updateAdUnits}{Google Documentation for updateAdUnits}
#' 
#' @usage dfp_updateAdUnits(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a updateAdUnitsResponse
#' @export
dfp_updateAdUnits <- function(request_data){

  request_body <- make_request_body(service='InventoryService', root_name='updateAdUnits', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['updateAdUnitsResponse']])$rval
  response <- if(is.null(response)) NULL else xmlToList(response)
  return(response)
}
#' 
