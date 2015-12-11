#' CompanyService
#' 
#' Provides operations for creating, updating and retrieving Company objects.
#' 
#' CompanyService Object Factory
#' 
#' A function to create a variety of objects that are part of the CompanyService
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.ApiError}{Google Documentation for ApiError}
#' \describe{
#'  \item{fieldPath}{a character - The OGNL field path to identify cause of error.}
#'  \item{trigger}{a character - The data that caused the error.}
#'  \item{errorString}{a character - A simple string representation of the error and reason.}
#' }
#' 
#' \strong{ApiException}
#' 
#' Exception class for holding a list of service errors.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.ApiException}{Google Documentation for ApiException}
#' \describe{
#'  \item{message}{a character (inherited from ApplicationException) - Error message.}
#'  \item{errors}{a ApiError - List of errors.}
#' }
#' 
#' \strong{ApiVersionError}
#' 
#' Errors related to the usage of API versions.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.ApiVersionError}{Google Documentation for ApiVersionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.ApplicationException}{Google Documentation for ApplicationException}
#' \describe{
#'  \item{message}{a character - Error message.}
#' }
#' 
#' \strong{AppliedLabel}
#' 
#' Represents a Label that can be applied to an entity. To negate an inherited
#' label, create an AppliedLabel with labelId as the inherited label's ID and
#' isNegated set to true.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.AppliedLabel}{Google Documentation for AppliedLabel}
#' \describe{
#'  \item{labelId}{a integer - The ID of a created Label.}
#'  \item{isNegated}{a boolean - isNegated should be set to true to negate the effects of labelId.}
#' }
#' 
#' \strong{AuthenticationError}
#' 
#' An error for an exception that occurred when authenticating.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.AuthenticationError}{Google Documentation for AuthenticationError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.AvailableBillingError}{Google Documentation for AvailableBillingError}
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
#' \strong{BooleanValue}
#' 
#' Contains a boolean value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.BooleanValue}{Google Documentation for BooleanValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a boolean - The boolean value.}
#' }
#' 
#' \strong{CollectionSizeError}
#' 
#' Error for the size of the collection being too large
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.CollectionSizeError}{Google Documentation for CollectionSizeError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.CommonError}{Google Documentation for CommonError}
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
#' \strong{Company}
#' 
#' A Company represents an agency, a single advertiser or an entire advertising
#' network.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.Company}{Google Documentation for Company}
#' \describe{
#'  \item{id}{a integer - Uniquely identifies the Company. This value is read-only and is assigned by
#' Google when the company is created. This attribute is required for updates.}
#'  \item{name}{a character - The full name of the company. This attribute is required and has a maximum
#' length of 127 characters.}
#'  \item{type}{a Company.Type - Specifies what kind of company this is. This attribute is required. This can take one of the following values: 
#'    \itemize{
#'      \item{HOUSE_ADVERTISER - The publisher's own advertiser. When no outside advertiser buys its
#' inventory, the publisher may run its own advertising campaigns.}
#'      \item{HOUSE_AGENCY - The publisher's own agency.}
#'      \item{ADVERTISER - A business entity that buys publisher inventory to run advertising
#' campaigns. An advertiser is optionally associated with one or more agencies.}
#'      \item{AGENCY - A business entity that offers services, such as advertising creation,
#' placement, and management, to advertisers.}
#'      \item{AD_NETWORK - A company representing multiple advertisers and agencies.}
#'      \item{AFFILIATE_DISTRIBUTION_PARTNER - A company representing a content owner's affiliate/distribution partner.}
#'      \item{CONTENT_PARTNER - A company representing a distributor's content partner.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{address}{a character - Specifies the address of the company. This attribute is optional and has a
#' maximum length of 65,535 characters.}
#'  \item{email}{a character - Specifies the email of the company. This attribute is optional and has a
#' maximum length of 128 characters.}
#'  \item{faxPhone}{a character - Specifies the fax phone number of the company. This attribute is optional
#' and has a maximum length of 63 characters.}
#'  \item{primaryPhone}{a character - Specifies the primary phone number of the company. This attribute is
#' optional and has a maximum length of 63 characters.}
#'  \item{externalId}{a character - Specifies the external ID of the company. This attribute is optional and has
#' a maximum length of 255 characters.}
#'  \item{comment}{a character - Specifies the comment of the company. This attribute is optional and has a
#' maximum length of 1024 characters.}
#'  \item{creditStatus}{a Company.CreditStatus - Specifies the company's credit status. This attribute is optional and
#' defaults to CreditStatus ACTIVE when basic credit status settings are
#' enabled, and CreditStatus ON_HOLD when advanced credit status settings are
#' enabled. This can take one of the following values: 
#'    \itemize{
#'      \item{ACTIVE - When the credit status is active, all line items in all orders belonging to
#' the company will be served. This is a Basic as well as an Advanced Credit
#' Status setting.}
#'      \item{ON_HOLD - When the credit status is on hold, the publisher cannot activate new line
#' items of the company. However, line items that were activated before the
#' credit status change will remain active. You can still create orders and
#' line items for the company. This is an Advanced Credit Status setting.}
#'      \item{CREDIT_STOP - When the credit status is credit stop, the publisher cannot activate new
#' line items of the company. However, line items that were activated before
#' the credit status change will remain active. You cannot create any new
#' orders or line items for the company. This is an Advanced Credit Status
#' setting.}
#'      \item{INACTIVE - When the credit status is inactive, the publisher cannot activate new line
#' items of the company. However, line items that were activated before the
#' credit status change will remain active. You cannot create any new orders or
#' line items for the company. It is used to mark companies with which business
#' is to be discontinued. Such companies are not listed in Doubleclick for
#' Publishers website. This is a Basic as well as an Advanced Credit Status
#' setting.}
#'      \item{BLOCKED - When the credit status of a company is marked blocked, then all active line
#' items belonging to the company will stop serving with immediate effect. You
#' cannot active new line items of the company nor can you create any new
#' orders or line items belonging to the company. This is an Advanced Credit
#' Status setting.}
#'    }
#'   }
#'  \item{settings}{a CompanySettings - Specifies the default billing settings of this Company. This attribute is
#' optional.}
#'  \item{appliedLabels}{a AppliedLabel - The set of labels applied to this company.}
#'  \item{primaryContactId}{a integer - The ID of the Contact who is acting as the primary contact for this company.
#' This attribute is optional.}
#'  \item{appliedTeamIds}{a integer - The IDs of all teams that this company is on directly.}
#'  \item{thirdPartyCompanyId}{a integer - Specifies the ID of the Google-recognized canonicalized form of this
#' company. This attribute is optional.}
#'  \item{lastModifiedDateTime}{a DateTime - The date and time this company was last modified.}
#' }
#' 
#' \strong{CompanyCreditStatusError}
#' 
#' Lists all errors due to Company creditStatus.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.CompanyCreditStatusError}{Google Documentation for CompanyCreditStatusError}
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
#' \strong{CompanyError}
#' 
#' A list of all errors associated with companies.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.CompanyError}{Google Documentation for CompanyError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a CompanyError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{CANNOT_SET_THIRD_PARTY_COMPANY_DUE_TO_TYPE - Indicates that an attempt was made to set a third party company for a
#' company whose type is not the same as the third party company.}
#'      \item{CANNOT_UPDATE_COMPANY_TYPE - Indicates that an invalid attempt was made to change a company's type.}
#'      \item{INVALID_COMPANY_TYPE - Indicates that this type of company is not supported.}
#'      \item{PRIMARY_CONTACT_DOES_NOT_BELONG_TO_THIS_COMPANY - Indicates that an attempt was made to assign a primary contact who does not
#' belong to the specified company.}
#'      \item{THIRD_PARTY_STATS_PROVIDER_IS_WRONG_ROLE_TYPE - Indicates that the user specified as the third party stats provider is of
#' the wrong role type. The user must have the third party stats provider role.}
#'      \item{INVALID_LABEL_ASSOCIATION - Labels can only be applied to Company.Type ADVERTISER, Company.Type
#' HOUSE_ADVERTISER, and Company.Type AD_NETWORK company types.}
#'      \item{INVALID_COMPANY_TYPE_FOR_DEFAULT_BILLING_SETTING - Indicates that the Company.Type does not support default billing settings.}
#'      \item{INVALID_DEFAULT_BILLING_SETTING - Indicates that the format of the default billing setting is wrong.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{CompanyPage}
#' 
#' Captures a page of Company objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.CompanyPage}{Google Documentation for CompanyPage}
#' \describe{
#'  \item{totalResultSetSize}{a integer - The size of the total result set to which this page belongs.}
#'  \item{startIndex}{a integer - The absolute index in the total result set on which this page begins.}
#'  \item{results}{a Company - The collection of companies contained within this page.}
#' }
#' 
#' \strong{CompanySettings}
#' 
#' Settings for a Company.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.CompanySettings}{Google Documentation for CompanySettings}
#' \describe{
#'  \item{billingCap}{a BillingCap - Default billing cap for Proposal proposals created by the Company of type
#' Company.Type ADVERTISER in DFP Sales Manager. Return null if default billing
#' setting feature is disabled or BillingSource is BillingSource CONTRACTED. It
#' is allowed that all of the BillingCap, BillingSchedule, BillingSource are
#' null when the company has no setting about these values. This can take one of the following values: 
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
#'  \item{billingSchedule}{a BillingSchedule - Default billing schedule for Proposal proposals created by the Company of
#' type Company.Type ADVERTISER in DFP Sales Manager. Return null if default
#' billing setting feature is disabled or BillingSource is not BillingSource
#' CONTRACTED. It is allowed that all of the BillingCap, BillingSchedule,
#' BillingSource are null when the company has no setting about these values. This can take one of the following values: 
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
#'  \item{billingSource}{a BillingSource - Default billing source for Proposal proposals created by the Company of type
#' Company.Type ADVERTISER in DFP Sales Manager. Return null if default billing
#' setting feature is disabled. It is allowed that all of the BillingCap,
#' BillingSchedule, BillingSource are null when the company has no setting
#' about these values. This can take one of the following values: 
#'    \itemize{
#'      \item{CONTRACTED - Charge based on the quantity of impressions, clicks, or days booked,
#' regardless of what actually delivered.}
#'      \item{DFP_VOLUME - Charge based on what actually delivered counted by DFP}
#'      \item{THIRD_PARTY_VOLUME - Charge based on what actually delivered counted by third party ads server}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{advertiserDiscount}{a integer - Default advertiser discount for Proposal proposals created by the Company of
#' type Company.Type ADVERTISER in DFP Sales Manager. Return null if default
#' billing setting feature is disabled or the company has no setting on this
#' value. It presents in millipercentage (values 0 to 100000).}
#'  \item{valueAddedTax}{a integer - Default value added tax for Proposal proposals created by the Company of
#' type Company.Type ADVERTISER in DFP Sales Manager. Return null if default
#' billing setting feature is disabled or the company has no setting on this
#' value. It presents in millipercentage (values 0 to 100000).}
#'  \item{agencyCommission}{a integer - Default agency commission for Proposal proposals associated with the Company
#' of type Company.Type AGENCY in DFP Sales Manager. Return null if the default
#' billing setting feature is disabled or the company has no setting on this
#' value. It presents in millipercentage (values 0 to 100000).}
#' }
#' 
#' \strong{CrossSellError}
#' 
#' Lists all errors associated with cross selling.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.CrossSellError}{Google Documentation for CrossSellError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.CustomFieldValueError}{Google Documentation for CustomFieldValueError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.Date}{Google Documentation for Date}
#' \describe{
#'  \item{year}{a integer - Year (e.g., 2009)}
#'  \item{month}{a integer - Month (1..12)}
#'  \item{day}{a integer - Day (1..31)}
#' }
#' 
#' \strong{DateTime}
#' 
#' Represents a date combined with the time of day.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.DateTime}{Google Documentation for DateTime}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.DateTimeValue}{Google Documentation for DateTimeValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a DateTime - The DateTime value.}
#' }
#' 
#' \strong{DateValue}
#' 
#' Contains a date value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.DateValue}{Google Documentation for DateValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a Date - The Date value.}
#' }
#' 
#' \strong{FeatureError}
#' 
#' Errors related to feature management. If you attempt using a feature that is
#' not available to the current network you'll receive a FeatureError with the
#' missing feature as the trigger.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.FeatureError}{Google Documentation for FeatureError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.InternalApiError}{Google Documentation for InternalApiError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.InvalidEmailError}{Google Documentation for InvalidEmailError}
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
#' \strong{LabelEntityAssociationError}
#' 
#' Errors specific to creating label entity associations.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.LabelEntityAssociationError}{Google Documentation for LabelEntityAssociationError}
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
#' \strong{NotNullError}
#' 
#' Caused by supplying a null value for an attribute that cannot be null.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.NotNullError}{Google Documentation for NotNullError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.NullError}{Google Documentation for NullError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.NumberValue}{Google Documentation for NumberValue}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.ObjectValue}{Google Documentation for ObjectValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#' }
#' 
#' \strong{ParseError}
#' 
#' Lists errors related to parsing.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.ParseError}{Google Documentation for ParseError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.PermissionError}{Google Documentation for PermissionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.PublisherQueryLanguageContextError}{Google Documentation for PublisherQueryLanguageContextError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.PublisherQueryLanguageSyntaxError}{Google Documentation for PublisherQueryLanguageSyntaxError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.QuotaError}{Google Documentation for QuotaError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.RegExError}{Google Documentation for RegExError}
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
#' \strong{RequiredError}
#' 
#' Errors due to missing required field.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.RequiredError}{Google Documentation for RequiredError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a RequiredError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{REQUIRED - Missing required field.}
#'    }
#'   }
#' }
#' 
#' \strong{ServerError}
#' 
#' Errors related to the server.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.ServerError}{Google Documentation for ServerError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.SetValue}{Google Documentation for SetValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{values}{a Value - The values. They must all be the same type of Value and not contain
#' duplicates.}
#' }
#' 
#' \strong{SoapRequestHeader}
#' 
#' Represents the SOAP request header used by API requests.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.SoapRequestHeader}{Google Documentation for SoapRequestHeader}
#' \describe{
#'  \item{networkCode}{a character - The network code to use in the context of a request.}
#'  \item{applicationName}{a character - The name of client library application.}
#' }
#' 
#' \strong{SoapResponseHeader}
#' 
#' Represents the SOAP request header used by API responses.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.SoapResponseHeader}{Google Documentation for SoapResponseHeader}
#' \describe{
#'  \item{requestId}{a character}
#'  \item{responseTime}{a integer}
#' }
#' 
#' \strong{Statement}
#' 
#' Holds the query in PQL syntax. See link for how to form PQL.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.Statement}{Google Documentation for Statement}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.StatementError}{Google Documentation for StatementError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.String_ValueMapEntry}{Google Documentation for String_ValueMapEntry}
#' \describe{
#'  \item{key}{a character}
#'  \item{value}{a Value}
#' }
#' 
#' \strong{StringLengthError}
#' 
#' Errors for Strings which do not meet given length constraints.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.StringLengthError}{Google Documentation for StringLengthError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.TeamError}{Google Documentation for TeamError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.TextValue}{Google Documentation for TextValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a character - The string value.}
#' }
#' 
#' \strong{TypeError}
#' 
#' An error for a field which is an invalid type.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.TypeError}{Google Documentation for TypeError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#' }
#' 
#' \strong{UniqueError}
#' 
#' An error for a field which must satisfy a uniqueness constraint
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.UniqueError}{Google Documentation for UniqueError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#' }
#' 
#' \strong{Value}
#' 
#' Value represents a value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService.Value}{Google Documentation for Value}
#' \describe{
#' }
#' 
#' 
#' 
#' @usage dfp_CompanyService_object_factory(obj_type, obj_data)
#' 
#' @param obj_type a string from one of the object types described above
#' @param obj_data a \code{list} of \code{lists} or a \code{data.frame} with the required components to create
#' the obj_type specified. All input names must match the expected attributes for the object.
#' If submitting a list of attributes to create 1 object make sure to nest it inside top-level list, so that
#' it is a list of length 1 with 1 list of attributes to create the object.
#' @return a string of formatted XML that can be inserted into a SOAP request body to the APT
#' @export
dfp_CompanyService_object_factory <- function(obj_type, obj_data){
 if(is.data.frame(obj_data)){
 sampled_names <- names(obj_data) } else if(is.list(obj_data)){
 sampled_names <- names(obj_data[[1]])
 } else { stop("obj_data must be a list or data.frame")
 }

 if(obj_type=='AppliedLabel'){
 stopifnot(all(sampled_names %in% c('labelId', 'isNegated')))
 }

 if(obj_type=='Company'){
 stopifnot(all(sampled_names %in% c('id', 'name', 'type', 'address', 'email', 'faxPhone', 'primaryPhone', 'externalId', 'comment', 'creditStatus', 'settings', 'appliedLabels', 'primaryContactId', 'appliedTeamIds', 'thirdPartyCompanyId', 'lastModifiedDateTime')))
 }

 if(obj_type=='CompanySettings'){
 stopifnot(all(sampled_names %in% c('billingCap', 'billingSchedule', 'billingSource', 'advertiserDiscount', 'valueAddedTax', 'agencyCommission')))
 }

 if(obj_type=='Date'){
 stopifnot(all(sampled_names %in% c('year', 'month', 'day')))
 }

}
#' 
#' createCompanies
#' 
#' Creates new Company objects.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService#createCompanies}{Google Documentation for createCompanies}
#' 
#' @usage dfp_createCompanies(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a createCompaniesResponse 
#' @export
dfp_createCompanies <- function(request_data){

 request_body <- make_request_body(service='CompanyService', root_name='createCompanies', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[[createCompaniesResponse']])
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
#' getCompaniesByStatement
#' 
#' Gets a CompanyPage of Company objects that satisfy the given Statement query. The following fields are supported for filtering:  a set of companies 
#' \itemize{
#'   \item{id}
#'   \item{name}
#'   \item{type}
#'   \item{lastModifiedDateTime}
#' }
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService#getCompaniesByStatement}{Google Documentation for getCompaniesByStatement}
#' 
#' @usage dfp_getCompaniesByStatement(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a getCompaniesByStatementResponse 
#' @export
dfp_getCompaniesByStatement <- function(request_data){

 request_body <- make_request_body(service='CompanyService', root_name='getCompaniesByStatement', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[[getCompaniesByStatementResponse']])
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
#' updateCompanies
#' 
#' Updates the specified Company objects.
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/CompanyService#updateCompanies}{Google Documentation for updateCompanies}
#' 
#' @usage dfp_updateCompanies(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a updateCompaniesResponse 
#' @export
dfp_updateCompanies <- function(request_data){

 request_body <- make_request_body(service='CompanyService', root_name='updateCompanies', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[[updateCompaniesResponse']])
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
