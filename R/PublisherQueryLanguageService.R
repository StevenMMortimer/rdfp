#' PublisherQueryLanguageService
#' 
#' Provides methods for executing a PQL Statement to retrieve information from
#' the system. In order to support the selection of columns of interest from
#' various tables, Statement objects support a "select" clause.
#' An example
#' query text might be "select CountryCode, Name from Geo_Target", where
#' CountryCode and Name are columns of interest and Geo_Target is the table.
#'#' The following tables are supported:<h2>Geo_Target</h2>
#'
#' Use this table instead of the other Geo tables below (Country, Region,
#' Metro, City, Postal_Code) which will eventually be removed.<table>
#' <tr> <th scope = "col">Column Name</th> <th scope="col">Description</th>
#' </tr> <tr> <td>Id</td> <td>Unique identifier for the Geo target</td> </tr>
#' <tr> <td>Name</td> <td>The name of the Geo target</td> </tr> <tr>
#' <td>CanonicalParentId</td> <td>The criteria ID of the direct parent that
#' defines the canonical name of the geo target. For example, if the current
#' geo target is "San Francisco", its canonical name would be "San Francisco,
#' California, United States" thus the canonicalParentId would be the criteria
#' ID of California and the canonicalParentId of California would be the
#' criteria ID of United states </td> </tr> <tr> <td>ParentIds</td> <td>A
#' comma separated list of criteria IDs of all parents of the geo target
#' ordered by ascending size</td> </tr> <tr> <td>CountryCode</td> <td>Country
#' code as defined by ISO 3166-1 alpha-2</td> </tr> <tr> <td>Type</td>
#' <td>Allowable values: <ul> <li>Airport</li> <li>Autonomous_Community</li>
#' <li>Canton</li> <li>City</li> <li>Congressional_District</li>
#' <li>Country</li> <li>County</li> <li>Department</li> <li>DMA_Region</li>
#' <li>Governorate</li> <li>Municipality</li> <li>Neighborhood</li>
#' <li>Postal_Code</li> <li>Prefecture</li> <li>Province</li> <li>Region</li>
#' <li>State</li> <li>Territory</li> <li>Tv_Region</li>
#' <li>Union_Territory</li> </ul> </td> </tr> <tr> <td>Targetable</td>
#' <td>Indicates whether geographical targeting is allowed</td> </tr> </table>
#' <h2>Country</h2> This table is deprecated. V201408 is the last version this
#' table can be used in. Use <strong>Geo_Target</strong> instead. <table> <tr>
#' <th scope = "col">Column Name</th> <th scope="col">Description</th> </tr>
#' <tr> <td>Id</td> <td>Unique identifier for the country</td> </tr> <tr>
#' <td>CountryCode</td> <td>Country code as defined by ISO 3166-1 alpha-2</td>
#' </tr> <tr> <td>CountryName</td> <td>The name of the country</td> </tr> <tr>
#' <td>CurrencyCode</td> <td>Currency code as defined by ISO 4217</td> </tr>
#' <tr> <td>Targetable</td> <td>Indicates whether geographical targeting is
#' allowed</td> </tr> </table> <h2>Region</h2> This table is deprecated.
#' V201408 is the last version this table can be used in. Use
#' <strong>Geo_Target</strong> instead. <table> <tr> <th scope = "col">Column
#' Name</th> <th scope="col">Description</th> </tr> <tr> <td>Id</td>
#' <td>Unique identifier for the region</td> </tr> <tr> <td>RegionCode</td>
#' <td>Region code as defined by ISO 3166-2</td> </tr> <tr>
#' <td>RegionName</td> <td>The name of the region</td> </tr> <tr>
#' <td>CountryCode</td> <td>Country code as defined by ISO 3166-1 alpha-2</td>
#' </tr> <tr> <td>CountryName</td> <td>The name of the country</td> </tr> <tr>
#' <td>Targetable</td> <td>Indicates whether geographical targeting is
#' allowed</td> </tr> </table> <h2>Metro</h2> This table is deprecated.
#' V201408 is the last version this table can be used in. Use
#' <strong>Geo_Target</strong> instead. <table> <tr> <th scope = "col">Column
#' Name</th> <th scope="col">Description</th> </tr> <tr> <td>Id</td>
#' <td>Unique identifier for the metro</td> </tr> <tr> <td>MetroCode</td>
#' <td>3 digit metro code required for metro targeting</td> </tr> <tr>
#' <td>MetroName</td> <td>The name of the metro</td> </tr> <tr>
#' <td>CountryCode</td> <td>Country code as defined by ISO 3166-1 alpha-2</td>
#' </tr> <tr> <td>CountryName</td> <td>The name of the country</td> </tr> <tr>
#' <td>Targetable</td> <td>Indicates whether geographical targeting is
#' allowed</td> </tr> </table> <h2>City</h2> This table is deprecated. V201408
#' is the last version this table can be used in. Use
#' <strong>Geo_Target</strong> instead. <table> <tr> <th scope = "col">Column
#' Name</th> <th scope="col">Description</th> </tr> <tr> <td>Id</td>
#' <td>Unique identifier for the city</td> </tr> <tr> <td>CityName</td>
#' <td>The city name</td> </tr> <tr> <td>MetroCode</td> <td>3 digit metro code
#' that the city belongs to</td> </tr> <tr> <td>MetroName</td> <td>The name of
#' the metro</td> </tr> <tr> <td>RegionCode</td> <td>Region code as defined by
#' ISO 3166-2</td> </tr> <tr> <td>RegionName</td> <td>The name of the
#' region</td> </tr> <tr> <td>CountryCode</td> <td>Country code as defined by
#' ISO 3166-1 alpha-2</td> </tr> <tr> <td>CountryName</td> <td>The name of the
#' country</td> </tr> <tr> <td>Targetable</td> <td>Indicates whether
#' geographical targeting is allowed</td> </tr> </table> <h2>Postal_Code</h2>
#' This table is deprecated. V201408 is the last version this table can be
#' used in. Use <strong>Geo_Target</strong> instead. <table> <tr> <th scope =
#' "col">Column Name</th> <th scope = "col">Description</th> </tr> <tr>
#' <td>Id</td> <td>Unique identifier for the postal code</td> </tr> <tr>
#' <td>PostalCode</td> <td>Postal code</td> </tr> <tr> <td>CountryCode</td>
#' <td>Country code as defined by ISO 3166-1 alpha-2</td> </tr> <tr>
#' <td>Targetable</td> <td>Indicates whether geographical targeting is
#' allowed</td> </tr> </table> <h2>Bandwidth_Group</h2> <table> <tr> <th
#' scope="col">Column Name</th> <th scope="col">Description</th> </tr> <tr>
#' <td>Id</td> <td>Unique identifier for the bandwidth group</td> </tr> <tr>
#' <td>BandwidthName</td> <td>Name of the bandwidth group</td> </tr> </table>
#' <h2>Browser</h2> <table> <tr> <th scope = "col">Column Name</th> <th
#' scope="col">Description</th> </tr> <tr> <td>Id</td> <td>Unique identifier
#' for the browser</td> </tr> <tr> <td>BrowserName</td> <td>Name of the
#' browser</td> </tr> <tr> <td>MajorVersion</td> <td>Major version of the
#' browser</td> </tr> <tr> <td>MinorVersion</td> <td>Minor version of the
#' browser</td> </tr> </table> <h2>Browser_Language</h2> <table> <tr> <th
#' scope = "col">Column Name</th> <th scope="col">Description</th> </tr> <tr>
#' <td>Id</td> <td>Unique identifier for the browser language</td> </tr> <tr>
#' <td>BrowserLanguageName</td> <td>Browser's language</td> </tr> </table>
#' <h2>Device_Capability</h2> <table> <tr> <th scope="col">Column Name</th>
#' <th scope="col">Description</th> </tr> <tr> <td>Id</td> <td>Unique
#' identifier for the device capability</td> </tr> <tr>
#' <td>DeviceCapabilityName</td> <td>Name of the device capability</td> </tr>
#' </table> <h2>Device_Category</h2> <table> <tr> <th scope="col">Column
#' Name</th> <th scope="col">Description</th> </tr> <tr> <td>Id</td>
#' <td>Unique identifier for the device category</td> </tr> <tr>
#' <td>DeviceCategoryName</td> <td>Name of the device category</td> </tr>
#' </table> <h2>Device_Manufacturer</h2> <table> <tr> <th scope="col">Column
#' Name</th> <th scope="col">Description</th> </tr> <tr> <td>Id</td>
#' <td>Unique identifier for the device manufacturer</td> </tr> <tr>
#' <td>MobileDeviceManufacturerName</td> <td>Name of the device
#' manufacturer</td> </tr> </table> <h2>Mobile_Carrier</h2> <table> <tr> <th
#' scope="col">Column Name</th> <th scope="col">Description</th> </tr> <tr>
#' <td>Id</td> <td>Unique identifier for the mobile carrier</td> </tr> <tr>
#' <td>CountryCode</td> <td>The country code of the mobile carrier</td> </tr>
#' <tr> <td>MobileCarrierName</td> <td>Name of the mobile carrier</td> </tr>
#' </table> <h2>Mobile_Device</h2> <table> <tr> <th scope="col">Column
#' Name</th> <th scope="col">Description</th> </tr> <tr> <td>Id</td>
#' <td>Unique identifier for the mobile device</td> </tr> <tr>
#' <td>MobileDeviceManufacturerId</td> <td>Id of the device manufacturer</td>
#' </tr> <tr> <td>MobileDeviceName</td> <td>Name of the mobile device</td>
#' </tr> </table> <h2>Mobile_Device_Submodel</h2> <table> <tr> <th
#' scope="col">Column Name</th> <th scope="col">Description</th> </tr> <tr>
#' <td>Id</td> <td>Unique identifier for the mobile device submodel</td> </tr>
#' <tr> <td>MobileDeviceId</td> <td>Id of the mobile device</td> </tr> <tr>
#' <td>MobileDeviceSubmodelName</td> <td>Name of the mobile device
#' submodel</td> </tr> </table> <h2>Operating_System</h2> <table> <tr> <th
#' scope = "col">Column Name</th> <th scope="col">Description</th> </tr> <tr>
#' <td>Id</td> <td>Unique identifier for the operating system</td> </tr> <tr>
#' <td>OperatingSystemName</td> <td>Name of the operating system</td> </tr>
#' </table> <h2>Operating_System_Version</h2> <table> <tr> <th
#' scope="col">Column Name</th> <th scope="col">Description</th> </tr> <tr>
#' <td>Id</td> <td>Unique identifier for the operating system version</td>
#' </tr> <tr> <td>OperatingSystemId</td> <td>Id of the operating system</td>
#' </tr> <tr> <td>MajorVersion</td> <td>The operating system major
#' version</td> </tr> <tr> <td>MinorVersion</td> <td>The operating system
#' minor version</td> </tr> <tr> <td>MicroVersion</td> <td>The operating
#' system micro version</td> </tr> </table> <h2>Third_Party_Company</h2>
#' <table> <tr> <th scope="col">Column Name</th> <th
#' scope="col">Description</th> </tr> <tr> <td>Id</td> <td>Unique identifier
#' for the third party company</td> </tr> <tr> <td>Name</td> <td>The third
#' party company name</td> </tr> <tr> <td>Type</td> <td>The third party
#' company type</td> </tr> <tr> <td>Status</td> <td>The status of the third
#' party company</td> </tr> </table> <h2>Time_Zone</h2> <table> <tr> <th
#' scope="col">Column Name</th> <th scope="col">Description</th> </tr> <tr>
#' <td>Id</td> <td>Unique identifier for the time zone in the form of
#' America/New_York</td> </tr> <tr> <td>StandardGmtOffset</td> <td>The
#' standard GMT offset of the time zone in the form of GMT-05:00 for
#' America/New_York</td> </tr> <tr> <td>SupportedInReports</td> <td>Indicates
#' whether the time zone is supported in reports. Only time zones that are
#' full hour offsets from Network#timeZone are supported in reports.</td>
#' </tr> </table> <h2 id="Line_Item">Line_Item</h2><table><tr><th
#' scope="col">Column name</th><th scope="col">Type</th><th
#' scope="col">Description</th></tr><tr><td>CostType</td><td><code>Text</code></td><td>The
#' method used for billing this
#' LineItem.</td></tr><tr><td>CreationDateTime</td><td><code>Datetime</code></td><td>The
#' date and time this LineItem was last created. This attribute may be null
#' for LineItems created before this feature was
#' introduced.</td></tr><tr><td>DeliveryRateType</td><td><code>Text</code></td><td>The
#' strategy for delivering ads over the course of the LineItem's duration.
#' This attribute is optional and defaults to DeliveryRateType#EVENLY.
#' Starting in v201306, it may default to DeliveryRateType#FRONTLOADED if
#' specifically configured to on the
#' network.</td></tr><tr><td>EndDateTime</td><td><code>Datetime</code></td><td>The
#' date and time on which the LineItem stops
#' serving.</td></tr><tr><td>ExternalId</td><td><code>Text</code></td><td>An
#' identifier for the LineItem that is meaningful to the
#' publisher.</td></tr><tr><td>Id</td><td><code>Number</code></td><td>Uniquely
#' identifies the LineItem. This attribute is read-only and is assigned by
#' Google when a line item is
#' created.</td></tr><tr><td>IsMissingCreatives</td><td><code>Boolean</code></td><td>Indicates
#' if a LineItem is missing any Creative creatives for the
#' creativePlaceholders
#' specified.</td></tr><tr><td>IsSetTopBoxEnabled</td><td><code>Boolean</code></td><td>Whether
#' or not this line item is set-top box
#' enabled.</td></tr><tr><td>LastModifiedDateTime</td><td><code>Datetime</code></td><td>The
#' date and time this LineItem was last
#' modified.</td></tr><tr><td>LineItemType</td><td><code>Text</code></td><td>Indicates
#' the line item type of a
#' LineItem.</td></tr><tr><td>Name</td><td><code>Text</code></td><td>The name
#' of the
#' LineItem.</td></tr><tr><td>OrderId</td><td><code>Number</code></td><td>The
#' ID of the Order to which the LineItem
#' belongs.</td></tr><tr><td>StartDateTime</td><td><code>Datetime</code></td><td>The
#' date and time on which the LineItem is enabled to begin
#' serving.</td></tr><tr><td>Status</td><td><code>Text</code></td><td>The
#' status of the
#' LineItem.</td></tr><tr><td>Targeting</td><td><code>Targeting</code></td><td>The
#' targeting criteria for the ad campaign.
#' <b>This object is
#' experimental!<code>Targeting</code> is an experimental, innovative, and
#' rapidlychanging new feature for DFP. Unfortunately, being on the bleeding
#' edge means that we may makebackwards-incompatible changes
#' to<code>Targeting</code>. We will inform the community when this featureis
#' no longer
#' experimental.</b></td></tr><tr><td>UnitsBought</td><td><code>Number</code></td><td>The
#' total number of impressions or clicks that will be reserved for the
#' LineItem. If the line item is of type LineItemType#SPONSORSHIP, then it
#' represents the percentage of available impressions
#' reserved.</td></tr></table><h2 id="Ad_Unit">Ad_Unit</h2><table><tr><th
#' scope="col">Column name</th><th scope="col">Type</th><th
#' scope="col">Description</th></tr><tr><td>AdUnitCode</td><td><code>Text</code></td><td>A
#' string used to uniquely identify the ad unit for the purposes of serving
#' the ad. This attribute is read-only and is assigned by Google when an ad
#' unit is
#' created.</td></tr><tr><td>ExternalSetTopBoxChannelId</td><td><code>Text</code></td><td>The
#' channel ID for set-top box enabled AdUnit ad
#' units.</td></tr><tr><td>Id</td><td><code>Number</code></td><td>Uniquely
#' identifies the ad unit. This value is read-only and is assigned by Google
#' when an ad unit is
#' created.</td></tr><tr><td>LastModifiedDateTime</td><td><code>Datetime</code></td><td>The
#' date and time this ad unit was last
#' modified.</td></tr><tr><td>Name</td><td><code>Text</code></td><td>The name
#' of the ad
#' unit.</td></tr><tr><td>ParentId</td><td><code>Number</code></td><td>The ID
#' of the ad unit's parent. Every ad unit has a parent except for the root ad
#' unit, which is created by
#' Google.</td></tr><tr><td>PartnerId</td><td><code>Number</code></td><td>The
#' unique ID of the Company, which is of type
#' Company.Type#AFFILIATE_DISTRIBUTION_PARTNER, to which this ad unit
#' belongs.</td></tr></table><h2 id="User">User</h2><table><tr><th
#' scope="col">Column name</th><th scope="col">Type</th><th
#' scope="col">Description</th></tr><tr><td>Email</td><td><code>Text</code></td><td>The
#' email or login of the
#' user.</td></tr><tr><td>ExternalId</td><td><code>Text</code></td><td>An
#' identifier for the user that is meaningful to the
#' publisher.</td></tr><tr><td>Id</td><td><code>Number</code></td><td>The
#' unique ID of the
#' user.</td></tr><tr><td>IsServiceAccount</td><td><code>Boolean</code></td><td>True
#' if this user is an OAuth2 service account user, false
#' otherwise.</td></tr><tr><td>Name</td><td><code>Text</code></td><td>The name
#' of the
#' user.</td></tr><tr><td>RoleId</td><td><code>Number</code></td><td>The
#' unique role ID of the user. Role objects that are created by Google will
#' have negative
#' IDs.</td></tr><tr><td>RoleName</td><td><code>Text</code></td><td>The name
#' of the Role assigned to the user.</td></tr></table><h2
#' id="Exchange_Rate">Exchange_Rate</h2><table><tr><th scope="col">Column
#' name</th><th scope="col">Type</th><th
#' scope="col">Description</th></tr><tr><td>CurrencyCode</td><td><code>Text</code></td><td>The
#' currency code that the exchange rate is related to. The exchange rate is
#' between this currency and Network#currencyCode the network's currency. This
#' attribute is required for creation and then is
#' readonly.</td></tr><tr><td>Direction</td><td><code>Text</code></td><td>The
#' direction that the exchange rate is in. It determines whether the exchange
#' rate is from this currency to Network#currencyCode the network's currency,
#' or from Network#currencyCode the network's currency to this currency. This
#' attribute can be
#' updated.</td></tr><tr><td>ExchangeRate</td><td><code>Number</code></td><td>The
#' latest exchange rate at current refresh rate and in current direction. The
#' value is stored as the exchange rate times 10,000,000,000 truncated to a
#' long. Setting this attribute requires the refresh rate to be already set to
#' ExchangeRateRefreshRate#FIXED. Otherwise an exception will be
#' thrown.</td></tr><tr><td>Id</td><td><code>Number</code></td><td>The ID of
#' the ExchangeRate. This attribute is readonly and is assigned by Google when
#' an exchange rate is
#' created.</td></tr><tr><td>RefreshRate</td><td><code>Text</code></td><td>The
#' refresh rate at which the exchange rate is updated. Setting this attribute
#' to ExchangeRateRefreshRate#FIXED without setting the exchange rate value
#' will cause unknown exchange rate value returned in future
#' queries.</td></tr></table><h2
#' id="Programmatic_Buyer">Programmatic_Buyer</h2><table><tr><th
#' scope="col">Column name</th><th scope="col">Type</th><th
#' scope="col">Description</th></tr><tr><td>AdxBuyerNetworkId</td><td><code>Number</code></td><td>The
#' ID used by Adx to bill the appropriate buyer network for a programmatic
#' order.</td></tr><tr><td>BuyerId</td><td><code>Number</code></td><td>The ID
#' used by the buyer for their billing reference. This may represent either an
#' Advertiser or Partner
#' ID.</td></tr><tr><td>Name</td><td><code>Text</code></td><td>Display name
#' that references the
#' buyer.</td></tr><tr><td>ParentId</td><td><code>Number</code></td><td>The ID
#' of the programmatic buyer's parent. For advertisers, this field contains
#' the advertiser's partner ID. For partners, this field is
#' zero.</td></tr><tr><td>Type</td><td><code>Text</code></td><td>The type of a
#' programmatic buyer.</td></tr></table><h2
#' id="Audience_Segment_Category">Audience_Segment_Category</h2><table><tr><th
#' scope="col">Column name</th><th scope="col">Type</th><th
#' scope="col">Description</th></tr><tr><td>Id</td><td><code>Number</code></td><td>The
#' unique identifier for the audience segment
#' category.</td></tr><tr><td>Name</td><td><code>Text</code></td><td>The name
#' of the audience segment
#' category.</td></tr><tr><td>ParentId</td><td><code>Number</code></td><td>The
#' unique identifier of the audience segment category's
#' parent.</td></tr></table><h2
#' id="Audience_Segment">Audience_Segment</h2><table><tr><th
#' scope="col">Column name</th><th scope="col">Type</th><th
#' scope="col">Description</th></tr><tr><td>CategoryIds</td><td><code>Set of
#' number</code></td><td>The ids of the categories that this audience segment
#' belongs to.</td></tr><tr><td>Id</td><td><code>Number</code></td><td>The
#' unique identifier for the audience
#' segment.</td></tr><tr><td>Name</td><td><code>Text</code></td><td>The name
#' of the audience
#' segment.</td></tr><tr><td>OwnerAccountId</td><td><code>Number</code></td><td>The
#' owner account id of the audience
#' segment.</td></tr><tr><td>OwnerName</td><td><code>Text</code></td><td>The
#' owner name of the audience
#' segment.</td></tr><tr><td>SegmentType</td><td><code>Text</code></td><td>The
#' type of the audience segment.</td></tr></table><h2
#' id="Proposal_Retraction_Reason">Proposal_Retraction_Reason</h2><table><tr><th
#' scope="col">Column name</th><th scope="col">Type</th><th
#' scope="col">Description</th></tr><tr><td>Id</td><td><code>Number</code></td><td>The
#' ID of the ProposalRetractionReason. This attribute is readonly and is
#' assigned by Google when a proposal retraction reason is
#' created.</td></tr><tr><td>IsActive</td><td><code>Boolean</code></td><td>True
#' if the ProposalRetractionReason is
#' active.</td></tr><tr><td>Name</td><td><code>Text</code></td><td>The name of
#' the ProposalRetractionReason.</td></tr></table><h2
#' id="Audience_Explorer">Audience_Explorer</h2><table><tr><th
#' scope="col">Column name</th><th scope="col">Type</th><th
#' scope="col">Description</th></tr><tr><td>Id</td><td><code>Number</code></td><td>Uniquely
#' identifies the audience
#' segment.</td></tr><tr><td>ThirtyDayActiveSize</td><td><code>Number</code></td><td>The
#' number of active unique cookies in this segment over the last 30
#' days.</td></tr><tr><td>ThirtyDayClicks</td><td><code>Number</code></td><td>The
#' number of clicks for this segment over the last 30
#' days.</td></tr><tr><td>ThirtyDayImpressions</td><td><code>Number</code></td><td>The
#' number of impressions for this segment over the last 30
#' days.</td></tr></table>
#' 
#' PublisherQueryLanguageService Object Factory
#' 
#' A function to create a variety of objects that are part of the PublisherQueryLanguageService
#' Note: not all objects here are inputs to the functions of this service so 
#' please consult each function for the required inputs
#' 
#' Below is a list of objects and their required components to be created with this function:
#' 
#' \strong{AdUnitAfcSizeError}
#' 
#' Caused by supplying sizes that are not compatible with the Afc sizes.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.AdUnitAfcSizeError}{Google Documentation for AdUnitAfcSizeError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.AdUnitCodeError}{Google Documentation for AdUnitCodeError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.AdUnitHierarchyError}{Google Documentation for AdUnitHierarchyError}
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
#' \strong{AdUnitTargeting}
#' 
#' Represents targeted or excluded ad units.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.AdUnitTargeting}{Google Documentation for AdUnitTargeting}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.ApiError}{Google Documentation for ApiError}
#' \describe{
#'  \item{fieldPath}{a character - The OGNL field path to identify cause of error.}
#'  \item{trigger}{a character - The data that caused the error.}
#'  \item{errorString}{a character - A simple string representation of the error and reason.}
#' }
#' 
#' \strong{ApiException}
#' 
#' Exception class for holding a list of service errors.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.ApiException}{Google Documentation for ApiException}
#' \describe{
#'  \item{message}{a character (inherited from ApplicationException) - Error message.}
#'  \item{errors}{a ApiError - List of errors.}
#' }
#' 
#' \strong{ApiVersionError}
#' 
#' Errors related to the usage of API versions.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.ApiVersionError}{Google Documentation for ApiVersionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.ApplicationException}{Google Documentation for ApplicationException}
#' \describe{
#'  \item{message}{a character - Error message.}
#' }
#' 
#' \strong{AudienceSegmentCriteria}
#' 
#' An AudienceSegmentCriteria object is used to target AudienceSegment objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.AudienceSegmentCriteria}{Google Documentation for AudienceSegmentCriteria}
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
#' \strong{AudienceSegmentError}
#' 
#' Errors that could occur on audience segment related requests.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.AudienceSegmentError}{Google Documentation for AudienceSegmentError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.AuthenticationError}{Google Documentation for AuthenticationError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.BandwidthGroup}{Google Documentation for BandwidthGroup}
#' \describe{
#'  \item{id}{a integer (inherited from Technology) - The unique ID of the Technology. This value is required for all forms of
#' TechnologyTargeting.}
#'  \item{name}{a character (inherited from Technology) - The name of the technology being targeting. This value is read-only and is
#' assigned by Google.}
#' }
#' 
#' \strong{BandwidthGroupTargeting}
#' 
#' Represents bandwidth groups that are being targeted or excluded by the
#' LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.BandwidthGroupTargeting}{Google Documentation for BandwidthGroupTargeting}
#' \describe{
#'  \item{isTargeted}{a boolean - Indicates whether bandwidth groups should be targeted or excluded. This
#' attribute is optional and defaults to true.}
#'  \item{bandwidthGroups}{a Technology - The bandwidth groups that are being targeted or excluded by the LineItem.}
#' }
#' 
#' \strong{BooleanValue}
#' 
#' Contains a boolean value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.BooleanValue}{Google Documentation for BooleanValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a boolean - The boolean value.}
#' }
#' 
#' \strong{Browser}
#' 
#' Represents an internet browser.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.Browser}{Google Documentation for Browser}
#' \describe{
#'  \item{id}{a integer (inherited from Technology) - The unique ID of the Technology. This value is required for all forms of
#' TechnologyTargeting.}
#'  \item{name}{a character (inherited from Technology) - The name of the technology being targeting. This value is read-only and is
#' assigned by Google.}
#'  \item{majorVersion}{a character - Browser major version.}
#'  \item{minorVersion}{a character - Browser minor version.}
#' }
#' 
#' \strong{BrowserLanguage}
#' 
#' Represents a Browser's language.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.BrowserLanguage}{Google Documentation for BrowserLanguage}
#' \describe{
#'  \item{id}{a integer (inherited from Technology) - The unique ID of the Technology. This value is required for all forms of
#' TechnologyTargeting.}
#'  \item{name}{a character (inherited from Technology) - The name of the technology being targeting. This value is read-only and is
#' assigned by Google.}
#' }
#' 
#' \strong{BrowserLanguageTargeting}
#' 
#' Represents browser languages that are being targeted or excluded by the
#' LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.BrowserLanguageTargeting}{Google Documentation for BrowserLanguageTargeting}
#' \describe{
#'  \item{isTargeted}{a boolean - Indicates whether browsers languages should be targeted or excluded. This
#' attribute is optional and defaults to true.}
#'  \item{browserLanguages}{a Technology - Browser languages that are being targeted or excluded by the LineItem.}
#' }
#' 
#' \strong{BrowserTargeting}
#' 
#' Represents browsers that are being targeted or excluded by the LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.BrowserTargeting}{Google Documentation for BrowserTargeting}
#' \describe{
#'  \item{isTargeted}{a boolean - Indicates whether browsers should be targeted or excluded. This attribute is
#' optional and defaults to true.}
#'  \item{browsers}{a Technology - Browsers that are being targeted or excluded by the LineItem.}
#' }
#' 
#' \strong{CollectionSizeError}
#' 
#' Error for the size of the collection being too large
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.CollectionSizeError}{Google Documentation for CollectionSizeError}
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
#' \strong{ColumnType}
#' 
#' Contains information about a column in a ResultSet.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.ColumnType}{Google Documentation for ColumnType}
#' \describe{
#'  \item{labelName}{a character - Represents the column's name.}
#' }
#' 
#' \strong{CommonError}
#' 
#' A place for common errors that can be used across services.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.CommonError}{Google Documentation for CommonError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.ContentMetadataKeyHierarchyTargeting}{Google Documentation for ContentMetadataKeyHierarchyTargeting}
#' \describe{
#'  \item{customTargetingValueIds}{a integer - The list of IDs of the targeted CustomTargetingValue objects that are ANDed
#' together. Targeting values do not need to be in the order of the hierarchy
#' levels. For example, if the hierarchy is "show > season > genre" the values
#' could be "season=3, show=30rock, genre=comedy."}
#' }
#' 
#' \strong{ContentTargeting}
#' 
#' Used to target LineItems to specific videos on a publisher's site.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.ContentTargeting}{Google Documentation for ContentTargeting}
#' \describe{
#'  \item{targetedContentIds}{a integer - The IDs of content being targeted by the LineItem.}
#'  \item{excludedContentIds}{a integer - The IDs of content being excluded by the LineItem.}
#'  \item{targetedVideoCategoryIds}{a integer - A list of video categories, represented by CustomTargetingValue IDs, that
#' are being targeted by the LineItem.  These IDs must be from video
#' categories, which are a set of CustomTargetingValues that belong to the
#' content browse key.  The content browse key can be obtained by getting the
#' Network contentBrowseCustomTargetingKeyId and the acceptable values can be
#' obtained using the CustomTargetingService
#' getCustomTargetingValuesByStatement.}
#'  \item{excludedVideoCategoryIds}{a integer - A list of video categories, represented by CustomTargetingValue IDs, that
#' are being excluded by the LineItem.  These IDs must be from video
#' categories, which are a set of CustomTargetingValues that belong to the
#' content browse key.  The content browse key can be obtained by getting the
#' Network contentBrowseCustomTargetingKeyId and the acceptable values can be
#' obtained using the CustomTargetingService
#' getCustomTargetingValuesByStatement.}
#'  \item{targetedVideoContentBundleIds}{a integer - A list of video content bundles, represented by ContentBundle IDs, that are
#' being targeted by the LineItem.}
#'  \item{excludedVideoContentBundleIds}{a integer - A list of video content bundles, represented by ContentBundle IDs, that are
#' being excluded by the LineItem.}
#'  \item{targetedContentMetadata}{a ContentMetadataKeyHierarchyTargeting - A list of content metadata within hierarchies that are being targeted by the
#' LineItem.}
#'  \item{excludedContentMetadata}{a ContentMetadataKeyHierarchyTargeting - A list of content metadata within hierarchies that are being excluded by the
#' LineItem.}
#' }
#' 
#' \strong{CreativeError}
#' 
#' Lists all errors associated with creatives.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.CreativeError}{Google Documentation for CreativeError}
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
#' \strong{CustomCriteria}
#' 
#' A CustomCriteria object is used to perform custom criteria targeting on
#' custom targeting keys of type CustomTargetingKey.Type PREDEFINED or
#' CustomTargetingKey.Type FREEFORM.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.CustomCriteria}{Google Documentation for CustomCriteria}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.CustomCriteriaLeaf}{Google Documentation for CustomCriteriaLeaf}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.CustomCriteriaNode}{Google Documentation for CustomCriteriaNode}
#' \describe{
#' }
#' 
#' \strong{CustomCriteriaSet}
#' 
#' A CustomCriteriaSet comprises of a set of CustomCriteriaNode objects
#' combined by the CustomCriteriaSet.LogicalOperator logicalOperator. The
#' custom criteria targeting tree is subject to the rules defined on Targeting
#' customTargeting.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.CustomCriteriaSet}{Google Documentation for CustomCriteriaSet}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.Date}{Google Documentation for Date}
#' \describe{
#'  \item{year}{a integer - Year (e.g., 2009)}
#'  \item{month}{a integer - Month (1..12)}
#'  \item{day}{a integer - Day (1..31)}
#' }
#' 
#' \strong{DateTime}
#' 
#' Represents a date combined with the time of day.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.DateTime}{Google Documentation for DateTime}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.DateTimeValue}{Google Documentation for DateTimeValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a DateTime - The DateTime value.}
#' }
#' 
#' \strong{DateValue}
#' 
#' Contains a date value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.DateValue}{Google Documentation for DateValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a Date - The Date value.}
#' }
#' 
#' \strong{DayPart}
#' 
#' DayPart represents a time-period within a day of the week which is targeted
#' by a LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.DayPart}{Google Documentation for DayPart}
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
#'  \item{startTime}{a TimeOfDay - Represents the start time of the targeted period (inclusive).}
#'  \item{endTime}{a TimeOfDay - Represents the end time of the targeted period (exclusive).}
#' }
#' 
#' \strong{DayPartTargeting}
#' 
#' Modify the delivery times of line items for particular days of the week. By
#' default, line items are served at all days and times.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.DayPartTargeting}{Google Documentation for DayPartTargeting}
#' \describe{
#'  \item{dayParts}{a DayPart - Specifies days of the week and times at which a LineItem will be delivered.
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
#' \strong{DBMClientError}
#' 
#' Errors related to using the DBM Api.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.DBMClientError}{Google Documentation for DBMClientError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a DBMClientError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{AUTHENTICATION_ERROR - Active gaia user does not have access to DBM.}
#'      \item{NOT_FOUND - Indicates that an attempt was made to retrieve an entity that does not
#' exist.}
#'      \item{RPC_ERROR - An RPC error has occurred.}
#'      \item{UNMAPPED_DBM_ERROR - Catch all for DBM api errors that we do not have a mapping for.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{DeviceCapability}
#' 
#' Represents a capability of a physical device.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.DeviceCapability}{Google Documentation for DeviceCapability}
#' \describe{
#'  \item{id}{a integer (inherited from Technology) - The unique ID of the Technology. This value is required for all forms of
#' TechnologyTargeting.}
#'  \item{name}{a character (inherited from Technology) - The name of the technology being targeting. This value is read-only and is
#' assigned by Google.}
#' }
#' 
#' \strong{DeviceCapabilityTargeting}
#' 
#' Represents device capabilities that are being targeted or excluded by the
#' LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.DeviceCapabilityTargeting}{Google Documentation for DeviceCapabilityTargeting}
#' \describe{
#'  \item{targetedDeviceCapabilities}{a Technology - Device capabilities that are being targeted by the LineItem.}
#'  \item{excludedDeviceCapabilities}{a Technology - Device capabilities that are being excluded by the LineItem.}
#' }
#' 
#' \strong{DeviceCategory}
#' 
#' Represents the category of a device.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.DeviceCategory}{Google Documentation for DeviceCategory}
#' \describe{
#'  \item{id}{a integer (inherited from Technology) - The unique ID of the Technology. This value is required for all forms of
#' TechnologyTargeting.}
#'  \item{name}{a character (inherited from Technology) - The name of the technology being targeting. This value is read-only and is
#' assigned by Google.}
#' }
#' 
#' \strong{DeviceCategoryTargeting}
#' 
#' Represents device categories that are being targeted or excluded by the
#' LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.DeviceCategoryTargeting}{Google Documentation for DeviceCategoryTargeting}
#' \describe{
#'  \item{targetedDeviceCategories}{a Technology - Device categories that are being targeted by the LineItem.}
#'  \item{excludedDeviceCategories}{a Technology - Device categories that are being excluded by the LineItem.}
#' }
#' 
#' \strong{DeviceManufacturer}
#' 
#' Represents a mobile device's manufacturer.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.DeviceManufacturer}{Google Documentation for DeviceManufacturer}
#' \describe{
#'  \item{id}{a integer (inherited from Technology) - The unique ID of the Technology. This value is required for all forms of
#' TechnologyTargeting.}
#'  \item{name}{a character (inherited from Technology) - The name of the technology being targeting. This value is read-only and is
#' assigned by Google.}
#' }
#' 
#' \strong{DeviceManufacturerTargeting}
#' 
#' Represents device manufacturer that are being targeted or excluded by the
#' LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.DeviceManufacturerTargeting}{Google Documentation for DeviceManufacturerTargeting}
#' \describe{
#'  \item{isTargeted}{a boolean - Indicates whether device manufacturers should be targeted or excluded. This
#' attribute is optional and defaults to true.}
#'  \item{deviceManufacturers}{a Technology - Device manufacturers that are being targeted or excluded by the LineItem.}
#' }
#' 
#' \strong{ExchangeRateError}
#' 
#' Lists all errors associated with ExchangeRate objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.ExchangeRateError}{Google Documentation for ExchangeRateError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.FeatureError}{Google Documentation for FeatureError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.FileError}{Google Documentation for FileError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.GeoTargeting}{Google Documentation for GeoTargeting}
#' \describe{
#'  \item{targetedLocations}{a Location - The geographical locations being targeted by the LineItem.}
#'  \item{excludedLocations}{a Location - The geographical locations being excluded by the LineItem.}
#' }
#' 
#' \strong{InternalApiError}
#' 
#' Indicates that a server-side error has occured. InternalApiErrors are
#' generally not the result of an invalid request or message sent by the
#' client.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.InternalApiError}{Google Documentation for InternalApiError}
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
#' \strong{InvalidEmailError}
#' 
#' Caused by supplying a value for an email attribute that is not a valid email
#' address.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.InvalidEmailError}{Google Documentation for InvalidEmailError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a InvalidEmailError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{INVALID_FORMAT - The value is not a valid email address.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{InvalidUrlError}
#' 
#' Lists all errors associated with URLs.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.InvalidUrlError}{Google Documentation for InvalidUrlError}
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
#' \strong{InventoryTargeting}
#' 
#' A collection of targeted and excluded ad units and placements.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.InventoryTargeting}{Google Documentation for InventoryTargeting}
#' \describe{
#'  \item{targetedAdUnits}{a AdUnitTargeting - A list of targeted AdUnitTargeting.}
#'  \item{excludedAdUnits}{a AdUnitTargeting - A list of excluded AdUnitTargeting.}
#'  \item{targetedPlacementIds}{a integer - A list of targeted Placement ids.}
#' }
#' 
#' \strong{InventoryTargetingError}
#' 
#' Lists all inventory errors caused by associating a line item with a
#' targeting expression.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.InventoryTargetingError}{Google Documentation for InventoryTargetingError}
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
#' \strong{InventoryUnitError}
#' 
#' Lists the generic errors associated with AdUnit objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.InventoryUnitError}{Google Documentation for InventoryUnitError}
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
#' \strong{LineItemFlightDateError}
#' 
#' Lists all errors associated with LineItem start and end dates.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.LineItemFlightDateError}{Google Documentation for LineItemFlightDateError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.LineItemOperationError}{Google Documentation for LineItemOperationError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.Location}{Google Documentation for Location}
#' \describe{
#'  \item{id}{a integer - Uniquely identifies each Location.}
#'  \item{type}{a character - The location type for this geographical entity (ex. "COUNTRY", "CITY",
#' "STATE", "COUNTY", etc.)}
#'  \item{canonicalParentId}{a integer - The nearest location parent's ID for this geographical entity.}
#'  \item{displayName}{a character - The localized name of the geographical entity.}
#' }
#' 
#' \strong{MobileCarrier}
#' 
#' Represents a mobile carrier. Carrier targeting is only available to DFP
#' mobile publishers.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.MobileCarrier}{Google Documentation for MobileCarrier}
#' \describe{
#'  \item{id}{a integer (inherited from Technology) - The unique ID of the Technology. This value is required for all forms of
#' TechnologyTargeting.}
#'  \item{name}{a character (inherited from Technology) - The name of the technology being targeting. This value is read-only and is
#' assigned by Google.}
#' }
#' 
#' \strong{MobileCarrierTargeting}
#' 
#' Represents mobile carriers that are being targeted or excluded by the
#' LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.MobileCarrierTargeting}{Google Documentation for MobileCarrierTargeting}
#' \describe{
#'  \item{isTargeted}{a boolean - Indicates whether mobile carriers should be targeted or excluded. This
#' attribute is optional and defaults to true.}
#'  \item{mobileCarriers}{a Technology - Mobile carriers that are being targeted or excluded by the LineItem.}
#' }
#' 
#' \strong{MobileDevice}
#' 
#' Represents a Mobile Device.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.MobileDevice}{Google Documentation for MobileDevice}
#' \describe{
#'  \item{id}{a integer (inherited from Technology) - The unique ID of the Technology. This value is required for all forms of
#' TechnologyTargeting.}
#'  \item{name}{a character (inherited from Technology) - The name of the technology being targeting. This value is read-only and is
#' assigned by Google.}
#'  \item{manufacturerCriterionId}{a integer - Manufacturer Id.}
#' }
#' 
#' \strong{MobileDeviceSubmodel}
#' 
#' Represents a mobile device submodel.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.MobileDeviceSubmodel}{Google Documentation for MobileDeviceSubmodel}
#' \describe{
#'  \item{id}{a integer (inherited from Technology) - The unique ID of the Technology. This value is required for all forms of
#' TechnologyTargeting.}
#'  \item{name}{a character (inherited from Technology) - The name of the technology being targeting. This value is read-only and is
#' assigned by Google.}
#'  \item{mobileDeviceCriterionId}{a integer - The mobile device id.}
#'  \item{deviceManufacturerCriterionId}{a integer - The device manufacturer id.}
#' }
#' 
#' \strong{MobileDeviceSubmodelTargeting}
#' 
#' Represents mobile devices that are being targeted or excluded by the
#' LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.MobileDeviceSubmodelTargeting}{Google Documentation for MobileDeviceSubmodelTargeting}
#' \describe{
#'  \item{targetedMobileDeviceSubmodels}{a Technology - Mobile device submodels that are being targeted by the LineItem.}
#'  \item{excludedMobileDeviceSubmodels}{a Technology - Mobile device submodels that are being excluded by the LineItem.}
#' }
#' 
#' \strong{MobileDeviceTargeting}
#' 
#' Represents mobile devices that are being targeted or excluded by the
#' LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.MobileDeviceTargeting}{Google Documentation for MobileDeviceTargeting}
#' \describe{
#'  \item{targetedMobileDevices}{a Technology - Mobile devices that are being targeted by the LineItem.}
#'  \item{excludedMobileDevices}{a Technology - Mobile devices that are being excluded by the LineItem.}
#' }
#' 
#' \strong{NotNullError}
#' 
#' Caused by supplying a null value for an attribute that cannot be null.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.NotNullError}{Google Documentation for NotNullError}
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
#' Caused by supplying a non-null value for an attribute that should be null.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.NullError}{Google Documentation for NullError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a NullError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{NOT_NULL}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{NumberValue}
#' 
#' Contains a numeric value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.NumberValue}{Google Documentation for NumberValue}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.ObjectValue}{Google Documentation for ObjectValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#' }
#' 
#' \strong{OperatingSystem}
#' 
#' Represents an Operating System, such as Linux, Mac OS or Windows.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.OperatingSystem}{Google Documentation for OperatingSystem}
#' \describe{
#'  \item{id}{a integer (inherited from Technology) - The unique ID of the Technology. This value is required for all forms of
#' TechnologyTargeting.}
#'  \item{name}{a character (inherited from Technology) - The name of the technology being targeting. This value is read-only and is
#' assigned by Google.}
#' }
#' 
#' \strong{OperatingSystemTargeting}
#' 
#' Represents operating systems that are being targeted or excluded by the
#' LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.OperatingSystemTargeting}{Google Documentation for OperatingSystemTargeting}
#' \describe{
#'  \item{isTargeted}{a boolean - Indicates whether operating systems should be targeted or excluded. This
#' attribute is optional and defaults to true.}
#'  \item{operatingSystems}{a Technology - Operating systems that are being targeted or excluded by the LineItem.}
#' }
#' 
#' \strong{OperatingSystemVersion}
#' 
#' Represents a specific version of an operating system.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.OperatingSystemVersion}{Google Documentation for OperatingSystemVersion}
#' \describe{
#'  \item{id}{a integer (inherited from Technology) - The unique ID of the Technology. This value is required for all forms of
#' TechnologyTargeting.}
#'  \item{name}{a character (inherited from Technology) - The name of the technology being targeting. This value is read-only and is
#' assigned by Google.}
#'  \item{majorVersion}{a integer - The operating system major version.}
#'  \item{minorVersion}{a integer - The operating system minor version.}
#'  \item{microVersion}{a integer - The operating system micro version.}
#' }
#' 
#' \strong{OperatingSystemVersionTargeting}
#' 
#' Represents operating system versions that are being targeted or excluded by
#' the LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.OperatingSystemVersionTargeting}{Google Documentation for OperatingSystemVersionTargeting}
#' \describe{
#'  \item{targetedOperatingSystemVersions}{a Technology - Operating system versions that are being targeted by the LineItem.}
#'  \item{excludedOperatingSystemVersions}{a Technology - Operating system versions that are being excluded by the LineItem.}
#' }
#' 
#' \strong{OrderActionError}
#' 
#' Lists all errors associated with performing actions on Order objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.OrderActionError}{Google Documentation for OrderActionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.OrderError}{Google Documentation for OrderError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.ParseError}{Google Documentation for ParseError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.PermissionError}{Google Documentation for PermissionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.PublisherQueryLanguageContextError}{Google Documentation for PublisherQueryLanguageContextError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.PublisherQueryLanguageSyntaxError}{Google Documentation for PublisherQueryLanguageSyntaxError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.QuotaError}{Google Documentation for QuotaError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.RangeError}{Google Documentation for RangeError}
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
#' \strong{RegExError}
#' 
#' Caused by supplying a value for an object attribute that does not conform to
#' a documented valid regular expression.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.RegExError}{Google Documentation for RegExError}
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
#' \strong{RequiredCollectionError}
#' 
#' A list of all errors to be used for validating sizes of collections.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.RequiredCollectionError}{Google Documentation for RequiredCollectionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.RequiredError}{Google Documentation for RequiredError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.RequiredNumberError}{Google Documentation for RequiredNumberError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.RequiredSizeError}{Google Documentation for RequiredSizeError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.ReservationDetailsError}{Google Documentation for ReservationDetailsError}
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
#' \strong{ResultSet}
#' 
#' The ResultSet represents a table of data obtained from the execution of a
#' PQL Statement.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.ResultSet}{Google Documentation for ResultSet}
#' \describe{
#'  \item{columnTypes}{a ColumnType - A collection of ColumnType objects.}
#'  \item{rows}{a Row - A collection of Row objects.}
#' }
#' 
#' \strong{Row}
#' 
#' Each Row object represents data about one entity in a ResultSet.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.Row}{Google Documentation for Row}
#' \describe{
#'  \item{values}{a Value - Represents a collection of values belonging to one entity.}
#' }
#' 
#' \strong{ServerError}
#' 
#' Errors related to the server.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.ServerError}{Google Documentation for ServerError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.SetValue}{Google Documentation for SetValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{values}{a Value - The values. They must all be the same type of Value and not contain
#' duplicates.}
#' }
#' 
#' \strong{SoapRequestHeader}
#' 
#' Represents the SOAP request header used by API requests.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.SoapRequestHeader}{Google Documentation for SoapRequestHeader}
#' \describe{
#'  \item{networkCode}{a character - The network code to use in the context of a request.}
#'  \item{applicationName}{a character - The name of client library application.}
#' }
#' 
#' \strong{SoapResponseHeader}
#' 
#' Represents the SOAP request header used by API responses.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.SoapResponseHeader}{Google Documentation for SoapResponseHeader}
#' \describe{
#'  \item{requestId}{a character}
#'  \item{responseTime}{a integer}
#' }
#' 
#' \strong{Statement}
#' 
#' Holds the query in PQL syntax. See link for how to form PQL.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.Statement}{Google Documentation for Statement}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.StatementError}{Google Documentation for StatementError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.String_ValueMapEntry}{Google Documentation for String_ValueMapEntry}
#' \describe{
#'  \item{key}{a character}
#'  \item{value}{a Value}
#' }
#' 
#' \strong{Targeting}
#' 
#' Contains targeting criteria for LineItem objects. See LineItem targeting.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.Targeting}{Google Documentation for Targeting}
#' \describe{
#'  \item{geoTargeting}{a GeoTargeting - Specifies what geographical locations are targeted by the LineItem. This
#' attribute is optional.}
#'  \item{inventoryTargeting}{a InventoryTargeting - Specifies what inventory is targeted by the LineItem. This attribute is
#' required. The line item must target at least one ad unit or placement.}
#'  \item{dayPartTargeting}{a DayPartTargeting - Specifies the days of the week and times that are targeted by the LineItem.
#' This attribute is optional.}
#'  \item{technologyTargeting}{a TechnologyTargeting - Specifies the browsing technologies that are targeted by the LineItem. This
#' attribute is optional.}
#'  \item{customTargeting}{a CustomCriteriaSet - Specifies the collection of custom criteria that is targeted by the
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
#'  \item{userDomainTargeting}{a UserDomainTargeting - Specifies the domains or subdomains that are targeted or excluded by the
#' LineItem. Users visiting from an IP address associated with those domains
#' will be targeted or excluded. This attribute is optional.}
#'  \item{contentTargeting}{a ContentTargeting - Specifies the video categories and individual videos targeted by the
#' LineItem.}
#'  \item{videoPositionTargeting}{a VideoPositionTargeting - Specifies targeting against video position types.}
#' }
#' 
#' \strong{TargetingValue}
#' 
#' Contains a Targeting value.  This object is experimental! TargetingValue is
#' an experimental, innovative, and rapidly changing new feature for DFP.
#' Unfortunately, being on the bleeding edge means that we may make
#' backwards-incompatible changes to TargetingValue. We will inform the
#' community when this feature is no longer experimental.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.TargetingValue}{Google Documentation for TargetingValue}
#' \describe{
#'  \item{extends ObjectValue}{see documentation for ObjectValue}
#'  \item{value}{a Targeting - The Targeting value.}
#' }
#' 
#' \strong{Technology}
#' 
#' Represents a technology entity that can be targeted.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.Technology}{Google Documentation for Technology}
#' \describe{
#'  \item{id}{a integer - The unique ID of the Technology. This value is required for all forms of
#' TechnologyTargeting.}
#'  \item{name}{a character - The name of the technology being targeting. This value is read-only and is
#' assigned by Google.}
#' }
#' 
#' \strong{TechnologyTargeting}
#' 
#' Provides LineItem objects the ability to target or exclude technologies.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.TechnologyTargeting}{Google Documentation for TechnologyTargeting}
#' \describe{
#'  \item{bandwidthGroupTargeting}{a BandwidthGroupTargeting - The bandwidth groups being targeted by the LineItem.}
#'  \item{browserTargeting}{a BrowserTargeting - The browsers being targeted by the LineItem.}
#'  \item{browserLanguageTargeting}{a BrowserLanguageTargeting - The languages of browsers being targeted by the LineItem.}
#'  \item{deviceCapabilityTargeting}{a DeviceCapabilityTargeting - The device capabilities being targeted by the LineItem.}
#'  \item{deviceCategoryTargeting}{a DeviceCategoryTargeting - The device categories being targeted by the LineItem.}
#'  \item{deviceManufacturerTargeting}{a DeviceManufacturerTargeting - The device manufacturers being targeted by the LineItem.}
#'  \item{mobileCarrierTargeting}{a MobileCarrierTargeting - The mobile carriers being targeted by the LineItem.}
#'  \item{mobileDeviceTargeting}{a MobileDeviceTargeting - The mobile devices being targeted by the LineItem.}
#'  \item{mobileDeviceSubmodelTargeting}{a MobileDeviceSubmodelTargeting - The mobile device submodels being targeted by the LineItem.}
#'  \item{operatingSystemTargeting}{a OperatingSystemTargeting - The operating systems being targeted by the LineItem.}
#'  \item{operatingSystemVersionTargeting}{a OperatingSystemVersionTargeting - The operating system versions being targeted by the LineItem.}
#' }
#' 
#' \strong{TextValue}
#' 
#' Contains a string value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.TextValue}{Google Documentation for TextValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a character - The string value.}
#' }
#' 
#' \strong{TimeOfDay}
#' 
#' Represents a specific time in a day.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.TimeOfDay}{Google Documentation for TimeOfDay}
#' \describe{
#'  \item{hour}{a integer - Hour in 24 hour time (0..24). This field must be between 0 and 24,
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.TypeError}{Google Documentation for TypeError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#' }
#' 
#' \strong{UniqueError}
#' 
#' An error for a field which must satisfy a uniqueness constraint
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.UniqueError}{Google Documentation for UniqueError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#' }
#' 
#' \strong{UserDomainTargeting}
#' 
#' Provides line items the ability to target or exclude users visiting their
#' websites from a list of domains or subdomains.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.UserDomainTargeting}{Google Documentation for UserDomainTargeting}
#' \describe{
#'  \item{domains}{a character - The domains or subdomains that are being targeted or excluded by the
#' LineItem. This attribute is required and the maximum length of each domain
#' is 67 characters.}
#'  \item{targeted}{a boolean - Indicates whether domains should be targeted or excluded. This attribute is
#' optional and defaults to true.}
#' }
#' 
#' \strong{Value}
#' 
#' Value represents a value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.Value}{Google Documentation for Value}
#' \describe{
#' }
#' 
#' \strong{VideoPosition}
#' 
#' Represents a targetable position within a video. A video ad can be targeted
#' to a position (pre-roll, all mid-rolls, or post-roll), or to a specific
#' mid-roll index.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.VideoPosition}{Google Documentation for VideoPosition}
#' \describe{
#'  \item{positionType}{a VideoPosition.Type - The type of video position (pre-roll, mid-roll, or post-roll). This can take one of the following values: 
#'    \itemize{
#'      \item{PREROLL - The position defined as showing before the video starts playing.}
#'      \item{MIDROLL - The position defined as showing within the middle of the playing video.}
#'      \item{POSTROLL - The position defined as showing after the video is completed.}
#'    }
#'   }
#'  \item{midrollIndex}{a integer - The index of the mid-roll to target. Only valid if the positionType is
#' VideoPositionType MIDROLL, otherwise this field will be ignored.}
#' }
#' 
#' \strong{VideoPositionTarget}
#' 
#' Represents the options for targetable positions within a video.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.VideoPositionTarget}{Google Documentation for VideoPositionTarget}
#' \describe{
#'  \item{videoPosition}{a VideoPosition - The video position to target. This attribute is required.}
#'  \item{videoBumperType}{a VideoBumperType - The video bumper type to target. To target a video position or a pod
#' position, this value must be null. To target a bumper position this value
#' must be populated and the line item must have a bumper type. This can take one of the following values: 
#'    \itemize{
#'      \item{BEFORE - Represents the bumper position before the ad pod.}
#'      \item{AFTER - Represents the bumper position after the ad pod.}
#'    }
#'   }
#'  \item{videoPositionWithinPod}{a VideoPositionWithinPod - The video position within a pod to target. To target a video position or a
#' bumper position, this value must be null. To target a position within a pod
#' this value must be populated.}
#' }
#' 
#' \strong{VideoPositionTargeting}
#' 
#' Represents positions within and around a video where ads can be targeted to.
#' Example positions could be pre-roll (before the video plays), post-roll
#' (after a video has completed playback) and mid-roll (during video playback).
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.VideoPositionTargeting}{Google Documentation for VideoPositionTargeting}
#' \describe{
#'  \item{targetedPositions}{a VideoPositionTarget - The VideoTargetingPosition objects being targeted by the video LineItem.}
#' }
#' 
#' \strong{VideoPositionWithinPod}
#' 
#' Represents a targetable position within a pod within a video stream. A video
#' ad can be targeted to any position in the pod (first, second, third ...
#' last). If there is only 1 ad in a pod, either first or last will target that
#' position.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService.VideoPositionWithinPod}{Google Documentation for VideoPositionWithinPod}
#' \describe{
#'  \item{index}{a integer - The specific index of the pod. The index is defined as: 1 = first 2 = second
#' 3 = third .... 100 = last 100 will always be the last position. For example,
#' for a pod with 5 positions, 100 would target position 5. Multiple targets
#' against the index 100 can exist.<br> Positions over 100 are not supported.}
#' }
#' 
#' 
#' 
#' @usage dfp_PublisherQueryLanguageService_object_factory(obj_type, obj_data)
#' 
#' @param obj_type a string from one of the object types described above
#' @param obj_data a \code{list} of \code{lists} or a \code{data.frame} with the required components to create
#' the obj_type specified. All input names must match the expected attributes for the object.
#' If submitting a list of attributes to create 1 object make sure to nest it inside top-level list, so that
#' it is a list of length 1 with 1 list of attributes to create the object.
#' @return a string of formatted XML that can be inserted into a SOAP request body to the APT
#' @export
dfp_PublisherQueryLanguageService_object_factory <- function(obj_type, obj_data){
 if(is.data.frame(obj_data)){
 sampled_names <- names(obj_data) } else if(is.list(obj_data)){
 sampled_names <- names(obj_data[[1]])
 } else { stop("obj_data must be a list or data.frame")
 }

 if(obj_type=='AdUnitTargeting'){
 stopifnot(all(sampled_names %in% c('adUnitId', 'includeDescendants')))
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

 if(obj_type=='ColumnType'){
 stopifnot(all(sampled_names %in% c('labelName')))
 }

 if(obj_type=='ContentMetadataKeyHierarchyTargeting'){
 stopifnot(all(sampled_names %in% c('customTargetingValueIds')))
 }

 if(obj_type=='ContentTargeting'){
 stopifnot(all(sampled_names %in% c('targetedContentIds', 'excludedContentIds', 'targetedVideoCategoryIds', 'excludedVideoCategoryIds', 'targetedVideoContentBundleIds', 'excludedVideoContentBundleIds', 'targetedContentMetadata', 'excludedContentMetadata')))
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

 if(obj_type=='ResultSet'){
 stopifnot(all(sampled_names %in% c('columnTypes', 'rows')))
 }

 if(obj_type=='Row'){
 stopifnot(all(sampled_names %in% c('values')))
 }

 if(obj_type=='Targeting'){
 stopifnot(all(sampled_names %in% c('geoTargeting', 'inventoryTargeting', 'dayPartTargeting', 'technologyTargeting', 'customTargeting', 'userDomainTargeting', 'contentTargeting', 'videoPositionTargeting')))
 }

 if(obj_type=='TargetingValue'){
 stopifnot(all(sampled_names %in% c('value')))
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
#' select
#' 
#' Retrieves rows of data that satisfy the given Statement query from the system. specify what data needs to returned
#' 
#' @importFrom plyr llply ldply
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/PublisherQueryLanguageService#select}{Google Documentation for select}
#' 
#' @usage dfp_select(request_data, as_df=FALSE)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into a \code{data.frame}
#' @return a \code{data.frame} or \code{list} containing all the elements of a selectResponse 
#' @export
dfp_select <- function(request_data, as_df=FALSE){
 request_body <- make_request_body(service='PublisherQueryLanguageService', root_name='select', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['selectResponse']])
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
