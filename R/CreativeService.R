#' CreativeService
#' 
#' Provides methods for adding, updating and retrieving Creative objects.
#'
#' For a creative to run, it must be associated with a LineItem managed by
#' the LineItemCreativeAssociationService.
#' 
#' CreativeService Object Factory
#' 
#' A function to create a variety of objects that are part of the CreativeService
#' Note: not all objects here are inputs to the functions of this service so 
#' please consult each function for the required inputs
#' 
#' Below is a list of objects and their required components to be created with this function:
#' 
#' \strong{AdExchangeCreative}
#' 
#' An Ad Exchange dynamic allocation creative.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.AdExchangeCreative}{Google Documentation for AdExchangeCreative}
#' \describe{
#'  \item{codeSnippet}{a string (inherited from HasHtmlSnippetDynamicAllocationCreative) -  The code snippet (ad tag) from Ad Exchange or AdSense to traffic the dynamic
#' allocation creative. Only valid Ad Exchange or AdSense parameters will be
#' considered. Any extraneous HTML or JavaScript will be ignored.}
#'  \item{isNativeEligible}{a boolean -  Whether this creative is eligible for native ad-serving. This value is
#' optional and defaults to false.}
#'  \item{isInterstitial}{a boolean -  true if this creative is interstitial. An interstitial creative will not
#' consider an impression served until it is fully rendered in the browser.}
#' }
#' 
#' \strong{AdMobBackfillCreative}
#' 
#' An AdMob backfill creative.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.AdMobBackfillCreative}{Google Documentation for AdMobBackfillCreative}
#' \describe{
#'  \item{extends BaseDynamicAllocationCreative}{see documentation for BaseDynamicAllocationCreative}
#'  \item{additionalParameters}{a string -  Optional parameters that you can append to the request to AdMob, for
#' example, test=true&bgcolor=000000.}
#'  \item{publisherId}{a string -  The AdMob publisher ID. See
#' https://support.google.com/dfp_premium/answer/1209767 admob for more
#' information. This attribute is required.}
#'  \item{lockedOrientation}{a LockedOrientation - A locked orientation for this creative to be displayed in. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{FREE_ORIENTATION}
#'      \item{PORTRAIT_ONLY}
#'      \item{LANDSCAPE_ONLY}
#'    }
#'   }
#' }
#' 
#' \strong{AdSenseCreative}
#' 
#' An AdSense dynamic allocation creative.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.AdSenseCreative}{Google Documentation for AdSenseCreative}
#' \describe{
#'  \item{codeSnippet}{a string (inherited from HasHtmlSnippetDynamicAllocationCreative) -  The code snippet (ad tag) from Ad Exchange or AdSense to traffic the dynamic
#' allocation creative. Only valid Ad Exchange or AdSense parameters will be
#' considered. Any extraneous HTML or JavaScript will be ignored.}
#' }
#' 
#' \strong{ApiError}
#' 
#' The API error base class that provides details about an error that occurred
#' while processing a service request. The OGNL field path is provided for
#' parsers to identify the request data element that may have caused the error.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.ApiError}{Google Documentation for ApiError}
#' \describe{
#'  \item{fieldPath}{a string -  The OGNL field path to identify cause of error.}
#'  \item{trigger}{a string -  The data that caused the error.}
#'  \item{errorString}{a string -  A simple string representation of the error and reason.}
#' }
#' 
#' \strong{ApiException}
#' 
#' Exception class for holding a list of service errors.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.ApiException}{Google Documentation for ApiException}
#' \describe{
#'  \item{message}{a string (inherited from ApplicationException) -  Error message.}
#'  \item{errors}{a ApiError -  List of errors.}
#' }
#' 
#' \strong{ApiVersionError}
#' 
#' Errors related to the usage of API versions.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.ApiVersionError}{Google Documentation for ApiVersionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.ApplicationException}{Google Documentation for ApplicationException}
#' \describe{
#'  \item{message}{a string -  Error message.}
#' }
#' 
#' \strong{AppliedLabel}
#' 
#' Represents a Label that can be applied to an entity. To negate an inherited
#' label, create an AppliedLabel with labelId as the inherited label's ID and
#' isNegated set to true.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.AppliedLabel}{Google Documentation for AppliedLabel}
#' \describe{
#'  \item{labelId}{a integer -  The ID of a created Label.}
#'  \item{isNegated}{a boolean -  isNegated should be set to true to negate the effects of labelId.}
#' }
#' 
#' \strong{AspectRatioImageCreative}
#' 
#' A Creative intended for mobile platforms that displays an image, whose
#' LineItem creativePlaceholders size is defined as an CreativeSizeType
#' ASPECT_RATIO aspect ratio, i.e. Size isAspectRatio. It can have multiple
#' images whose dimensions conform to that aspect ratio.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.AspectRatioImageCreative}{Google Documentation for AspectRatioImageCreative}
#' \describe{
#'  \item{destinationUrl}{a string (inherited from HasDestinationUrlCreative) -  The URL that the user is directed to if they click on the creative. This
#' attribute is required and has a maximum length of 1024 characters.}
#'  \item{destinationUrlType}{a DestinationUrlType (inherited from HasDestinationUrlCreative) -  The action that should be performed if the user clicks on the creative. This
#' attribute is optional and defaults to DestinationUrlType CLICK_TO_WEB.}
#'  \item{imageAssets}{a CreativeAsset -  The images associated with this creative. The ad server will choose one
#' based on the capabilities of the device. Each asset should have a size which
#' is of the same aspect ratio as the Creative size. This attribute is required
#' and must have at least one asset.}
#'  \item{altText}{a string -  The text that is served along with the image creative, primarily for
#' accessibility. If no suitable image size is available for the device, this
#' text replaces the image completely. This field is optional and has a maximum
#' length of 500 characters.}
#'  \item{thirdPartyImpressionUrl}{a string -  An impression tracking URL to ping when this creative is displayed. This
#' field is optional and has a maximum length of 1024 characters.}
#'  \item{overrideSize}{a boolean -  Allows the actual image asset sizes to differ from the creative size. This
#' attribute is optional.}
#' }
#' 
#' \strong{Asset}
#' 
#' Base asset properties.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.Asset}{Google Documentation for Asset}
#' \describe{
#' }
#' 
#' \strong{AssetCreativeTemplateVariableValue}
#' 
#' Stores values of CreativeTemplateVariable of VariableType ASSET.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.AssetCreativeTemplateVariableValue}{Google Documentation for AssetCreativeTemplateVariableValue}
#' \describe{
#'  \item{uniqueName}{a string (inherited from BaseCreativeTemplateVariableValue) -  A uniqueName of the CreativeTemplateVariable.}
#'  \item{assetId}{a integer -  The ID of the associated asset. This attribute is read-only and is populated
#' by Google.}
#'  \item{assetByteArray}{a base64Binary -  The content of the asset as a byte array. This attribute is required when
#' creating a new TemplateCreative.  When updating the content, pass a new byte
#' array, and set assetId to null. Otherwise, this field can be null.  The
#' assetByteArray will be null when the TemplateCreative is retrieved.}
#'  \item{fileName}{a string -  The file name of the asset. This attribute is required when creating a new
#' asset (e.g. when assetByteArray is not null).}
#' }
#' 
#' \strong{AssetError}
#' 
#' Lists all errors associated with assets.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.AssetError}{Google Documentation for AssetError}
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
#' \strong{AuthenticationError}
#' 
#' An error for an exception that occurred when authenticating.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.AuthenticationError}{Google Documentation for AuthenticationError}
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
#' \strong{BaseCreativeTemplateVariableValue}
#' 
#' A base class for storing values of the CreativeTemplateVariable.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.BaseCreativeTemplateVariableValue}{Google Documentation for BaseCreativeTemplateVariableValue}
#' \describe{
#'  \item{uniqueName}{a string -  A uniqueName of the CreativeTemplateVariable.}
#' }
#' 
#' \strong{BaseCustomFieldValue}
#' 
#' The value of a CustomField for a particular entity.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.BaseCustomFieldValue}{Google Documentation for BaseCustomFieldValue}
#' \describe{
#'  \item{customFieldId}{a integer -  Id of the CustomField to which this value belongs. This attribute is
#' required.}
#' }
#' 
#' \strong{BaseDynamicAllocationCreative}
#' 
#' A base class for dynamic allocation creatives.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.BaseDynamicAllocationCreative}{Google Documentation for BaseDynamicAllocationCreative}
#' \describe{
#'  \item{advertiserId}{a integer (inherited from Creative) -  The ID of the advertiser that owns the creative. This attribute is required.}
#'  \item{id}{a integer (inherited from Creative) -  Uniquely identifies the Creative. This value is read-only and is assigned by
#' Google when the creative is created. This attribute is required for updates.}
#'  \item{name}{a string (inherited from Creative) -  The name of the creative. This attribute is required and has a maximum
#' length of 255 characters.}
#'  \item{size}{a Size (inherited from Creative) -  The Size of the creative. This attribute is required.}
#'  \item{previewUrl}{a string (inherited from Creative) -  The URL of the creative for previewing the media. This attribute is
#' read-only and is assigned by Google when a creative is created.}
#'  \item{policyViolations}{a CreativePolicyViolation (inherited from Creative) -  Set of policy violations detected for this creative. This attribute is
#' read-only.}
#'  \item{appliedLabels}{a AppliedLabel (inherited from Creative) -  The set of labels applied to this creative.}
#'  \item{lastModifiedDateTime}{a DateTime (inherited from Creative) -  The date and time this creative was last modified.}
#'  \item{customFieldValues}{a BaseCustomFieldValue (inherited from Creative) -  The values of the custom fields associated with this creative.}
#' }
#' 
#' \strong{BaseFlashCreative}
#' 
#' A base type for creatives that display a Flash-based ad. If the Flash ad
#' cannot load, a fallback image is displayed instead.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.BaseFlashCreative}{Google Documentation for BaseFlashCreative}
#' \describe{
#'  \item{destinationUrl}{a string (inherited from HasDestinationUrlCreative) -  The URL that the user is directed to if they click on the creative. This
#' attribute is required and has a maximum length of 1024 characters.}
#'  \item{destinationUrlType}{a DestinationUrlType (inherited from HasDestinationUrlCreative) -  The action that should be performed if the user clicks on the creative. This
#' attribute is optional and defaults to DestinationUrlType CLICK_TO_WEB.}
#'  \item{overrideSize}{a boolean -  Allows the creative size to differ from the actual Flash asset size. This
#' attribute is optional.}
#'  \item{clickTagRequired}{a boolean -  Specifies whether the Flash asset is required to have a click tag embedded
#' in it or not. This attribute is optional.}
#'  \item{sslScanResult}{a SslScanResult - The SSL compatibility scan result of this creative. This attribute is
#' read-only and determined by Google. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{UNSCANNED}
#'      \item{SCANNED_SSL}
#'      \item{SCANNED_NON_SSL}
#'    }
#'   }
#'  \item{sslManualOverride}{a SslManualOverride - The manual override for the SSL compatibility of this creative. This
#' attribute is optional and defaults to SslManualOverride NO_OVERRIDE. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{NO_OVERRIDE}
#'      \item{SSL_COMPATIBLE}
#'      \item{NOT_SSL_COMPATIBLE}
#'    }
#'   }
#'  \item{flashAsset}{a CreativeAsset -  The flash asset. This attribute is required. To view the Flash image, use
#' the CreativeAsset assetUrl.}
#'  \item{fallbackImageAsset}{a CreativeAsset -  The image asset to fall back on if the flash creative cannot be loaded. To
#' view the fallback image, use the CreativeAsset assetUrl.}
#' }
#' 
#' \strong{BaseFlashRedirectCreative}
#' 
#' The base type for creatives that load a Flash asset from a specified URL. If
#' the remote flash asset cannot be served, a fallback image is used at an
#' alternate URL.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.BaseFlashRedirectCreative}{Google Documentation for BaseFlashRedirectCreative}
#' \describe{
#'  \item{destinationUrl}{a string (inherited from HasDestinationUrlCreative) -  The URL that the user is directed to if they click on the creative. This
#' attribute is required and has a maximum length of 1024 characters.}
#'  \item{destinationUrlType}{a DestinationUrlType (inherited from HasDestinationUrlCreative) -  The action that should be performed if the user clicks on the creative. This
#' attribute is optional and defaults to DestinationUrlType CLICK_TO_WEB.}
#'  \item{flashUrl}{a string -  The URL where the Flash asset resides. This attribute is required and has a
#' maximum length of 1024 characters.}
#'  \item{fallbackUrl}{a string -  The fallback URL to use if the Flash URL cannot be used. This attribute is
#' required and has a maximum length of 1024 characters.}
#'  \item{fallbackPreviewUrl}{a string -  The URL of the fallback image for preview. This attribute is read-only and
#' is populated by Google.}
#'  \item{sslScanResult}{a SslScanResult - The SSL compatibility scan result of this creative. This attribute is
#' read-only and determined by Google. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{UNSCANNED}
#'      \item{SCANNED_SSL}
#'      \item{SCANNED_NON_SSL}
#'    }
#'   }
#'  \item{sslManualOverride}{a SslManualOverride - The manual override for the SSL compatibility of this creative. This
#' attribute is optional and defaults to SslManualOverride NO_OVERRIDE. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{NO_OVERRIDE}
#'      \item{SSL_COMPATIBLE}
#'      \item{NOT_SSL_COMPATIBLE}
#'    }
#'   }
#' }
#' 
#' \strong{BaseImageCreative}
#' 
#' The base type for creatives that display an image.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.BaseImageCreative}{Google Documentation for BaseImageCreative}
#' \describe{
#'  \item{destinationUrl}{a string (inherited from HasDestinationUrlCreative) -  The URL that the user is directed to if they click on the creative. This
#' attribute is required and has a maximum length of 1024 characters.}
#'  \item{destinationUrlType}{a DestinationUrlType (inherited from HasDestinationUrlCreative) -  The action that should be performed if the user clicks on the creative. This
#' attribute is optional and defaults to DestinationUrlType CLICK_TO_WEB.}
#'  \item{overrideSize}{a boolean -  Allows the creative size to differ from the actual image asset size. This
#' attribute is optional.}
#'  \item{primaryImageAsset}{a CreativeAsset -  The primary image asset associated with this creative. This attribute is
#' required.}
#' }
#' 
#' \strong{BaseImageRedirectCreative}
#' 
#' The base type for creatives that load an image asset from a specified URL.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.BaseImageRedirectCreative}{Google Documentation for BaseImageRedirectCreative}
#' \describe{
#'  \item{destinationUrl}{a string (inherited from HasDestinationUrlCreative) -  The URL that the user is directed to if they click on the creative. This
#' attribute is required and has a maximum length of 1024 characters.}
#'  \item{destinationUrlType}{a DestinationUrlType (inherited from HasDestinationUrlCreative) -  The action that should be performed if the user clicks on the creative. This
#' attribute is optional and defaults to DestinationUrlType CLICK_TO_WEB.}
#'  \item{imageUrl}{a string -  The URL where the actual asset resides. This attribute is required and has a
#' maximum length of 1024 characters.}
#' }
#' 
#' \strong{BaseRichMediaStudioCreative}
#' 
#' A Creative that is created by a Rich Media Studio.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.BaseRichMediaStudioCreative}{Google Documentation for BaseRichMediaStudioCreative}
#' \describe{
#'  \item{advertiserId}{a integer (inherited from Creative) -  The ID of the advertiser that owns the creative. This attribute is required.}
#'  \item{id}{a integer (inherited from Creative) -  Uniquely identifies the Creative. This value is read-only and is assigned by
#' Google when the creative is created. This attribute is required for updates.}
#'  \item{name}{a string (inherited from Creative) -  The name of the creative. This attribute is required and has a maximum
#' length of 255 characters.}
#'  \item{size}{a Size (inherited from Creative) -  The Size of the creative. This attribute is required.}
#'  \item{previewUrl}{a string (inherited from Creative) -  The URL of the creative for previewing the media. This attribute is
#' read-only and is assigned by Google when a creative is created.}
#'  \item{policyViolations}{a CreativePolicyViolation (inherited from Creative) -  Set of policy violations detected for this creative. This attribute is
#' read-only.}
#'  \item{appliedLabels}{a AppliedLabel (inherited from Creative) -  The set of labels applied to this creative.}
#'  \item{lastModifiedDateTime}{a DateTime (inherited from Creative) -  The date and time this creative was last modified.}
#'  \item{customFieldValues}{a BaseCustomFieldValue (inherited from Creative) -  The values of the custom fields associated with this creative.}
#'  \item{studioCreativeId}{a integer -  The creative ID as known by Rich Media Studio creative. This attribute is
#' readonly.}
#'  \item{creativeFormat}{a RichMediaStudioCreativeFormat - The creative format of the Rich Media Studio creative. This attribute is
#' readonly. This can take one of the following values:
#'    \itemize{
#'      \item{IN_PAGE - In-page creatives are served into an ad slot on publishers page. In-page
#' implies that they maintain a static size, e.g, 468x60 and do not break out
#' of these dimensions.}
#'      \item{EXPANDING - Expanding creatives expand/collapse on user interaction such as mouse over.
#' It consists of an initial, or collapsed and an expanded creative area.}
#'      \item{IM_EXPANDING - Creatives that are served in an instant messenger application such as AOL
#' Instant Messanger or Yahoo! Messenger. This can also be used in desktop
#' applications such as weatherbug.}
#'      \item{FLOATING - Floating creatives float on top of publishers page and can be closed with a
#' close button.}
#'      \item{PEEL_DOWN - Peel-down creatives show a glimpse of your ad in the corner of a web page.
#' When the user interacts, the rest of the ad peels down to reveal the full
#' message.}
#'      \item{IN_PAGE_WITH_FLOATING - An In-Page with Floating creative is a dual-asset creative consisting of an
#' in-page asset and a floating asset. This creative type lets you deliver a
#' static primary ad to a webpage, while inviting a user to find out more
#' through a floating asset delivered when the user interacts with the
#' creative.}
#'      \item{FLASH_IN_FLASH - A Flash ad that renders in a Flash environment. The adserver will serve this
#' using VAST, but it is not a proper VAST XML ad. It's an amalgamation of the
#' proprietary InStream protocol, rendered inside VAST so that we can capture
#' some standard behavior such as companions.}
#'      \item{FLASH_IN_FLASH_EXPANDING - An expanding flash ad that renders in a Flash environment. The adserver will
#' serve this using VAST, but it is not a proper VAST XML ad. It's an
#' amalgamation of the proprietary InStream protocol, rendered inside VAST so
#' that we can capture some standard behavior such as companions.}
#'      \item{IN_APP - In-app creatives are served into an ad slot within a publisher's app. In-app
#' implies that they maintain a static size, e.g, 468x60 and do not break out
#' of these dimensions.}
#'      \item{UNKNOWN - The creative format is unknown or not supported in the API version in use.}
#'    }
#'   }
#'  \item{artworkType}{a RichMediaStudioCreativeArtworkType - The type of artwork used in this creative. This attribute is readonly. This can take one of the following values:
#'    \itemize{
#'      \item{FLASH - The creative is a Flash creative.}
#'      \item{HTML5 - The creative is HTML5.}
#'      \item{MIXED - The creative is Flash if available, and HTML5 otherwise.}
#'    }
#'   }
#'  \item{totalFileSize}{a integer -  The total size of all assets in bytes. This attribute is readonly.}
#'  \item{adTagKeys}{a string -  Ad tag keys. This attribute is optional and updatable.}
#'  \item{customKeyValues}{a string -  Custom key values. This attribute is optional and updatable.}
#'  \item{surveyUrl}{a string -  The survey URL for this creative. This attribute is optional and updatable.}
#'  \item{allImpressionsUrl}{a string -  The tracking URL to be triggered when an ad starts to play, whether Rich
#' Media or backup content is displayed. Behaves like the /imp URL that DART
#' used to track impressions. This URL can't exceed 1024 characters and must
#' start with http:// or https://. This attribute is optional and updatable.}
#'  \item{richMediaImpressionsUrl}{a string -  The tracking URL to be triggered when any rich media artwork is displayed in
#' an ad. Behaves like the /imp URL that DART used to track impressions. This
#' URL can't exceed 1024 characters and must start with http:// or https://.
#' This attribute is optional and updatable.}
#'  \item{backupImageImpressionsUrl}{a string -  The tracking URL to be triggered when the Rich Media backup image is served.
#' This attribute is optional and updatable.}
#'  \item{overrideCss}{a string -  The override CSS. You can put custom CSS code here to repair creative
#' styling; e.g. tr td \{ background-color: FBB; \}. This attribute is optional
#' and updatable.}
#'  \item{requiredFlashPluginVersion}{a string -  The Flash plugin version required to view this creative; e.g. Flash 10.2/AS
#' 3. This attribute is read only.}
#'  \item{duration}{a integer -  The duration of the creative in milliseconds. This attribute is optional and
#' updatable.}
#'  \item{billingAttribute}{a RichMediaStudioCreativeBillingAttribute - The billing attribute associated with this creative. This attribute is read
#' only. This can take one of the following values:
#'    \itemize{
#'      \item{IN_PAGE - Applies to any RichMediaStudioCreativeFormat IN_PAGE, without Video.}
#'      \item{FLOATING_EXPANDING - Applies to any of these following RichMediaStudioCreativeFormat, without
#' Video: RichMediaStudioCreativeFormat EXPANDING,
#' RichMediaStudioCreativeFormat IM_EXPANDING, RichMediaStudioCreativeFormat
#' FLOATING, RichMediaStudioCreativeFormat PEEL_DOWN,
#' RichMediaStudioCreativeFormat IN_PAGE_WITH_FLOATING}
#'      \item{VIDEO - Applies to any creatives that includes a video.}
#'      \item{FLASH_IN_FLASH - Applies to any RichMediaStudioCreativeFormat FLASH_IN_FLASH, without Video.}
#'    }
#'   }
#'  \item{richMediaStudioChildAssetProperties}{a RichMediaStudioChildAssetProperty -  The list of child assets associated with this creative. This attribute is
#' read only.}
#'  \item{sslScanResult}{a SslScanResult - The SSL compatibility scan result of this creative. This attribute is
#' read-only and determined by Google. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{UNSCANNED}
#'      \item{SCANNED_SSL}
#'      \item{SCANNED_NON_SSL}
#'    }
#'   }
#'  \item{sslManualOverride}{a SslManualOverride - The manual override for the SSL compatibility of this creative. This
#' attribute is optional and defaults to SslManualOverride NO_OVERRIDE. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{NO_OVERRIDE}
#'      \item{SSL_COMPATIBLE}
#'      \item{NOT_SSL_COMPATIBLE}
#'    }
#'   }
#' }
#' 
#' \strong{BaseVideoCreative}
#' 
#' A base type for video creatives.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.BaseVideoCreative}{Google Documentation for BaseVideoCreative}
#' \describe{
#'  \item{destinationUrl}{a string (inherited from HasDestinationUrlCreative) -  The URL that the user is directed to if they click on the creative. This
#' attribute is required and has a maximum length of 1024 characters.}
#'  \item{destinationUrlType}{a DestinationUrlType (inherited from HasDestinationUrlCreative) -  The action that should be performed if the user clicks on the creative. This
#' attribute is optional and defaults to DestinationUrlType CLICK_TO_WEB.}
#'  \item{duration}{a integer -  The expected duration of this creative in milliseconds.}
#'  \item{allowDurationOverride}{a boolean -  Allows the creative duration to differ from the actual asset durations. This
#' attribute is optional.}
#'  \item{trackingUrls}{a ConversionEvent_TrackingUrlsMapEntry -  A map from ConversionEvent to a list of URLs that will be pinged when the
#' event happens. This attribute is optional.}
#'  \item{companionCreativeIds}{a integer -  The IDs of the companion creatives that are associated with this creative.
#' This attribute is optional.}
#'  \item{customParameters}{a string -  A comma separated key=value list of parameters that will be supplied to the
#' creative, written into the VAST AdParameters node. This attribute is
#' optional.}
#'  \item{vastPreviewUrl}{a string -  An ad tag URL that will return a preview of the VAST XML response specific
#' to this creative. This attribute is read-only.}
#'  \item{sslScanResult}{a SslScanResult - The SSL compatibility scan result of this creative. This attribute is
#' read-only and determined by Google. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{UNSCANNED}
#'      \item{SCANNED_SSL}
#'      \item{SCANNED_NON_SSL}
#'    }
#'   }
#'  \item{sslManualOverride}{a SslManualOverride - The manual override for the SSL compatibility of this creative. This
#' attribute is optional and defaults to SslManualOverride NO_OVERRIDE. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{NO_OVERRIDE}
#'      \item{SSL_COMPATIBLE}
#'      \item{NOT_SSL_COMPATIBLE}
#'    }
#'   }
#' }
#' 
#' \strong{BooleanValue}
#' 
#' Contains a boolean value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.BooleanValue}{Google Documentation for BooleanValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a boolean -  The boolean value.}
#' }
#' 
#' \strong{ClickTrackingCreative}
#' 
#' A creative that is used for tracking clicks on ads that are served directly
#' from the customers' web servers or media servers. NOTE: The size attribute
#' is not used for click tracking creative and it will not be persisted upon
#' save.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.ClickTrackingCreative}{Google Documentation for ClickTrackingCreative}
#' \describe{
#'  \item{advertiserId}{a integer (inherited from Creative) -  The ID of the advertiser that owns the creative. This attribute is required.}
#'  \item{id}{a integer (inherited from Creative) -  Uniquely identifies the Creative. This value is read-only and is assigned by
#' Google when the creative is created. This attribute is required for updates.}
#'  \item{name}{a string (inherited from Creative) -  The name of the creative. This attribute is required and has a maximum
#' length of 255 characters.}
#'  \item{size}{a Size (inherited from Creative) -  The Size of the creative. This attribute is required.}
#'  \item{previewUrl}{a string (inherited from Creative) -  The URL of the creative for previewing the media. This attribute is
#' read-only and is assigned by Google when a creative is created.}
#'  \item{policyViolations}{a CreativePolicyViolation (inherited from Creative) -  Set of policy violations detected for this creative. This attribute is
#' read-only.}
#'  \item{appliedLabels}{a AppliedLabel (inherited from Creative) -  The set of labels applied to this creative.}
#'  \item{lastModifiedDateTime}{a DateTime (inherited from Creative) -  The date and time this creative was last modified.}
#'  \item{customFieldValues}{a BaseCustomFieldValue (inherited from Creative) -  The values of the custom fields associated with this creative.}
#'  \item{clickTrackingUrl}{a string -  The click tracking URL. This attribute is required.}
#' }
#' 
#' \strong{CollectionSizeError}
#' 
#' Error for the size of the collection being too large
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.CollectionSizeError}{Google Documentation for CollectionSizeError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.CommonError}{Google Documentation for CommonError}
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
#' \strong{ConversionEvent_TrackingUrlsMapEntry}
#' 
#' This represents an entry in a map with a key of type ConversionEvent and
#' value of type TrackingUrls.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.ConversionEvent_TrackingUrlsMapEntry}{Google Documentation for ConversionEvent_TrackingUrlsMapEntry}
#' \describe{
#'  \item{key}{a ConversionEvent - This can take one of the following values:
#'    \itemize{
#'      \item{CREATIVE_VIEW - Corresponds to the creativeView tracking event.}
#'      \item{START - Corresponds to the start tracking event.}
#'      \item{SKIP_SHOWN - An event that is fired when a video skip button is shown, usually after 5
#' seconds of viewing the video. This event does not correspond to any VAST
#' element and is implemented using an extension.}
#'      \item{FIRST_QUARTILE - Corresponds to the firstQuartile tracking event.}
#'      \item{MIDPOINT - Corresponds to the midpoint tracking event.}
#'      \item{THIRD_QUARTILE - Corresponds to the thirdQuartile tracking event.}
#'      \item{ENGAGED_VIEW - An event that is fired after 30 seconds of viewing the video or when the
#' video finished (if the video duration is less than 30 seconds). This event
#' does not correspond to any VAST element and is implemented using an
#' extension.}
#'      \item{COMPLETE - Corresponds to the complete tracking event.}
#'      \item{MUTE - Corresponds to the mute tracking event.}
#'      \item{UNMUTE - Corresponds to the unmute tracking event.}
#'      \item{PAUSE - Corresponds to the pause tracking event.}
#'      \item{REWIND - Corresponds to the rewind tracking event.}
#'      \item{RESUME - Corresponds to the resume tracking event.}
#'      \item{SKIPPED - An event that is fired when a video was skipped. This event does not
#' correspond to any VAST element and is implemented using an extension.}
#'      \item{FULLSCREEN - Corresponds to the fullscreen tracking event.}
#'      \item{EXPAND - Corresponds to the expand tracking event.}
#'      \item{COLLAPSE - Corresponds to the collapse tracking event.}
#'      \item{ACCEPT_INVITATION - Corresponds to the acceptInvitation tracking event.}
#'      \item{CLOSE - Corresponds to the close tracking event.}
#'      \item{CLICK_TRACKING - Corresponds to the Linear.VideoClicks.ClickTracking node.}
#'      \item{SURVEY - Corresponds to the InLine.Survey node.}
#'      \item{CUSTOM_CLICK - Corresponds to the Linear.VideoClicks.CustomClick node.}
#'    }
#'   }
#'  \item{value}{a TrackingUrls}
#' }
#' 
#' \strong{Creative}
#' 
#' A Creative represents the media for the ad being served.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.Creative}{Google Documentation for Creative}
#' \describe{
#'  \item{advertiserId}{a integer -  The ID of the advertiser that owns the creative. This attribute is required.}
#'  \item{id}{a integer -  Uniquely identifies the Creative. This value is read-only and is assigned by
#' Google when the creative is created. This attribute is required for updates.}
#'  \item{name}{a string -  The name of the creative. This attribute is required and has a maximum
#' length of 255 characters.}
#'  \item{size}{a Size -  The Size of the creative. This attribute is required.}
#'  \item{previewUrl}{a string -  The URL of the creative for previewing the media. This attribute is
#' read-only and is assigned by Google when a creative is created.}
#'  \item{policyViolations}{a CreativePolicyViolation - Set of policy violations detected for this creative. This attribute is
#' read-only. This can take one of the following values:
#'    \itemize{
#'      \item{MALWARE_IN_CREATIVE - Malware was found in the creative. For more information see <a
#' href="https://support.google.com/adwordspolicy/answer/1308246">here</a>.}
#'      \item{MALWARE_IN_LANDING_PAGE - Malware was found in the landing page. For more information see <a
#' href="https://support.google.com/adwordspolicy/answer/1308246">here</a>.}
#'      \item{LEGALLY_BLOCKED_REDIRECT_URL - The redirect url contains legally objectionable content.}
#'      \item{MISREPRESENTATION_OF_PRODUCT - The creative misrepresents the product or service being advertised. For more
#' information see <a
#' href="https://support.google.com/adwordspolicy/answer/6020955?hl=en
#' 355">here</a>.}
#'      \item{SELF_CLICKING_CREATIVE - The creative has been determined to be self clicking.}
#'      \item{GAMING_GOOGLE_NETWORK - The creative has been determined as attempting to game the Google network.
#' For more information see <a
#' href="https://support.google.com/adwordspolicy/answer/6020954?hl=en
#' 319">here</a>.}
#'      \item{DYNAMIC_DNS - The landing page for the creative uses a dynamic DNS. For more information
#' see <a
#' href="https://support.google.com/adwordspolicy/answer/6020954?rd=1">here</a>.}
#'      \item{PHISHING - Phishing found in creative or landing page. For more information see <a
#' href="https://support.google.com/adwordspolicy/answer/6020955">here</a>.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{appliedLabels}{a AppliedLabel -  The set of labels applied to this creative.}
#'  \item{lastModifiedDateTime}{a DateTime -  The date and time this creative was last modified.}
#'  \item{customFieldValues}{a BaseCustomFieldValue -  The values of the custom fields associated with this creative.}
#' }
#' 
#' \strong{CreativeAsset}
#' 
#' A CreativeAsset is an asset that can be used in creatives.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.CreativeAsset}{Google Documentation for CreativeAsset}
#' \describe{
#'  \item{assetId}{a integer -  The ID of the asset. This attribute is read-only and is populated by Google.}
#'  \item{assetByteArray}{a base64Binary -  The content of the asset as a byte array. This attribute is required when
#' creating the creative that contains this asset.  When updating the content,
#' pass a new byte array, and set assetId to null. Otherwise, this field can be
#' null.  The assetByteArray will be null when the creative is retrieved.}
#'  \item{fileName}{a string -  The file name of the asset. This attribute is required when creating a new
#' asset (e.g. when assetByteArray is not null).}
#'  \item{fileSize}{a integer -  The file size of the asset in bytes. This attribute is read-only.}
#'  \item{assetUrl}{a string -  A URL where the asset can be previewed at. This field is read-only and set
#' by Google.}
#'  \item{size}{a Size -  The size of the asset. Note that this may not always reflect the actual
#' physical size of the asset, but may reflect the expected size. This
#' attribute is read-only and is populated by Google.}
#'  \item{imageDensity}{a ImageDensity - The display density of the image. This is the ratio between a dimension in
#' pixels of the image and the dimension in pixels that it should occupy in
#' device-independent pixels when displayed. This attribute is optional and
#' defaults to ONE_TO_ONE. This can take one of the following values:
#'    \itemize{
#'      \item{ONE_TO_ONE - Indicates that there is a 1:1 ratio between the dimensions of the raw image
#' and the dimensions that it should be displayed at in device-independent
#' pixels.}
#'      \item{THREE_TO_TWO - Indicates that there is a 3:2 ratio between the dimensions of the raw image
#' and the dimensions that it should be displayed at in device-independent
#' pixels.}
#'      \item{TWO_TO_ONE - Indicates that there is a 2:1 ratio between the dimensions of the raw image
#' and the dimensions that it should be displayed at in device-independent
#' pixels.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{CreativeAssetMacroError}
#' 
#' Lists all errors associated with creative asset macros.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.CreativeAssetMacroError}{Google Documentation for CreativeAssetMacroError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.CreativeError}{Google Documentation for CreativeError}
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
#' \strong{CreativePage}
#' 
#' Captures a page of Creative objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.CreativePage}{Google Documentation for CreativePage}
#' \describe{
#'  \item{totalResultSetSize}{a integer -  The size of the total result set to which this page belongs.}
#'  \item{startIndex}{a integer -  The absolute index in the total result set on which this page begins.}
#'  \item{results}{a Creative -  The collection of creatives contained within this page.}
#' }
#' 
#' \strong{CreativeSetError}
#' 
#' Errors relating to creative sets & subclasses.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.CreativeSetError}{Google Documentation for CreativeSetError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.CreativeTemplateError}{Google Documentation for CreativeTemplateError}
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
#' \strong{CustomCreative}
#' 
#' A Creative that contains an arbitrary HTML snippet and file assets.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.CustomCreative}{Google Documentation for CustomCreative}
#' \describe{
#'  \item{destinationUrl}{a string (inherited from HasDestinationUrlCreative) -  The URL that the user is directed to if they click on the creative. This
#' attribute is required and has a maximum length of 1024 characters.}
#'  \item{destinationUrlType}{a DestinationUrlType (inherited from HasDestinationUrlCreative) -  The action that should be performed if the user clicks on the creative. This
#' attribute is optional and defaults to DestinationUrlType CLICK_TO_WEB.}
#'  \item{htmlSnippet}{a string -  The HTML snippet that this creative delivers. This attribute is required.}
#'  \item{customCreativeAssets}{a CustomCreativeAsset -  A list of file assets that are associated with this creative, and can be
#' referenced in the snippet.}
#'  \item{isInterstitial}{a boolean -  true if this custom creative is interstitial. An interstitial creative will
#' not consider an impression served until it is fully rendered in the browser.}
#'  \item{lockedOrientation}{a LockedOrientation - A locked orientation for this creative to be displayed in. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{FREE_ORIENTATION}
#'      \item{PORTRAIT_ONLY}
#'      \item{LANDSCAPE_ONLY}
#'    }
#'   }
#'  \item{sslScanResult}{a SslScanResult - The SSL compatibility scan result of this creative. This attribute is
#' read-only and determined by Google. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{UNSCANNED}
#'      \item{SCANNED_SSL}
#'      \item{SCANNED_NON_SSL}
#'    }
#'   }
#'  \item{sslManualOverride}{a SslManualOverride - The manual override for the SSL compatibility of this creative. This
#' attribute is optional and defaults to SslManualOverride NO_OVERRIDE. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{NO_OVERRIDE}
#'      \item{SSL_COMPATIBLE}
#'      \item{NOT_SSL_COMPATIBLE}
#'    }
#'   }
#' }
#' 
#' \strong{CustomCreativeAsset}
#' 
#' A CustomCreativeAsset is an association between a CustomCreative and an
#' asset. Any assets that are associated with a creative can be inserted into
#' its HTML snippet.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.CustomCreativeAsset}{Google Documentation for CustomCreativeAsset}
#' \describe{
#'  \item{macroName}{a string -  The name by which the associated asset will be referenced. For example, if
#' the value is "foo", then the asset can be inserted into an HTML snippet
#' using the macro: ""FILE:foo"".}
#'  \item{assetId}{a integer -  The ID of the associated asset. This attribute is read-only and is populated
#' by Google.}
#'  \item{assetByteArray}{a base64Binary -  The content of the asset as a byte array. This attribute is required when
#' creating a new CustomCreativeAsset.  When updating the content, pass a new
#' byte array, and set assetId to null. Otherwise, this field can be null.  The
#' assetByteArray will be null when the CustomCreativeAsset is retrieved.}
#'  \item{fileName}{a string -  The file name of the asset. This attribute is required when creating a new
#' asset (e.g. when assetByteArray is not null).}
#'  \item{fileSize}{a integer -  The file size of the asset, in bytes. This attribute is read-only.}
#' }
#' 
#' \strong{CustomCreativeError}
#' 
#' Lists all errors associated with custom creatives.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.CustomCreativeError}{Google Documentation for CustomCreativeError}
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
#' \strong{CustomFieldValue}
#' 
#' The value of a CustomField that does not have a CustomField dataType of
#' CustomFieldDataType DROP_DOWN.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.CustomFieldValue}{Google Documentation for CustomFieldValue}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.CustomFieldValueError}{Google Documentation for CustomFieldValueError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.Date}{Google Documentation for Date}
#' \describe{
#'  \item{year}{a integer -  Year (e.g., 2009)}
#'  \item{month}{a integer -  Month (1..12)}
#'  \item{day}{a integer -  Day (1..31)}
#' }
#' 
#' \strong{DateTime}
#' 
#' Represents a date combined with the time of day.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.DateTime}{Google Documentation for DateTime}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.DateTimeValue}{Google Documentation for DateTimeValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a DateTime -  The DateTime value.}
#' }
#' 
#' \strong{DateValue}
#' 
#' Contains a date value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.DateValue}{Google Documentation for DateValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a Date -  The Date value.}
#' }
#' 
#' \strong{DropDownCustomFieldValue}
#' 
#' A CustomFieldValue for a CustomField that has a CustomField dataType of
#' CustomFieldDataType DROP_DOWN
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.DropDownCustomFieldValue}{Google Documentation for DropDownCustomFieldValue}
#' \describe{
#'  \item{customFieldId}{a integer (inherited from BaseCustomFieldValue) -  Id of the CustomField to which this value belongs. This attribute is
#' required.}
#'  \item{customFieldOptionId}{a integer -  The CustomFieldOption id ID of the CustomFieldOption for this value.}
#' }
#' 
#' \strong{EntityLimitReachedError}
#' 
#' An error that occurs when creating an entity if the limit on the number of
#' allowed entities for a network has already been reached.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.EntityLimitReachedError}{Google Documentation for EntityLimitReachedError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.FeatureError}{Google Documentation for FeatureError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.FileError}{Google Documentation for FileError}
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
#' \strong{FlashCreative}
#' 
#' A Creative that displays a Flash-based ad. If the Flash ad cannot load, a
#' fallback image is displayed instead.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.FlashCreative}{Google Documentation for FlashCreative}
#' \describe{
#'  \item{overrideSize}{a boolean (inherited from BaseFlashCreative) -  Allows the creative size to differ from the actual Flash asset size. This
#' attribute is optional.}
#'  \item{clickTagRequired}{a boolean (inherited from BaseFlashCreative) -  Specifies whether the Flash asset is required to have a click tag embedded
#' in it or not. This attribute is optional.}
#'  \item{sslScanResult}{a SslScanResult (inherited from BaseFlashCreative) -  The SSL compatibility scan result of this creative. This attribute is
#' read-only and determined by Google.}
#'  \item{sslManualOverride}{a SslManualOverride (inherited from BaseFlashCreative) -  The manual override for the SSL compatibility of this creative. This
#' attribute is optional and defaults to SslManualOverride NO_OVERRIDE.}
#'  \item{flashAsset}{a CreativeAsset (inherited from BaseFlashCreative) -  The flash asset. This attribute is required. To view the Flash image, use
#' the CreativeAsset assetUrl.}
#'  \item{fallbackImageAsset}{a CreativeAsset (inherited from BaseFlashCreative) -  The image asset to fall back on if the flash creative cannot be loaded. To
#' view the fallback image, use the CreativeAsset assetUrl.}
#'  \item{swiffyAsset}{a SwiffyFallbackAsset -  A Swiffy asset that can be used as a fallback for this flash creative. This
#' attribute is readonly.}
#'  \item{createSwiffyAsset}{a boolean -  Enables Swiffy fallback asset creation and serving. If true during creation
#' or update, the flash asset will be converted to a swiffyAsset Swiffy asset.
#' If successful, the Swiffy asset will be used for ad serving, which may lead
#' to additional latency. To remove the swiffy asset, set this attribute to
#' false and update the flashByteArray flash asset. This attribute is optional
#' and defaults to false.}
#'  \item{lockedOrientation}{a LockedOrientation - A locked orientation for this creative to be displayed in. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{FREE_ORIENTATION}
#'      \item{PORTRAIT_ONLY}
#'      \item{LANDSCAPE_ONLY}
#'    }
#'   }
#'  \item{clickTagOverlayEnabled}{a boolean -  Enables the creative to be served with click tag overlay. This attribute is
#' optional and defaults to false.}
#' }
#' 
#' \strong{FlashOverlayCreative}
#' 
#' An overlay Creative that displays a Flash-based ad and is served via VAST
#' 2.0 XML. Overlays cover part of the video content they are displayed on top
#' of. This creative is read-only.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.FlashOverlayCreative}{Google Documentation for FlashOverlayCreative}
#' \describe{
#'  \item{overrideSize}{a boolean (inherited from BaseFlashCreative) -  Allows the creative size to differ from the actual Flash asset size. This
#' attribute is optional.}
#'  \item{clickTagRequired}{a boolean (inherited from BaseFlashCreative) -  Specifies whether the Flash asset is required to have a click tag embedded
#' in it or not. This attribute is optional.}
#'  \item{sslScanResult}{a SslScanResult (inherited from BaseFlashCreative) -  The SSL compatibility scan result of this creative. This attribute is
#' read-only and determined by Google.}
#'  \item{sslManualOverride}{a SslManualOverride (inherited from BaseFlashCreative) -  The manual override for the SSL compatibility of this creative. This
#' attribute is optional and defaults to SslManualOverride NO_OVERRIDE.}
#'  \item{flashAsset}{a CreativeAsset (inherited from BaseFlashCreative) -  The flash asset. This attribute is required. To view the Flash image, use
#' the CreativeAsset assetUrl.}
#'  \item{fallbackImageAsset}{a CreativeAsset (inherited from BaseFlashCreative) -  The image asset to fall back on if the flash creative cannot be loaded. To
#' view the fallback image, use the CreativeAsset assetUrl.}
#'  \item{companionCreativeIds}{a integer -  The IDs of the companion creatives that are associated with this creative.
#' This attribute is optional.}
#'  \item{trackingUrls}{a ConversionEvent_TrackingUrlsMapEntry -  A map from ConversionEvent to a list of URLs that will be pinged when the
#' event happens. This attribute is optional.}
#'  \item{customParameters}{a string -  A comma separated key=value list of parameters that will be supplied to the
#' creative, written into the VAST AdParameters node. If the apiFramework is
#' ApiFramework VPAID, the value does not need to be a comma separated
#' key-value list (and can instead be any arbitrary string). This attribute is
#' optional.}
#'  \item{apiFramework}{a ApiFramework - The API framework of the asset. This attribute is optional. This can take one of the following values:
#'    \itemize{
#'      \item{NONE}
#'      \item{CLICKTAG}
#'      \item{VPAID}
#'    }
#'   }
#'  \item{duration}{a integer -  Minimum suggested duration in milliseconds. This attribute is optional.}
#'  \item{vastPreviewUrl}{a string -  An ad tag URL that will return a preview of the VAST XML response specific
#' to this creative. This attribute is read-only.}
#'  \item{lockedOrientation}{a LockedOrientation - A locked orientation for this creative to be displayed in. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{FREE_ORIENTATION}
#'      \item{PORTRAIT_ONLY}
#'      \item{LANDSCAPE_ONLY}
#'    }
#'   }
#' }
#' 
#' \strong{FlashRedirectCreative}
#' 
#' A Creative that loads a Flash asset from a specified URL. If the remote
#' flash asset cannot be served, a fallback image is used at an alternate URL.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.FlashRedirectCreative}{Google Documentation for FlashRedirectCreative}
#' \describe{
#'  \item{flashUrl}{a string (inherited from BaseFlashRedirectCreative) -  The URL where the Flash asset resides. This attribute is required and has a
#' maximum length of 1024 characters.}
#'  \item{fallbackUrl}{a string (inherited from BaseFlashRedirectCreative) -  The fallback URL to use if the Flash URL cannot be used. This attribute is
#' required and has a maximum length of 1024 characters.}
#'  \item{fallbackPreviewUrl}{a string (inherited from BaseFlashRedirectCreative) -  The URL of the fallback image for preview. This attribute is read-only and
#' is populated by Google.}
#'  \item{sslScanResult}{a SslScanResult (inherited from BaseFlashRedirectCreative) -  The SSL compatibility scan result of this creative. This attribute is
#' read-only and determined by Google.}
#'  \item{sslManualOverride}{a SslManualOverride (inherited from BaseFlashRedirectCreative) -  The manual override for the SSL compatibility of this creative. This
#' attribute is optional and defaults to SslManualOverride NO_OVERRIDE.}
#' }
#' 
#' \strong{FlashRedirectOverlayCreative}
#' 
#' An overlay Creative that loads a Flash asset from a specified URL and is
#' served via VAST 2.0 XML. Overlays cover part of the video content they are
#' displayed on top of.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.FlashRedirectOverlayCreative}{Google Documentation for FlashRedirectOverlayCreative}
#' \describe{
#'  \item{flashUrl}{a string (inherited from BaseFlashRedirectCreative) -  The URL where the Flash asset resides. This attribute is required and has a
#' maximum length of 1024 characters.}
#'  \item{fallbackUrl}{a string (inherited from BaseFlashRedirectCreative) -  The fallback URL to use if the Flash URL cannot be used. This attribute is
#' required and has a maximum length of 1024 characters.}
#'  \item{fallbackPreviewUrl}{a string (inherited from BaseFlashRedirectCreative) -  The URL of the fallback image for preview. This attribute is read-only and
#' is populated by Google.}
#'  \item{sslScanResult}{a SslScanResult (inherited from BaseFlashRedirectCreative) -  The SSL compatibility scan result of this creative. This attribute is
#' read-only and determined by Google.}
#'  \item{sslManualOverride}{a SslManualOverride (inherited from BaseFlashRedirectCreative) -  The manual override for the SSL compatibility of this creative. This
#' attribute is optional and defaults to SslManualOverride NO_OVERRIDE.}
#'  \item{companionCreativeIds}{a integer -  The IDs of the companion creatives that are associated with this creative.
#' This attribute is optional.}
#'  \item{trackingUrls}{a ConversionEvent_TrackingUrlsMapEntry -  A map from ConversionEvent to a list of URLs that will be pinged when the
#' event happens. This attribute is optional.}
#'  \item{customParameters}{a string -  A comma separated key=value list of parameters that will be supplied to the
#' creative, written into the VAST AdParameters node. If the apiFramework is
#' ApiFramework VPAID, the value does not need to be a comma separated
#' key-value list (and can instead be any arbitrary string). This attribute is
#' optional.}
#'  \item{apiFramework}{a ApiFramework - The API framework of the asset. This attribute is optional. This can take one of the following values:
#'    \itemize{
#'      \item{NONE}
#'      \item{CLICKTAG}
#'      \item{VPAID}
#'    }
#'   }
#'  \item{duration}{a integer -  Minimum suggested duration in milliseconds. This attribute is optional.}
#'  \item{flashAssetSize}{a Size -  The size of the flash asset. Note that this may differ from size if the
#' asset is not expected to fill the entire video player. This attribute is
#' optional.}
#'  \item{vastPreviewUrl}{a string -  An ad tag URL that will return a preview of the VAST XML response specific
#' to this creative. This attribute is read-only.}
#' }
#' 
#' \strong{HasDestinationUrlCreative}
#' 
#' A Creative that has a destination url
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.HasDestinationUrlCreative}{Google Documentation for HasDestinationUrlCreative}
#' \describe{
#'  \item{advertiserId}{a integer (inherited from Creative) -  The ID of the advertiser that owns the creative. This attribute is required.}
#'  \item{id}{a integer (inherited from Creative) -  Uniquely identifies the Creative. This value is read-only and is assigned by
#' Google when the creative is created. This attribute is required for updates.}
#'  \item{name}{a string (inherited from Creative) -  The name of the creative. This attribute is required and has a maximum
#' length of 255 characters.}
#'  \item{size}{a Size (inherited from Creative) -  The Size of the creative. This attribute is required.}
#'  \item{previewUrl}{a string (inherited from Creative) -  The URL of the creative for previewing the media. This attribute is
#' read-only and is assigned by Google when a creative is created.}
#'  \item{policyViolations}{a CreativePolicyViolation (inherited from Creative) -  Set of policy violations detected for this creative. This attribute is
#' read-only.}
#'  \item{appliedLabels}{a AppliedLabel (inherited from Creative) -  The set of labels applied to this creative.}
#'  \item{lastModifiedDateTime}{a DateTime (inherited from Creative) -  The date and time this creative was last modified.}
#'  \item{customFieldValues}{a BaseCustomFieldValue (inherited from Creative) -  The values of the custom fields associated with this creative.}
#'  \item{destinationUrl}{a string -  The URL that the user is directed to if they click on the creative. This
#' attribute is required and has a maximum length of 1024 characters.}
#'  \item{destinationUrlType}{a DestinationUrlType - The action that should be performed if the user clicks on the creative. This
#' attribute is optional and defaults to DestinationUrlType CLICK_TO_WEB. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{CLICK_TO_WEB - Navigate to a web page. (a.k.a. "Click-through URL").}
#'      \item{CLICK_TO_APP - Start an application.}
#'      \item{CLICK_TO_CALL - Make a phone call.}
#'    }
#'   }
#' }
#' 
#' \strong{HasHtmlSnippetDynamicAllocationCreative}
#' 
#' Dynamic allocation creative with a backfill code snippet.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.HasHtmlSnippetDynamicAllocationCreative}{Google Documentation for HasHtmlSnippetDynamicAllocationCreative}
#' \describe{
#'  \item{extends BaseDynamicAllocationCreative}{see documentation for BaseDynamicAllocationCreative}
#'  \item{codeSnippet}{a string -  The code snippet (ad tag) from Ad Exchange or AdSense to traffic the dynamic
#' allocation creative. Only valid Ad Exchange or AdSense parameters will be
#' considered. Any extraneous HTML or JavaScript will be ignored.}
#' }
#' 
#' \strong{ImageCreative}
#' 
#' A Creative that displays an image.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.ImageCreative}{Google Documentation for ImageCreative}
#' \describe{
#'  \item{overrideSize}{a boolean (inherited from BaseImageCreative) -  Allows the creative size to differ from the actual image asset size. This
#' attribute is optional.}
#'  \item{primaryImageAsset}{a CreativeAsset (inherited from BaseImageCreative) -  The primary image asset associated with this creative. This attribute is
#' required.}
#'  \item{altText}{a string -  Alternative text to be rendered along with the creative used mainly for
#' accessibility. This field is optional and has a maximum length of 500
#' characters.}
#'  \item{thirdPartyImpressionUrl}{a string -  An impression tracking URL to ping when this creative is displayed. This
#' field is optional has a maximum length of 1024 characters.}
#'  \item{secondaryImageAssets}{a CreativeAsset -  The list of secondary image assets associated with this creative. This
#' attribute is optional. Secondary image assets can be used to store different
#' resolution versions of the primary asset for use on non-standard density
#' screens.}
#'  \item{lockedOrientation}{a LockedOrientation - A locked orientation for this creative to be displayed in. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{FREE_ORIENTATION}
#'      \item{PORTRAIT_ONLY}
#'      \item{LANDSCAPE_ONLY}
#'    }
#'   }
#' }
#' 
#' \strong{ImageError}
#' 
#' Lists all errors associated with images.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.ImageError}{Google Documentation for ImageError}
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
#' \strong{ImageOverlayCreative}
#' 
#' An overlay Creative that displays an image and is served via VAST 2.0 XML.
#' Overlays cover part of the video content they are displayed on top of. This
#' creative is read only.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.ImageOverlayCreative}{Google Documentation for ImageOverlayCreative}
#' \describe{
#'  \item{overrideSize}{a boolean (inherited from BaseImageCreative) -  Allows the creative size to differ from the actual image asset size. This
#' attribute is optional.}
#'  \item{primaryImageAsset}{a CreativeAsset (inherited from BaseImageCreative) -  The primary image asset associated with this creative. This attribute is
#' required.}
#'  \item{companionCreativeIds}{a integer -  The IDs of the companion creatives that are associated with this creative.
#' This attribute is optional.}
#'  \item{trackingUrls}{a ConversionEvent_TrackingUrlsMapEntry -  A map from ConversionEvent to a list of URLs that will be pinged when the
#' event happens. This attribute is optional.}
#'  \item{lockedOrientation}{a LockedOrientation - A locked orientation for this creative to be displayed in. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{FREE_ORIENTATION}
#'      \item{PORTRAIT_ONLY}
#'      \item{LANDSCAPE_ONLY}
#'    }
#'   }
#'  \item{customParameters}{a string -  A comma separated key=value list of parameters that will be supplied to the
#' creative, written into the VAST AdParameters node. This attribute is
#' optional.}
#'  \item{duration}{a integer -  Minimum suggested duration in milliseconds. This attribute is optional.}
#'  \item{vastPreviewUrl}{a string -  An ad tag URL that will return a preview of the VAST XML response specific
#' to this creative. This attribute is read-only.}
#' }
#' 
#' \strong{ImageRedirectCreative}
#' 
#' A Creative that loads an image asset from a specified URL.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.ImageRedirectCreative}{Google Documentation for ImageRedirectCreative}
#' \describe{
#'  \item{imageUrl}{a string (inherited from BaseImageRedirectCreative) -  The URL where the actual asset resides. This attribute is required and has a
#' maximum length of 1024 characters.}
#'  \item{altText}{a string -  Alternative text to be rendered along with the creative used mainly for
#' accessibility. This field is optional and has a maximum length of 500
#' characters.}
#'  \item{thirdPartyImpressionUrl}{a string -  An impression tracking URL to ping when this creative is displayed. This
#' field is optional has a maximum length of 1024 characters.}
#' }
#' 
#' \strong{ImageRedirectOverlayCreative}
#' 
#' An overlay Creative that loads an image asset from a specified URL and is
#' served via VAST 2.0 XML. Overlays cover part of the video content they are
#' displayed on top of. This creative is read only.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.ImageRedirectOverlayCreative}{Google Documentation for ImageRedirectOverlayCreative}
#' \describe{
#'  \item{imageUrl}{a string (inherited from BaseImageRedirectCreative) -  The URL where the actual asset resides. This attribute is required and has a
#' maximum length of 1024 characters.}
#'  \item{assetSize}{a Size -  The size of the image asset. Note that this may differ from size if the
#' asset is not expected to fill the entire video player. This attribute is
#' optional.}
#'  \item{duration}{a integer -  Minimum suggested duration in milliseconds. This attribute is optional.}
#'  \item{companionCreativeIds}{a integer -  The IDs of the companion creatives that are associated with this creative.
#' This attribute is optional.}
#'  \item{trackingUrls}{a ConversionEvent_TrackingUrlsMapEntry -  A map from ConversionEvent to a list of URLs that will be pinged when the
#' event happens. This attribute is optional.}
#'  \item{customParameters}{a string -  A comma separated key=value list of parameters that will be supplied to the
#' creative, written into the VAST AdParameters node. This attribute is
#' optional.}
#'  \item{vastPreviewUrl}{a string -  An ad tag URL that will return a preview of the VAST XML response specific
#' to this creative. This attribute is read-only.}
#' }
#' 
#' \strong{InternalApiError}
#' 
#' Indicates that a server-side error has occured. InternalApiErrors are
#' generally not the result of an invalid request or message sent by the
#' client.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.InternalApiError}{Google Documentation for InternalApiError}
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
#' \strong{InternalRedirectCreative}
#' 
#' A Creative hosted by either DoubleClick for Advertisers (DFA) or DART for
#' Publishers.  Similar to third-party creatives, a DoubleClick tag is used to
#' retrieve a creative asset. However, DoubleClick tags are not sent to the
#' user's browser. Instead, they are processed internally within the
#' DoubleClick system..
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.InternalRedirectCreative}{Google Documentation for InternalRedirectCreative}
#' \describe{
#'  \item{advertiserId}{a integer (inherited from Creative) -  The ID of the advertiser that owns the creative. This attribute is required.}
#'  \item{id}{a integer (inherited from Creative) -  Uniquely identifies the Creative. This value is read-only and is assigned by
#' Google when the creative is created. This attribute is required for updates.}
#'  \item{name}{a string (inherited from Creative) -  The name of the creative. This attribute is required and has a maximum
#' length of 255 characters.}
#'  \item{size}{a Size (inherited from Creative) -  The Size of the creative. This attribute is required.}
#'  \item{previewUrl}{a string (inherited from Creative) -  The URL of the creative for previewing the media. This attribute is
#' read-only and is assigned by Google when a creative is created.}
#'  \item{policyViolations}{a CreativePolicyViolation (inherited from Creative) -  Set of policy violations detected for this creative. This attribute is
#' read-only.}
#'  \item{appliedLabels}{a AppliedLabel (inherited from Creative) -  The set of labels applied to this creative.}
#'  \item{lastModifiedDateTime}{a DateTime (inherited from Creative) -  The date and time this creative was last modified.}
#'  \item{customFieldValues}{a BaseCustomFieldValue (inherited from Creative) -  The values of the custom fields associated with this creative.}
#'  \item{lockedOrientation}{a LockedOrientation - A locked orientation for this creative to be displayed in. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{FREE_ORIENTATION}
#'      \item{PORTRAIT_ONLY}
#'      \item{LANDSCAPE_ONLY}
#'    }
#'   }
#'  \item{assetSize}{a Size -  The asset size of an internal redirect creative. Note that this may differ
#' from size if users set overrideSize to true. This attribute is read-only and
#' is populated by Google.}
#'  \item{internalRedirectUrl}{a string -  The internal redirect URL of the DFA or DART for Publishers hosted creative.
#' This attribute is required and has a maximum length of 1024 characters.}
#'  \item{overrideSize}{a boolean -  Allows the creative size to differ from the actual size specified in the
#' internal redirect's url. This attribute is optional.}
#'  \item{isInterstitial}{a boolean -  true if this internal redirect creative is interstitial.}
#'  \item{sslScanResult}{a SslScanResult - The SSL compatibility scan result for this creative. This attribute is
#' read-only and determined by Google. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{UNSCANNED}
#'      \item{SCANNED_SSL}
#'      \item{SCANNED_NON_SSL}
#'    }
#'   }
#'  \item{sslManualOverride}{a SslManualOverride - The manual override for the SSL compatibility of this creative. This
#' attribute is optional and defaults to SslManualOverride NO_OVERRIDE. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{NO_OVERRIDE}
#'      \item{SSL_COMPATIBLE}
#'      \item{NOT_SSL_COMPATIBLE}
#'    }
#'   }
#' }
#' 
#' \strong{InvalidPhoneNumberError}
#' 
#' Lists all errors associated with phone numbers.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.InvalidPhoneNumberError}{Google Documentation for InvalidPhoneNumberError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.InvalidUrlError}{Google Documentation for InvalidUrlError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.LabelEntityAssociationError}{Google Documentation for LabelEntityAssociationError}
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
#' \strong{LegacyDfpCreative}
#' 
#' A Creative that isn't supported by Google DFP, but was migrated from DART.
#' Creatives of this type cannot be created or modified.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.LegacyDfpCreative}{Google Documentation for LegacyDfpCreative}
#' \describe{
#'  \item{advertiserId}{a integer (inherited from Creative) -  The ID of the advertiser that owns the creative. This attribute is required.}
#'  \item{id}{a integer (inherited from Creative) -  Uniquely identifies the Creative. This value is read-only and is assigned by
#' Google when the creative is created. This attribute is required for updates.}
#'  \item{name}{a string (inherited from Creative) -  The name of the creative. This attribute is required and has a maximum
#' length of 255 characters.}
#'  \item{size}{a Size (inherited from Creative) -  The Size of the creative. This attribute is required.}
#'  \item{previewUrl}{a string (inherited from Creative) -  The URL of the creative for previewing the media. This attribute is
#' read-only and is assigned by Google when a creative is created.}
#'  \item{policyViolations}{a CreativePolicyViolation (inherited from Creative) -  Set of policy violations detected for this creative. This attribute is
#' read-only.}
#'  \item{appliedLabels}{a AppliedLabel (inherited from Creative) -  The set of labels applied to this creative.}
#'  \item{lastModifiedDateTime}{a DateTime (inherited from Creative) -  The date and time this creative was last modified.}
#'  \item{customFieldValues}{a BaseCustomFieldValue (inherited from Creative) -  The values of the custom fields associated with this creative.}
#' }
#' 
#' \strong{LegacyDfpMobileCreative}
#' 
#' A mobile Creative that isn't supported by Google DFP, but was migrated from
#' DART. Creatives of this type cannot be created or modified.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.LegacyDfpMobileCreative}{Google Documentation for LegacyDfpMobileCreative}
#' \describe{
#'  \item{destinationUrl}{a string (inherited from HasDestinationUrlCreative) -  The URL that the user is directed to if they click on the creative. This
#' attribute is required and has a maximum length of 1024 characters.}
#'  \item{destinationUrlType}{a DestinationUrlType (inherited from HasDestinationUrlCreative) -  The action that should be performed if the user clicks on the creative. This
#' attribute is optional and defaults to DestinationUrlType CLICK_TO_WEB.}
#' }
#' 
#' \strong{LineItemCreativeAssociationError}
#' 
#' Lists all errors associated with line item-to-creative association dates.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.LineItemCreativeAssociationError}{Google Documentation for LineItemCreativeAssociationError}
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
#' \strong{LongCreativeTemplateVariableValue}
#' 
#' Stores values of CreativeTemplateVariable of VariableType LONG.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.LongCreativeTemplateVariableValue}{Google Documentation for LongCreativeTemplateVariableValue}
#' \describe{
#'  \item{uniqueName}{a string (inherited from BaseCreativeTemplateVariableValue) -  A uniqueName of the CreativeTemplateVariable.}
#'  \item{value}{a integer -  The long value of CreativeTemplateVariable}
#' }
#' 
#' \strong{NotNullError}
#' 
#' Caused by supplying a null value for an attribute that cannot be null.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.NotNullError}{Google Documentation for NotNullError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.NullError}{Google Documentation for NullError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.NumberValue}{Google Documentation for NumberValue}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.ObjectValue}{Google Documentation for ObjectValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#' }
#' 
#' \strong{ParseError}
#' 
#' Lists errors related to parsing.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.ParseError}{Google Documentation for ParseError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.PermissionError}{Google Documentation for PermissionError}
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
#' \strong{ProgrammaticCreative}
#' 
#' A Creative used for programmatic trafficking. This creative will be
#' auto-created with the right approval from the buyer. This creative cannot be
#' created through the API. This creative can be updated.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.ProgrammaticCreative}{Google Documentation for ProgrammaticCreative}
#' \describe{
#'  \item{advertiserId}{a integer (inherited from Creative) -  The ID of the advertiser that owns the creative. This attribute is required.}
#'  \item{id}{a integer (inherited from Creative) -  Uniquely identifies the Creative. This value is read-only and is assigned by
#' Google when the creative is created. This attribute is required for updates.}
#'  \item{name}{a string (inherited from Creative) -  The name of the creative. This attribute is required and has a maximum
#' length of 255 characters.}
#'  \item{size}{a Size (inherited from Creative) -  The Size of the creative. This attribute is required.}
#'  \item{previewUrl}{a string (inherited from Creative) -  The URL of the creative for previewing the media. This attribute is
#' read-only and is assigned by Google when a creative is created.}
#'  \item{policyViolations}{a CreativePolicyViolation (inherited from Creative) -  Set of policy violations detected for this creative. This attribute is
#' read-only.}
#'  \item{appliedLabels}{a AppliedLabel (inherited from Creative) -  The set of labels applied to this creative.}
#'  \item{lastModifiedDateTime}{a DateTime (inherited from Creative) -  The date and time this creative was last modified.}
#'  \item{customFieldValues}{a BaseCustomFieldValue (inherited from Creative) -  The values of the custom fields associated with this creative.}
#' }
#' 
#' \strong{PublisherQueryLanguageContextError}
#' 
#' An error that occurs while executing a PQL query contained in a Statement
#' object.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.PublisherQueryLanguageContextError}{Google Documentation for PublisherQueryLanguageContextError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.PublisherQueryLanguageSyntaxError}{Google Documentation for PublisherQueryLanguageSyntaxError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.QuotaError}{Google Documentation for QuotaError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.RangeError}{Google Documentation for RangeError}
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
#' \strong{RedirectAsset}
#' 
#' An externally hosted asset.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.RedirectAsset}{Google Documentation for RedirectAsset}
#' \describe{
#'  \item{extends Asset}{see documentation for Asset}
#'  \item{redirectUrl}{a string -  The URL where the asset is hosted.}
#' }
#' 
#' \strong{RequiredCollectionError}
#' 
#' A list of all errors to be used for validating sizes of collections.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.RequiredCollectionError}{Google Documentation for RequiredCollectionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.RequiredError}{Google Documentation for RequiredError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.RequiredNumberError}{Google Documentation for RequiredNumberError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.RequiredSizeError}{Google Documentation for RequiredSizeError}
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
#' \strong{RichMediaStudioChildAssetProperty}
#' 
#' Represents a child asset in RichMediaStudioCreative.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.RichMediaStudioChildAssetProperty}{Google Documentation for RichMediaStudioChildAssetProperty}
#' \describe{
#'  \item{name}{a string -  The name of the asset as known by Rich Media Studio. This attribute is
#' readonly.}
#'  \item{type}{a RichMediaStudioChildAssetProperty.Type - Required file type of the asset. This attribute is readonly. This can take one of the following values:
#'    \itemize{
#'      \item{FLASH - SWF files}
#'      \item{VIDEO - FLVS and any other video file types}
#'      \item{IMAGE - Image files}
#'      \item{DATA - The rest of the supported file types .txt, .xml, etc.}
#'    }
#'   }
#'  \item{totalFileSize}{a integer -  The total size of the asset in bytes. This attribute is readonly.}
#'  \item{width}{a integer -  Width of the widget in pixels. This attribute is readonly.}
#'  \item{height}{a integer -  Height of the widget in pixels. This attribute is readonly.}
#'  \item{url}{a string -  The URL of the asset. This attribute is readonly.}
#' }
#' 
#' \strong{RichMediaStudioCreative}
#' 
#' A Creative that is created by a Rich Media Studio. You cannot create this
#' creative, but you can update some fields of this creative.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.RichMediaStudioCreative}{Google Documentation for RichMediaStudioCreative}
#' \describe{
#'  \item{studioCreativeId}{a integer (inherited from BaseRichMediaStudioCreative) -  The creative ID as known by Rich Media Studio creative. This attribute is
#' readonly.}
#'  \item{creativeFormat}{a RichMediaStudioCreativeFormat (inherited from BaseRichMediaStudioCreative) -  The creative format of the Rich Media Studio creative. This attribute is
#' readonly.}
#'  \item{artworkType}{a RichMediaStudioCreativeArtworkType (inherited from BaseRichMediaStudioCreative) -  The type of artwork used in this creative. This attribute is readonly.}
#'  \item{totalFileSize}{a integer (inherited from BaseRichMediaStudioCreative) -  The total size of all assets in bytes. This attribute is readonly.}
#'  \item{adTagKeys}{a string (inherited from BaseRichMediaStudioCreative) -  Ad tag keys. This attribute is optional and updatable.}
#'  \item{customKeyValues}{a string (inherited from BaseRichMediaStudioCreative) -  Custom key values. This attribute is optional and updatable.}
#'  \item{surveyUrl}{a string (inherited from BaseRichMediaStudioCreative) -  The survey URL for this creative. This attribute is optional and updatable.}
#'  \item{allImpressionsUrl}{a string (inherited from BaseRichMediaStudioCreative) -  The tracking URL to be triggered when an ad starts to play, whether Rich
#' Media or backup content is displayed. Behaves like the /imp URL that DART
#' used to track impressions. This URL can't exceed 1024 characters and must
#' start with http:// or https://. This attribute is optional and updatable.}
#'  \item{richMediaImpressionsUrl}{a string (inherited from BaseRichMediaStudioCreative) -  The tracking URL to be triggered when any rich media artwork is displayed in
#' an ad. Behaves like the /imp URL that DART used to track impressions. This
#' URL can't exceed 1024 characters and must start with http:// or https://.
#' This attribute is optional and updatable.}
#'  \item{backupImageImpressionsUrl}{a string (inherited from BaseRichMediaStudioCreative) -  The tracking URL to be triggered when the Rich Media backup image is served.
#' This attribute is optional and updatable.}
#'  \item{overrideCss}{a string (inherited from BaseRichMediaStudioCreative) -  The override CSS. You can put custom CSS code here to repair creative
#' styling; e.g. tr td \{ background-color: FBB; \}. This attribute is optional
#' and updatable.}
#'  \item{requiredFlashPluginVersion}{a string (inherited from BaseRichMediaStudioCreative) -  The Flash plugin version required to view this creative; e.g. Flash 10.2/AS
#' 3. This attribute is read only.}
#'  \item{duration}{a integer (inherited from BaseRichMediaStudioCreative) -  The duration of the creative in milliseconds. This attribute is optional and
#' updatable.}
#'  \item{billingAttribute}{a RichMediaStudioCreativeBillingAttribute (inherited from BaseRichMediaStudioCreative) -  The billing attribute associated with this creative. This attribute is read
#' only.}
#'  \item{richMediaStudioChildAssetProperties}{a RichMediaStudioChildAssetProperty (inherited from BaseRichMediaStudioCreative) -  The list of child assets associated with this creative. This attribute is
#' read only.}
#'  \item{sslScanResult}{a SslScanResult (inherited from BaseRichMediaStudioCreative) -  The SSL compatibility scan result of this creative. This attribute is
#' read-only and determined by Google.}
#'  \item{sslManualOverride}{a SslManualOverride (inherited from BaseRichMediaStudioCreative) -  The manual override for the SSL compatibility of this creative. This
#' attribute is optional and defaults to SslManualOverride NO_OVERRIDE.}
#'  \item{lockedOrientation}{a LockedOrientation - A locked orientation for this creative to be displayed in. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{FREE_ORIENTATION}
#'      \item{PORTRAIT_ONLY}
#'      \item{LANDSCAPE_ONLY}
#'    }
#'   }
#'  \item{isInterstitial}{a boolean -  true if this is interstitial. An interstitial creative will not consider an
#' impression served until it is fully rendered in the browser. This attribute
#' is readonly.}
#' }
#' 
#' \strong{RichMediaStudioCreativeError}
#' 
#' Lists all errors associated with Rich Media Studio creatives.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.RichMediaStudioCreativeError}{Google Documentation for RichMediaStudioCreativeError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.ServerError}{Google Documentation for ServerError}
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
#' \strong{SetTopBoxCreative}
#' 
#' A Creative that will be served into cable set-top boxes. There are no assets
#' for this creative type, as they are hosted by Canoe.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.SetTopBoxCreative}{Google Documentation for SetTopBoxCreative}
#' \describe{
#'  \item{duration}{a integer (inherited from BaseVideoCreative) -  The expected duration of this creative in milliseconds.}
#'  \item{allowDurationOverride}{a boolean (inherited from BaseVideoCreative) -  Allows the creative duration to differ from the actual asset durations. This
#' attribute is optional.}
#'  \item{trackingUrls}{a ConversionEvent_TrackingUrlsMapEntry (inherited from BaseVideoCreative) -  A map from ConversionEvent to a list of URLs that will be pinged when the
#' event happens. This attribute is optional.}
#'  \item{companionCreativeIds}{a integer (inherited from BaseVideoCreative) -  The IDs of the companion creatives that are associated with this creative.
#' This attribute is optional.}
#'  \item{customParameters}{a string (inherited from BaseVideoCreative) -  A comma separated key=value list of parameters that will be supplied to the
#' creative, written into the VAST AdParameters node. This attribute is
#' optional.}
#'  \item{vastPreviewUrl}{a string (inherited from BaseVideoCreative) -  An ad tag URL that will return a preview of the VAST XML response specific
#' to this creative. This attribute is read-only.}
#'  \item{sslScanResult}{a SslScanResult (inherited from BaseVideoCreative) -  The SSL compatibility scan result of this creative. This attribute is
#' read-only and determined by Google.}
#'  \item{sslManualOverride}{a SslManualOverride (inherited from BaseVideoCreative) -  The manual override for the SSL compatibility of this creative. This
#' attribute is optional and defaults to SslManualOverride NO_OVERRIDE.}
#'  \item{externalAssetId}{a string -  An external asset identifier that is used in the Canoe system. This
#' attribute is read-only after creation.}
#'  \item{providerId}{a string -  An identifier for the provider in the Canoe system. This attribute is
#' read-only after creation.}
#' }
#' 
#' \strong{SetTopBoxCreativeError}
#' 
#' Errors associated with SetTopBoxCreative set-top box creatives.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.SetTopBoxCreativeError}{Google Documentation for SetTopBoxCreativeError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.SetValue}{Google Documentation for SetValue}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.Size}{Google Documentation for Size}
#' \describe{
#'  \item{width}{a integer -  The width of the AdUnit, LineItem or Creative.}
#'  \item{height}{a integer -  The height of the AdUnit, LineItem or Creative.}
#'  \item{isAspectRatio}{a boolean -  True if this size represents an aspect ratio, false otherwise.}
#' }
#' 
#' \strong{SoapRequestHeader}
#' 
#' Represents the SOAP request header used by API requests.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.SoapRequestHeader}{Google Documentation for SoapRequestHeader}
#' \describe{
#'  \item{networkCode}{a string -  The network code to use in the context of a request.}
#'  \item{applicationName}{a string -  The name of client library application.}
#' }
#' 
#' \strong{SoapResponseHeader}
#' 
#' Represents the SOAP request header used by API responses.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.SoapResponseHeader}{Google Documentation for SoapResponseHeader}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.Statement}{Google Documentation for Statement}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.StatementError}{Google Documentation for StatementError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.String_ValueMapEntry}{Google Documentation for String_ValueMapEntry}
#' \describe{
#'  \item{key}{a string}
#'  \item{value}{a Value}
#' }
#' 
#' \strong{StringCreativeTemplateVariableValue}
#' 
#' Stores values of CreativeTemplateVariable of VariableType STRING and
#' VariableType LIST.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.StringCreativeTemplateVariableValue}{Google Documentation for StringCreativeTemplateVariableValue}
#' \describe{
#'  \item{uniqueName}{a string (inherited from BaseCreativeTemplateVariableValue) -  A uniqueName of the CreativeTemplateVariable.}
#'  \item{value}{a string -  The string value of CreativeTemplateVariable}
#' }
#' 
#' \strong{StringLengthError}
#' 
#' Errors for Strings which do not meet given length constraints.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.StringLengthError}{Google Documentation for StringLengthError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.SwiffyConversionError}{Google Documentation for SwiffyConversionError}
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
#' \strong{SwiffyFallbackAsset}
#' 
#' A fallback swiffy asset used for flash creatives.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.SwiffyFallbackAsset}{Google Documentation for SwiffyFallbackAsset}
#' \describe{
#'  \item{asset}{a CreativeAsset -  The Swiffy asset.}
#'  \item{html5Features}{a Html5Feature - A list of Html5Feature HTML5 features required to play this Swiffy fallback
#' asset correctly. This can take one of the following values:
#'    \itemize{
#'      \item{BASIC_SVG - Requires a basic SVG animation.}
#'      \item{SVG_FILTERS - Requires support for SVG filter based animation.}
#'      \item{UNKNOWN - The feature is not known or defined in newer versions.}
#'    }
#'   }
#'  \item{localizedInfoMessages}{a string -  A list of localized messages that give detailed information about the Swiffy
#' conversion. Does not contain error or warning messages.}
#' }
#' 
#' \strong{TemplateCreative}
#' 
#' A Creative that is created by the specified creative template.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.TemplateCreative}{Google Documentation for TemplateCreative}
#' \describe{
#'  \item{advertiserId}{a integer (inherited from Creative) -  The ID of the advertiser that owns the creative. This attribute is required.}
#'  \item{id}{a integer (inherited from Creative) -  Uniquely identifies the Creative. This value is read-only and is assigned by
#' Google when the creative is created. This attribute is required for updates.}
#'  \item{name}{a string (inherited from Creative) -  The name of the creative. This attribute is required and has a maximum
#' length of 255 characters.}
#'  \item{size}{a Size (inherited from Creative) -  The Size of the creative. This attribute is required.}
#'  \item{previewUrl}{a string (inherited from Creative) -  The URL of the creative for previewing the media. This attribute is
#' read-only and is assigned by Google when a creative is created.}
#'  \item{policyViolations}{a CreativePolicyViolation (inherited from Creative) -  Set of policy violations detected for this creative. This attribute is
#' read-only.}
#'  \item{appliedLabels}{a AppliedLabel (inherited from Creative) -  The set of labels applied to this creative.}
#'  \item{lastModifiedDateTime}{a DateTime (inherited from Creative) -  The date and time this creative was last modified.}
#'  \item{customFieldValues}{a BaseCustomFieldValue (inherited from Creative) -  The values of the custom fields associated with this creative.}
#'  \item{creativeTemplateId}{a integer -  Creative template ID that this creative is created from.}
#'  \item{isInterstitial}{a boolean -  true if this template instantiated creative is interstitial. This attribute
#' is read-only and is assigned by Google based on the creative template.}
#'  \item{isNativeEligible}{a boolean -  true if this template instantiated creative is eligible for native
#' adserving. This attribute is read-only and is assigned by Google based on
#' the creative template.}
#'  \item{destinationUrl}{a string -  The URL the user is directed to if they click on the creative. This
#' attribute is only required if the template snippet contains the \%u or
#' "DEST_URL" macro. It has a maximum length of 1024 characters.}
#'  \item{creativeTemplateVariableValues}{a BaseCreativeTemplateVariableValue -  Stores values of CreativeTemplateVariable in the CreativeTemplate.}
#'  \item{sslScanResult}{a SslScanResult - The SSL compatibility scan result for this creative. This attribute is
#' read-only and determined by Google. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{UNSCANNED}
#'      \item{SCANNED_SSL}
#'      \item{SCANNED_NON_SSL}
#'    }
#'   }
#'  \item{sslManualOverride}{a SslManualOverride - The manual override for the SSL compatibility of this creative. This
#' attribute is optional and defaults to SslManualOverride NO_OVERRIDE. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{NO_OVERRIDE}
#'      \item{SSL_COMPATIBLE}
#'      \item{NOT_SSL_COMPATIBLE}
#'    }
#'   }
#'  \item{lockedOrientation}{a LockedOrientation - A locked orientation for this creative to be displayed in. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{FREE_ORIENTATION}
#'      \item{PORTRAIT_ONLY}
#'      \item{LANDSCAPE_ONLY}
#'    }
#'   }
#' }
#' 
#' \strong{TemplateInstantiatedCreativeError}
#' 
#' Lists all errors associated with template instantiated creatives.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.TemplateInstantiatedCreativeError}{Google Documentation for TemplateInstantiatedCreativeError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.TextValue}{Google Documentation for TextValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a string -  The string value.}
#' }
#' 
#' \strong{ThirdPartyCreative}
#' 
#' A Creative that is served by a 3rd-party vendor.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.ThirdPartyCreative}{Google Documentation for ThirdPartyCreative}
#' \describe{
#'  \item{advertiserId}{a integer (inherited from Creative) -  The ID of the advertiser that owns the creative. This attribute is required.}
#'  \item{id}{a integer (inherited from Creative) -  Uniquely identifies the Creative. This value is read-only and is assigned by
#' Google when the creative is created. This attribute is required for updates.}
#'  \item{name}{a string (inherited from Creative) -  The name of the creative. This attribute is required and has a maximum
#' length of 255 characters.}
#'  \item{size}{a Size (inherited from Creative) -  The Size of the creative. This attribute is required.}
#'  \item{previewUrl}{a string (inherited from Creative) -  The URL of the creative for previewing the media. This attribute is
#' read-only and is assigned by Google when a creative is created.}
#'  \item{policyViolations}{a CreativePolicyViolation (inherited from Creative) -  Set of policy violations detected for this creative. This attribute is
#' read-only.}
#'  \item{appliedLabels}{a AppliedLabel (inherited from Creative) -  The set of labels applied to this creative.}
#'  \item{lastModifiedDateTime}{a DateTime (inherited from Creative) -  The date and time this creative was last modified.}
#'  \item{customFieldValues}{a BaseCustomFieldValue (inherited from Creative) -  The values of the custom fields associated with this creative.}
#'  \item{snippet}{a string -  The HTML snippet that this creative delivers. This attribute is required.}
#'  \item{expandedSnippet}{a string -  The HTML snippet that this creative delivers with macros expanded. This
#' attribute is read-only and is set by Google.}
#'  \item{sslScanResult}{a SslScanResult - The SSL compatibility scan result for this creative. This attribute is
#' read-only and determined by Google. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{UNSCANNED}
#'      \item{SCANNED_SSL}
#'      \item{SCANNED_NON_SSL}
#'    }
#'   }
#'  \item{sslManualOverride}{a SslManualOverride - The manual override for the SSL compatibility of this creative. This
#' attribute is optional and defaults to SslManualOverride NO_OVERRIDE. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{NO_OVERRIDE}
#'      \item{SSL_COMPATIBLE}
#'      \item{NOT_SSL_COMPATIBLE}
#'    }
#'   }
#'  \item{lockedOrientation}{a LockedOrientation - A locked orientation for this creative to be displayed in. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{FREE_ORIENTATION}
#'      \item{PORTRAIT_ONLY}
#'      \item{LANDSCAPE_ONLY}
#'    }
#'   }
#' }
#' 
#' \strong{TrackingUrls}
#' 
#' A list of URLs that should be pinged for a conversion event.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.TrackingUrls}{Google Documentation for TrackingUrls}
#' \describe{
#'  \item{urls}{a string -  A list of all URLs that should be pinged.}
#' }
#' 
#' \strong{TypeError}
#' 
#' An error for a field which is an invalid type.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.TypeError}{Google Documentation for TypeError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#' }
#' 
#' \strong{UniqueError}
#' 
#' An error for a field which must satisfy a uniqueness constraint
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.UniqueError}{Google Documentation for UniqueError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#' }
#' 
#' \strong{UnsupportedCreative}
#' 
#' A Creative that isn't supported by this version of the API. This object is
#' readonly and when encountered should be reported on the DFP API forum.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.UnsupportedCreative}{Google Documentation for UnsupportedCreative}
#' \describe{
#'  \item{advertiserId}{a integer (inherited from Creative) -  The ID of the advertiser that owns the creative. This attribute is required.}
#'  \item{id}{a integer (inherited from Creative) -  Uniquely identifies the Creative. This value is read-only and is assigned by
#' Google when the creative is created. This attribute is required for updates.}
#'  \item{name}{a string (inherited from Creative) -  The name of the creative. This attribute is required and has a maximum
#' length of 255 characters.}
#'  \item{size}{a Size (inherited from Creative) -  The Size of the creative. This attribute is required.}
#'  \item{previewUrl}{a string (inherited from Creative) -  The URL of the creative for previewing the media. This attribute is
#' read-only and is assigned by Google when a creative is created.}
#'  \item{policyViolations}{a CreativePolicyViolation (inherited from Creative) -  Set of policy violations detected for this creative. This attribute is
#' read-only.}
#'  \item{appliedLabels}{a AppliedLabel (inherited from Creative) -  The set of labels applied to this creative.}
#'  \item{lastModifiedDateTime}{a DateTime (inherited from Creative) -  The date and time this creative was last modified.}
#'  \item{customFieldValues}{a BaseCustomFieldValue (inherited from Creative) -  The values of the custom fields associated with this creative.}
#'  \item{unsupportedCreativeType}{a string -  The creative type that is unsupported by this API version.}
#' }
#' 
#' \strong{UrlCreativeTemplateVariableValue}
#' 
#' Stores values of CreativeTemplateVariable of VariableType URL.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.UrlCreativeTemplateVariableValue}{Google Documentation for UrlCreativeTemplateVariableValue}
#' \describe{
#'  \item{uniqueName}{a string (inherited from BaseCreativeTemplateVariableValue) -  A uniqueName of the CreativeTemplateVariable.}
#'  \item{value}{a string -  The url value of CreativeTemplateVariable}
#' }
#' 
#' \strong{Value}
#' 
#' Value represents a value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.Value}{Google Documentation for Value}
#' \describe{
#' }
#' 
#' \strong{VastRedirectCreative}
#' 
#' A Creative that points to an externally hosted VAST ad and is served via
#' VAST XML as a VAST Wrapper.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.VastRedirectCreative}{Google Documentation for VastRedirectCreative}
#' \describe{
#'  \item{advertiserId}{a integer (inherited from Creative) -  The ID of the advertiser that owns the creative. This attribute is required.}
#'  \item{id}{a integer (inherited from Creative) -  Uniquely identifies the Creative. This value is read-only and is assigned by
#' Google when the creative is created. This attribute is required for updates.}
#'  \item{name}{a string (inherited from Creative) -  The name of the creative. This attribute is required and has a maximum
#' length of 255 characters.}
#'  \item{size}{a Size (inherited from Creative) -  The Size of the creative. This attribute is required.}
#'  \item{previewUrl}{a string (inherited from Creative) -  The URL of the creative for previewing the media. This attribute is
#' read-only and is assigned by Google when a creative is created.}
#'  \item{policyViolations}{a CreativePolicyViolation (inherited from Creative) -  Set of policy violations detected for this creative. This attribute is
#' read-only.}
#'  \item{appliedLabels}{a AppliedLabel (inherited from Creative) -  The set of labels applied to this creative.}
#'  \item{lastModifiedDateTime}{a DateTime (inherited from Creative) -  The date and time this creative was last modified.}
#'  \item{customFieldValues}{a BaseCustomFieldValue (inherited from Creative) -  The values of the custom fields associated with this creative.}
#'  \item{vastXmlUrl}{a string -  The URL where the 3rd party VAST XML is hosted. This attribute is required.}
#'  \item{vastRedirectType}{a VastRedirectType - The type of VAST ad that this redirects to. This attribute is required. This can take one of the following values:
#'    \itemize{
#'      \item{LINEAR - The VAST XML contains only linear ads.}
#'      \item{NON_LINEAR - The VAST XML contains only nonlinear ads.}
#'      \item{LINEAR_AND_NON_LINEAR - The VAST XML contains both linear and nonlinear ads.}
#'    }
#'   }
#'  \item{duration}{a integer -  The duration of the VAST ad in milliseconds. This attribute is optional and
#' defaults to 0.}
#'  \item{companionCreativeIds}{a integer -  The IDs of the companion creatives that are associated with this creative.
#' This attribute is optional.}
#'  \item{trackingUrls}{a ConversionEvent_TrackingUrlsMapEntry -  A map from ConversionEvent to a list of URLs that will be pinged when the
#' event happens. This attribute is optional.}
#'  \item{vastPreviewUrl}{a string -  An ad tag URL that will return a preview of the VAST XML response specific
#' to this creative. This attribute is read-only.}
#'  \item{sslScanResult}{a SslScanResult - The SSL compatibility scan result for this creative. This attribute is
#' read-only and determined by Google. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{UNSCANNED}
#'      \item{SCANNED_SSL}
#'      \item{SCANNED_NON_SSL}
#'    }
#'   }
#'  \item{sslManualOverride}{a SslManualOverride - The manual override for the SSL compatibility of this creative. This
#' attribute is optional and defaults to SslManualOverride NO_OVERRIDE. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{NO_OVERRIDE}
#'      \item{SSL_COMPATIBLE}
#'      \item{NOT_SSL_COMPATIBLE}
#'    }
#'   }
#' }
#' 
#' \strong{VideoCreative}
#' 
#' A Creative that contains DFP-hosted video ads and is served via VAST 2.0
#' XML. This creative is read-only.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.VideoCreative}{Google Documentation for VideoCreative}
#' \describe{
#'  \item{duration}{a integer (inherited from BaseVideoCreative) -  The expected duration of this creative in milliseconds.}
#'  \item{allowDurationOverride}{a boolean (inherited from BaseVideoCreative) -  Allows the creative duration to differ from the actual asset durations. This
#' attribute is optional.}
#'  \item{trackingUrls}{a ConversionEvent_TrackingUrlsMapEntry (inherited from BaseVideoCreative) -  A map from ConversionEvent to a list of URLs that will be pinged when the
#' event happens. This attribute is optional.}
#'  \item{companionCreativeIds}{a integer (inherited from BaseVideoCreative) -  The IDs of the companion creatives that are associated with this creative.
#' This attribute is optional.}
#'  \item{customParameters}{a string (inherited from BaseVideoCreative) -  A comma separated key=value list of parameters that will be supplied to the
#' creative, written into the VAST AdParameters node. This attribute is
#' optional.}
#'  \item{vastPreviewUrl}{a string (inherited from BaseVideoCreative) -  An ad tag URL that will return a preview of the VAST XML response specific
#' to this creative. This attribute is read-only.}
#'  \item{sslScanResult}{a SslScanResult (inherited from BaseVideoCreative) -  The SSL compatibility scan result of this creative. This attribute is
#' read-only and determined by Google.}
#'  \item{sslManualOverride}{a SslManualOverride (inherited from BaseVideoCreative) -  The manual override for the SSL compatibility of this creative. This
#' attribute is optional and defaults to SslManualOverride NO_OVERRIDE.}
#' }
#' 
#' \strong{VideoMetadata}
#' 
#' Metadata for a video asset.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.VideoMetadata}{Google Documentation for VideoMetadata}
#' \describe{
#'  \item{scalableType}{a ScalableType - The scalable type of the asset. This attribute is required. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{NOT_SCALABLE - The creative should not be scaled.}
#'      \item{RATIO_SCALABLE - The creative can be scaled and its aspect-ratio must be maintained.}
#'      \item{STRETCH_SCALABLE - The creative can be scaled and its aspect-ratio can be distorted.}
#'    }
#'   }
#'  \item{duration}{a integer -  The duration of the asset in milliseconds. This attribute is required.}
#'  \item{bitRate}{a integer -  The bit rate of the asset in kbps. If the asset can play at a range of bit
#' rates (such as an Http Live Streaming video), then set the bit rate to zero
#' and populate the minimum and maximum bit rate instead.}
#'  \item{minimumBitRate}{a integer -  The minimum bitrate of the video in kbps. Only set this if the asset can
#' play at a range of bit rates.}
#'  \item{maximumBitRate}{a integer -  The maximum bitrate of the video in kbps. Only set this if the asset can
#' play at a range of bit rates.}
#'  \item{size}{a Size -  The size (width and height) of the asset. This attribute is required.}
#'  \item{mimeType}{a MimeType - The mime type of the asset. This attribute is required. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{ASP - application/x-asp}
#'      \item{AUDIO_AIFF - audio/aiff}
#'      \item{AUDIO_BASIC - audio/basic}
#'      \item{AUDIO_FLAC - audio/flac}
#'      \item{AUDIO_MID - audio/mid}
#'      \item{AUDIO_MP3 - audio/mpeg}
#'      \item{AUDIO_MP4 - audio/mp4}
#'      \item{AUDIO_MPEG_URL - audio/x-mpegurl}
#'      \item{AUDIO_MS_WMA - audio/x-ms-wma}
#'      \item{AUDIO_OGG - audio/ogg}
#'      \item{AUDIO_REAL_AUDIO_PLUGIN - audio/x-pn-realaudio-plugin}
#'      \item{AUDIO_WAV - audio/x-wav}
#'      \item{BINARY - application/binary}
#'      \item{DIRECTOR - application/x-director}
#'      \item{FLASH - application/x-shockwave-flash}
#'      \item{GRAPHIC_CONVERTER - application/graphicconverter}
#'      \item{JAVASCRIPT - application/x-javascript}
#'      \item{JSON - application/json}
#'      \item{IMAGE_BITMAP - image/x-win-bitmap}
#'      \item{IMAGE_BMP - image/bmp}
#'      \item{IMAGE_GIF - image/gif}
#'      \item{IMAGE_JPEG - image/jpeg}
#'      \item{IMAGE_PHOTOSHOP - image/photoshop}
#'      \item{IMAGE_PNG - image/png}
#'      \item{IMAGE_TIFF - image/tiff}
#'      \item{IMAGE_WBMP - image/vnd.wap.wbmp}
#'      \item{M3U8 - application/x-mpegURL}
#'      \item{MAC_BIN_HEX_40 - application/mac-binhex40}
#'      \item{MS_EXCEL - application/vnd.ms-excel}
#'      \item{MS_POWERPOINT - application/ms-powerpoint}
#'      \item{MS_WORD - application/msword}
#'      \item{OCTET_STREAM - application/octet-stream}
#'      \item{PDF - application/pdf}
#'      \item{POSTSCRIPT - application/postscript}
#'      \item{RN_REAL_MEDIA - application/vnd.rn-realmedia}
#'      \item{RFC_822 - message/rfc822}
#'      \item{RTF - application/rtf}
#'      \item{TEXT_CALENDAR - text/calendar}
#'      \item{TEXT_CSS - text/css}
#'      \item{TEXT_CSV - text/csv}
#'      \item{TEXT_HTML - text/html}
#'      \item{TEXT_JAVA - text/java}
#'      \item{TEXT_PLAIN - text/plain}
#'      \item{VIDEO_3GPP - video/3gpp}
#'      \item{VIDEO_3GPP2 - video/3gpp2}
#'      \item{VIDEO_AVI - video/avi}
#'      \item{VIDEO_FLV - video/x-flv}
#'      \item{VIDEO_MP4 - video/mp4}
#'      \item{VIDEO_MP4V_ES - video/mp4v-es}
#'      \item{VIDEO_MPEG - video/mpeg}
#'      \item{VIDEO_MS_ASF - video/x-ms-asf}
#'      \item{VIDEO_MS_WM - video/x-ms-wm}
#'      \item{VIDEO_MS_WMV - video/x-ms-wmv}
#'      \item{VIDEO_MS_WVX - video/x-ms-wvx}
#'      \item{VIDEO_OGG - video/ogg}
#'      \item{VIDEO_QUICKTIME - video/x-quicktime}
#'      \item{VIDEO_WEBM - video/webm}
#'      \item{XAML - application/xaml+xml}
#'      \item{XHTML - application/xhtml+xml}
#'      \item{XML - application/xml}
#'      \item{ZIP - application/zip}
#'    }
#'   }
#'  \item{deliveryType}{a VideoDeliveryType - The delivery type of the asset. This attribute is required. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{PROGRESSIVE - Video will be served through a progressive download.}
#'      \item{STREAMING - Video will be served via a streaming protocol like RTMP.}
#'    }
#'   }
#'  \item{codecs}{a string -  The codecs of the asset. This attribute is optional and defaults to an empty
#' list.}
#' }
#' 
#' \strong{VideoRedirectAsset}
#' 
#' An externally-hosted video asset.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.VideoRedirectAsset}{Google Documentation for VideoRedirectAsset}
#' \describe{
#'  \item{redirectUrl}{a string (inherited from RedirectAsset) -  The URL where the asset is hosted.}
#'  \item{metadata}{a VideoMetadata -  Metadata related to the asset. This attribute is required.}
#' }
#' 
#' \strong{VideoRedirectCreative}
#' 
#' A Creative that contains externally hosted video ads and is served via VAST
#' 2.0 XML. This creative is read-only in versions V201408 and lower.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.VideoRedirectCreative}{Google Documentation for VideoRedirectCreative}
#' \describe{
#'  \item{duration}{a integer (inherited from BaseVideoCreative) -  The expected duration of this creative in milliseconds.}
#'  \item{allowDurationOverride}{a boolean (inherited from BaseVideoCreative) -  Allows the creative duration to differ from the actual asset durations. This
#' attribute is optional.}
#'  \item{trackingUrls}{a ConversionEvent_TrackingUrlsMapEntry (inherited from BaseVideoCreative) -  A map from ConversionEvent to a list of URLs that will be pinged when the
#' event happens. This attribute is optional.}
#'  \item{companionCreativeIds}{a integer (inherited from BaseVideoCreative) -  The IDs of the companion creatives that are associated with this creative.
#' This attribute is optional.}
#'  \item{customParameters}{a string (inherited from BaseVideoCreative) -  A comma separated key=value list of parameters that will be supplied to the
#' creative, written into the VAST AdParameters node. This attribute is
#' optional.}
#'  \item{vastPreviewUrl}{a string (inherited from BaseVideoCreative) -  An ad tag URL that will return a preview of the VAST XML response specific
#' to this creative. This attribute is read-only.}
#'  \item{sslScanResult}{a SslScanResult (inherited from BaseVideoCreative) -  The SSL compatibility scan result of this creative. This attribute is
#' read-only and determined by Google.}
#'  \item{sslManualOverride}{a SslManualOverride (inherited from BaseVideoCreative) -  The manual override for the SSL compatibility of this creative. This
#' attribute is optional and defaults to SslManualOverride NO_OVERRIDE.}
#'  \item{videoAssets}{a VideoRedirectAsset -  The video creative assets.}
#' }
#' 
#' \strong{VpaidLinearCreative}
#' 
#' A Creative that displays a DFP-hosted Flash-based ad and is served via VAST
#' 2.0 XML. It is displayed in a linear fashion with a video (before, after,
#' interrupting). This creative is read only.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.VpaidLinearCreative}{Google Documentation for VpaidLinearCreative}
#' \describe{
#'  \item{destinationUrl}{a string (inherited from HasDestinationUrlCreative) -  The URL that the user is directed to if they click on the creative. This
#' attribute is required and has a maximum length of 1024 characters.}
#'  \item{destinationUrlType}{a DestinationUrlType (inherited from HasDestinationUrlCreative) -  The action that should be performed if the user clicks on the creative. This
#' attribute is optional and defaults to DestinationUrlType CLICK_TO_WEB.}
#'  \item{overrideSize}{a boolean -  Allows the creative size to differ from the actual Flash asset size. This
#' attribute is optional.}
#'  \item{companionCreativeIds}{a integer -  The IDs of the companion creatives that are associated with this creative.
#' This attribute is optional.}
#'  \item{trackingUrls}{a ConversionEvent_TrackingUrlsMapEntry -  A map from ConversionEvent to a list of URLs that will be pinged when the
#' event happens. This attribute is optional.}
#'  \item{customParameters}{a string -  A string that is supplied to the VPAID creative's init function. This is
#' written into the VAST XML in the AdParameters section. This attribute is
#' optional.}
#'  \item{duration}{a integer -  Duration in milliseconds for the vpaid ad given no user interaction. This
#' attribute is optional.}
#'  \item{vastPreviewUrl}{a string -  An ad tag URL that will return a preview of the VAST XML response specific
#' to this creative. This attribute is read-only.}
#'  \item{sslScanResult}{a SslScanResult - The SSL compatibility scan result of this creative. This attribute is
#' read-only and determined by Google. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{UNSCANNED}
#'      \item{SCANNED_SSL}
#'      \item{SCANNED_NON_SSL}
#'    }
#'   }
#'  \item{sslManualOverride}{a SslManualOverride - The manual override for the SSL compatibility of this creative. This
#' attribute is optional and defaults to SslManualOverride NO_OVERRIDE. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{NO_OVERRIDE}
#'      \item{SSL_COMPATIBLE}
#'      \item{NOT_SSL_COMPATIBLE}
#'    }
#'   }
#'  \item{flashAsset}{a CreativeAsset -  The Flash asset. This attribute is required. To view the Flash image, use
#' the CreativeAsset assetUrl.}
#' }
#' 
#' \strong{VpaidLinearRedirectCreative}
#' 
#' A Creative that displays an externally hosted Flash-based ad and is served
#' via VAST 2.0 XML. It is displayed in a linear fashion with a video (before,
#' after, interrupting). This creative is read only.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService.VpaidLinearRedirectCreative}{Google Documentation for VpaidLinearRedirectCreative}
#' \describe{
#'  \item{destinationUrl}{a string (inherited from HasDestinationUrlCreative) -  The URL that the user is directed to if they click on the creative. This
#' attribute is required and has a maximum length of 1024 characters.}
#'  \item{destinationUrlType}{a DestinationUrlType (inherited from HasDestinationUrlCreative) -  The action that should be performed if the user clicks on the creative. This
#' attribute is optional and defaults to DestinationUrlType CLICK_TO_WEB.}
#'  \item{companionCreativeIds}{a integer -  The IDs of the companion creatives that are associated with this creative.
#' This attribute is optional.}
#'  \item{trackingUrls}{a ConversionEvent_TrackingUrlsMapEntry -  A map from ConversionEvent to a list of URLs that will be pinged when the
#' event happens. This attribute is optional.}
#'  \item{customParameters}{a string -  A string that is supplied to the VPAID creative's init function. This is
#' written into the VAST XML in the AdParameters section. This attribute is
#' optional.}
#'  \item{duration}{a integer -  Duration in milliseconds for the vpaid ad given no user interaction. This
#' attribute is optional.}
#'  \item{flashUrl}{a string -  The URL where the Flash asset resides. This attribute is required and has a
#' maximum length of 1024 characters.}
#'  \item{flashAssetSize}{a Size -  The size of the flash asset. Note that this may differ from size if the
#' asset is not expected to fill the entire video player. This attribute is
#' optional.}
#'  \item{vastPreviewUrl}{a string -  An ad tag URL that will return a preview of the VAST XML response specific
#' to this creative. This attribute is read-only.}
#'  \item{sslScanResult}{a SslScanResult - The SSL compatibility scan result of this creative. This attribute is
#' read-only and determined by Google. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{UNSCANNED}
#'      \item{SCANNED_SSL}
#'      \item{SCANNED_NON_SSL}
#'    }
#'   }
#'  \item{sslManualOverride}{a SslManualOverride - The manual override for the SSL compatibility of this creative. This
#' attribute is optional and defaults to SslManualOverride NO_OVERRIDE. This can take one of the following values:
#'    \itemize{
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'      \item{NO_OVERRIDE}
#'      \item{SSL_COMPATIBLE}
#'      \item{NOT_SSL_COMPATIBLE}
#'    }
#'   }
#' }
#' 
#' 
#' 
#' @usage dfp_CreativeService_object_factory(obj_type, obj_data)
#' 
#' @param obj_type a string from one of the object types described below
#' @param obj_data a \code{list} of \code{lists} or a \code{data.frame} with the required components to create
#' the obj_type specified. All input names must match the expected attributes for the object.
#' If submitting a list of attributes to create 1 object make sure to nest it inside top-level list, so that
#' it is a list of length 1 with 1 list of attributes to create the object.
#' @return a string of formatted XML that can be inserted into a SOAP request body to the API
#' @export
dfp_CreativeService_object_factory <- function(obj_type, obj_data){

  if(is.data.frame(obj_data)){
    sampled_names <- names(obj_data)
  } else if(is.list(obj_data)){
    sampled_names <- names(obj_data[[1]])
  } else {
    stop("obj_data must be a list or data.frame")
  }

  if(obj_type=='AdExchangeCreative'){
    stopifnot(all(sampled_names %in% c('codeSnippet', 'isNativeEligible', 'isInterstitial')))
  }

  if(obj_type=='AdMobBackfillCreative'){
    stopifnot(all(sampled_names %in% c('additionalParameters', 'publisherId', 'lockedOrientation')))
  }

  if(obj_type=='AdSenseCreative'){
    stopifnot(all(sampled_names %in% c('codeSnippet')))
  }

  if(obj_type=='AppliedLabel'){
    stopifnot(all(sampled_names %in% c('labelId', 'isNegated')))
  }

  if(obj_type=='AspectRatioImageCreative'){
    stopifnot(all(sampled_names %in% c('destinationUrl', 'destinationUrlType', 'imageAssets', 'altText', 'thirdPartyImpressionUrl', 'overrideSize')))
  }

  if(obj_type=='AssetCreativeTemplateVariableValue'){
    stopifnot(all(sampled_names %in% c('uniqueName', 'assetId', 'assetByteArray', 'fileName')))
  }

  if(obj_type=='BaseCreativeTemplateVariableValue'){
    stopifnot(all(sampled_names %in% c('uniqueName')))
  }

  if(obj_type=='BaseCustomFieldValue'){
    stopifnot(all(sampled_names %in% c('customFieldId')))
  }

  if(obj_type=='BaseDynamicAllocationCreative'){
    stopifnot(all(sampled_names %in% c('advertiserId', 'id', 'name', 'size', 'previewUrl', 'policyViolations', 'appliedLabels', 'lastModifiedDateTime', 'customFieldValues')))
  }

  if(obj_type=='BaseFlashCreative'){
    stopifnot(all(sampled_names %in% c('destinationUrl', 'destinationUrlType', 'overrideSize', 'clickTagRequired', 'sslScanResult', 'sslManualOverride', 'flashAsset', 'fallbackImageAsset')))
  }

  if(obj_type=='BaseFlashRedirectCreative'){
    stopifnot(all(sampled_names %in% c('destinationUrl', 'destinationUrlType', 'flashUrl', 'fallbackUrl', 'fallbackPreviewUrl', 'sslScanResult', 'sslManualOverride')))
  }

  if(obj_type=='BaseImageCreative'){
    stopifnot(all(sampled_names %in% c('destinationUrl', 'destinationUrlType', 'overrideSize', 'primaryImageAsset')))
  }

  if(obj_type=='BaseImageRedirectCreative'){
    stopifnot(all(sampled_names %in% c('destinationUrl', 'destinationUrlType', 'imageUrl')))
  }

  if(obj_type=='BaseRichMediaStudioCreative'){
    stopifnot(all(sampled_names %in% c('advertiserId', 'id', 'name', 'size', 'previewUrl', 'policyViolations', 'appliedLabels', 'lastModifiedDateTime', 'customFieldValues', 'studioCreativeId', 'creativeFormat', 'artworkType', 'totalFileSize', 'adTagKeys', 'customKeyValues', 'surveyUrl', 'allImpressionsUrl', 'richMediaImpressionsUrl', 'backupImageImpressionsUrl', 'overrideCss', 'requiredFlashPluginVersion', 'duration', 'billingAttribute', 'richMediaStudioChildAssetProperties', 'sslScanResult', 'sslManualOverride')))
  }

  if(obj_type=='BaseVideoCreative'){
    stopifnot(all(sampled_names %in% c('destinationUrl', 'destinationUrlType', 'duration', 'allowDurationOverride', 'trackingUrls', 'companionCreativeIds', 'customParameters', 'vastPreviewUrl', 'sslScanResult', 'sslManualOverride')))
  }

  if(obj_type=='ClickTrackingCreative'){
    stopifnot(all(sampled_names %in% c('advertiserId', 'id', 'name', 'size', 'previewUrl', 'policyViolations', 'appliedLabels', 'lastModifiedDateTime', 'customFieldValues', 'clickTrackingUrl')))
  }

  if(obj_type=='ConversionEvent_TrackingUrlsMapEntry'){
    stopifnot(all(sampled_names %in% c('key', 'value')))
  }

  if(obj_type=='Creative'){
    stopifnot(all(sampled_names %in% c('advertiserId', 'id', 'name', 'size', 'previewUrl', 'policyViolations', 'appliedLabels', 'lastModifiedDateTime', 'customFieldValues')))
  }

  if(obj_type=='CreativeAsset'){
    stopifnot(all(sampled_names %in% c('assetId', 'assetByteArray', 'fileName', 'fileSize', 'assetUrl', 'size', 'imageDensity')))
  }

  if(obj_type=='CustomCreative'){
    stopifnot(all(sampled_names %in% c('destinationUrl', 'destinationUrlType', 'htmlSnippet', 'customCreativeAssets', 'isInterstitial', 'lockedOrientation', 'sslScanResult', 'sslManualOverride')))
  }

  if(obj_type=='CustomCreativeAsset'){
    stopifnot(all(sampled_names %in% c('macroName', 'assetId', 'assetByteArray', 'fileName', 'fileSize')))
  }

  if(obj_type=='CustomFieldValue'){
    stopifnot(all(sampled_names %in% c('customFieldId', 'value')))
  }

  if(obj_type=='DropDownCustomFieldValue'){
    stopifnot(all(sampled_names %in% c('customFieldId', 'customFieldOptionId')))
  }

  if(obj_type=='FlashCreative'){
    stopifnot(all(sampled_names %in% c('overrideSize', 'clickTagRequired', 'sslScanResult', 'sslManualOverride', 'flashAsset', 'fallbackImageAsset', 'swiffyAsset', 'createSwiffyAsset', 'lockedOrientation', 'clickTagOverlayEnabled')))
  }

  if(obj_type=='FlashOverlayCreative'){
    stopifnot(all(sampled_names %in% c('overrideSize', 'clickTagRequired', 'sslScanResult', 'sslManualOverride', 'flashAsset', 'fallbackImageAsset', 'companionCreativeIds', 'trackingUrls', 'customParameters', 'apiFramework', 'duration', 'vastPreviewUrl', 'lockedOrientation')))
  }

  if(obj_type=='FlashRedirectCreative'){
    stopifnot(all(sampled_names %in% c('flashUrl', 'fallbackUrl', 'fallbackPreviewUrl', 'sslScanResult', 'sslManualOverride')))
  }

  if(obj_type=='FlashRedirectOverlayCreative'){
    stopifnot(all(sampled_names %in% c('flashUrl', 'fallbackUrl', 'fallbackPreviewUrl', 'sslScanResult', 'sslManualOverride', 'companionCreativeIds', 'trackingUrls', 'customParameters', 'apiFramework', 'duration', 'flashAssetSize', 'vastPreviewUrl')))
  }

  if(obj_type=='HasDestinationUrlCreative'){
    stopifnot(all(sampled_names %in% c('advertiserId', 'id', 'name', 'size', 'previewUrl', 'policyViolations', 'appliedLabels', 'lastModifiedDateTime', 'customFieldValues', 'destinationUrl', 'destinationUrlType')))
  }

  if(obj_type=='HasHtmlSnippetDynamicAllocationCreative'){
    stopifnot(all(sampled_names %in% c('codeSnippet')))
  }

  if(obj_type=='ImageCreative'){
    stopifnot(all(sampled_names %in% c('overrideSize', 'primaryImageAsset', 'altText', 'thirdPartyImpressionUrl', 'secondaryImageAssets', 'lockedOrientation')))
  }

  if(obj_type=='ImageOverlayCreative'){
    stopifnot(all(sampled_names %in% c('overrideSize', 'primaryImageAsset', 'companionCreativeIds', 'trackingUrls', 'lockedOrientation', 'customParameters', 'duration', 'vastPreviewUrl')))
  }

  if(obj_type=='ImageRedirectCreative'){
    stopifnot(all(sampled_names %in% c('imageUrl', 'altText', 'thirdPartyImpressionUrl')))
  }

  if(obj_type=='ImageRedirectOverlayCreative'){
    stopifnot(all(sampled_names %in% c('imageUrl', 'assetSize', 'duration', 'companionCreativeIds', 'trackingUrls', 'customParameters', 'vastPreviewUrl')))
  }

  if(obj_type=='InternalRedirectCreative'){
    stopifnot(all(sampled_names %in% c('advertiserId', 'id', 'name', 'size', 'previewUrl', 'policyViolations', 'appliedLabels', 'lastModifiedDateTime', 'customFieldValues', 'lockedOrientation', 'assetSize', 'internalRedirectUrl', 'overrideSize', 'isInterstitial', 'sslScanResult', 'sslManualOverride')))
  }

  if(obj_type=='LegacyDfpCreative'){
    stopifnot(all(sampled_names %in% c('advertiserId', 'id', 'name', 'size', 'previewUrl', 'policyViolations', 'appliedLabels', 'lastModifiedDateTime', 'customFieldValues')))
  }

  if(obj_type=='LegacyDfpMobileCreative'){
    stopifnot(all(sampled_names %in% c('destinationUrl', 'destinationUrlType')))
  }

  if(obj_type=='LongCreativeTemplateVariableValue'){
    stopifnot(all(sampled_names %in% c('uniqueName', 'value')))
  }

  if(obj_type=='ProgrammaticCreative'){
    stopifnot(all(sampled_names %in% c('advertiserId', 'id', 'name', 'size', 'previewUrl', 'policyViolations', 'appliedLabels', 'lastModifiedDateTime', 'customFieldValues')))
  }

  if(obj_type=='RedirectAsset'){
    stopifnot(all(sampled_names %in% c('redirectUrl')))
  }

  if(obj_type=='RichMediaStudioChildAssetProperty'){
    stopifnot(all(sampled_names %in% c('name', 'type', 'totalFileSize', 'width', 'height', 'url')))
  }

  if(obj_type=='RichMediaStudioCreative'){
    stopifnot(all(sampled_names %in% c('studioCreativeId', 'creativeFormat', 'artworkType', 'totalFileSize', 'adTagKeys', 'customKeyValues', 'surveyUrl', 'allImpressionsUrl', 'richMediaImpressionsUrl', 'backupImageImpressionsUrl', 'overrideCss', 'requiredFlashPluginVersion', 'duration', 'billingAttribute', 'richMediaStudioChildAssetProperties', 'sslScanResult', 'sslManualOverride', 'lockedOrientation', 'isInterstitial')))
  }

  if(obj_type=='SetTopBoxCreative'){
    stopifnot(all(sampled_names %in% c('duration', 'allowDurationOverride', 'trackingUrls', 'companionCreativeIds', 'customParameters', 'vastPreviewUrl', 'sslScanResult', 'sslManualOverride', 'externalAssetId', 'providerId')))
  }

  if(obj_type=='Size'){
    stopifnot(all(sampled_names %in% c('width', 'height', 'isAspectRatio')))
  }

  if(obj_type=='StringCreativeTemplateVariableValue'){
    stopifnot(all(sampled_names %in% c('uniqueName', 'value')))
  }

  if(obj_type=='SwiffyFallbackAsset'){
    stopifnot(all(sampled_names %in% c('asset', 'html5Features', 'localizedInfoMessages')))
  }

  if(obj_type=='TemplateCreative'){
    stopifnot(all(sampled_names %in% c('advertiserId', 'id', 'name', 'size', 'previewUrl', 'policyViolations', 'appliedLabels', 'lastModifiedDateTime', 'customFieldValues', 'creativeTemplateId', 'isInterstitial', 'isNativeEligible', 'destinationUrl', 'creativeTemplateVariableValues', 'sslScanResult', 'sslManualOverride', 'lockedOrientation')))
  }

  if(obj_type=='ThirdPartyCreative'){
    stopifnot(all(sampled_names %in% c('advertiserId', 'id', 'name', 'size', 'previewUrl', 'policyViolations', 'appliedLabels', 'lastModifiedDateTime', 'customFieldValues', 'snippet', 'expandedSnippet', 'sslScanResult', 'sslManualOverride', 'lockedOrientation')))
  }

  if(obj_type=='TrackingUrls'){
    stopifnot(all(sampled_names %in% c('urls')))
  }

  if(obj_type=='UnsupportedCreative'){
    stopifnot(all(sampled_names %in% c('advertiserId', 'id', 'name', 'size', 'previewUrl', 'policyViolations', 'appliedLabels', 'lastModifiedDateTime', 'customFieldValues', 'unsupportedCreativeType')))
  }

  if(obj_type=='UrlCreativeTemplateVariableValue'){
    stopifnot(all(sampled_names %in% c('uniqueName', 'value')))
  }

  if(obj_type=='VastRedirectCreative'){
    stopifnot(all(sampled_names %in% c('advertiserId', 'id', 'name', 'size', 'previewUrl', 'policyViolations', 'appliedLabels', 'lastModifiedDateTime', 'customFieldValues', 'vastXmlUrl', 'vastRedirectType', 'duration', 'companionCreativeIds', 'trackingUrls', 'vastPreviewUrl', 'sslScanResult', 'sslManualOverride')))
  }

  if(obj_type=='VideoCreative'){
    stopifnot(all(sampled_names %in% c('duration', 'allowDurationOverride', 'trackingUrls', 'companionCreativeIds', 'customParameters', 'vastPreviewUrl', 'sslScanResult', 'sslManualOverride')))
  }

  if(obj_type=='VideoMetadata'){
    stopifnot(all(sampled_names %in% c('scalableType', 'duration', 'bitRate', 'minimumBitRate', 'maximumBitRate', 'size', 'mimeType', 'deliveryType', 'codecs')))
  }

  if(obj_type=='VideoRedirectAsset'){
    stopifnot(all(sampled_names %in% c('redirectUrl', 'metadata')))
  }

  if(obj_type=='VideoRedirectCreative'){
    stopifnot(all(sampled_names %in% c('duration', 'allowDurationOverride', 'trackingUrls', 'companionCreativeIds', 'customParameters', 'vastPreviewUrl', 'sslScanResult', 'sslManualOverride', 'videoAssets')))
  }

  if(obj_type=='VpaidLinearCreative'){
    stopifnot(all(sampled_names %in% c('destinationUrl', 'destinationUrlType', 'overrideSize', 'companionCreativeIds', 'trackingUrls', 'customParameters', 'duration', 'vastPreviewUrl', 'sslScanResult', 'sslManualOverride', 'flashAsset')))
  }

  if(obj_type=='VpaidLinearRedirectCreative'){
    stopifnot(all(sampled_names %in% c('destinationUrl', 'destinationUrlType', 'companionCreativeIds', 'trackingUrls', 'customParameters', 'duration', 'flashUrl', 'flashAssetSize', 'vastPreviewUrl', 'sslScanResult', 'sslManualOverride')))
  }

}
#' 
#' createCreatives
#' 
#' Creates new Creative objects.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService#createCreatives}{Google Documentation for createCreatives}
#' 
#' @usage dfp_createCreatives(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a createCreativesResponse
#' @export
dfp_createCreatives <- function(request_data){

  request_body <- make_request_body(service='CreativeService', root_name='createCreatives', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['createCreativesResponse']])$rval
  response <- if(is.null(response)) NULL else xmlToList(response)
  return(response)
}
#' 
#' getCreativesByStatement
#' 
#' Gets a CreativePage of Creative objects that satisfy the given Statement query. The following fields are supported for filtering:  a set of creatives 
#' \itemize{
#'   \item{id}
#'   \item{name}
#'   \item{advertiserId}
#'   \item{width}
#'   \item{height}
#'   \item{lastModifiedDateTime}
#' }
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService#getCreativesByStatement}{Google Documentation for getCreativesByStatement}
#' 
#' @usage dfp_getCreativesByStatement(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a getCreativesByStatementResponse
#' @export
dfp_getCreativesByStatement <- function(request_data){

  request_body <- make_request_body(service='CreativeService', root_name='getCreativesByStatement', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getCreativesByStatementResponse']])$rval
  response <- if(is.null(response)) NULL else xmlToList(response)
  return(response)
}
#' 
#' updateCreatives
#' 
#' Updates the specified Creative objects.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CreativeService#updateCreatives}{Google Documentation for updateCreatives}
#' 
#' @usage dfp_updateCreatives(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a updateCreativesResponse
#' @export
dfp_updateCreatives <- function(request_data){

  request_body <- make_request_body(service='CreativeService', root_name='updateCreatives', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['updateCreativesResponse']])$rval
  response <- if(is.null(response)) NULL else xmlToList(response)
  return(response)
}
#' 
