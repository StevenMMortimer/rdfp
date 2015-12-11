#' ReconciliationLineItemReportService
#' 
#' Provides methods for retrieving and updating ReconciliationLineItemReport
#' objects.
#' 
#' ReconciliationLineItemReportService Object Factory
#' 
#' A function to create a variety of objects that are part of the ReconciliationLineItemReportService
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.ApiError}{Google Documentation for ApiError}
#' \describe{
#'  \item{fieldPath}{a character - The OGNL field path to identify cause of error.}
#'  \item{trigger}{a character - The data that caused the error.}
#'  \item{errorString}{a character - A simple string representation of the error and reason.}
#' }
#' 
#' \strong{ApiException}
#' 
#' Exception class for holding a list of service errors.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.ApiException}{Google Documentation for ApiException}
#' \describe{
#'  \item{message}{a character (inherited from ApplicationException) - Error message.}
#'  \item{errors}{a ApiError - List of errors.}
#' }
#' 
#' \strong{ApiVersionError}
#' 
#' Errors related to the usage of API versions.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.ApiVersionError}{Google Documentation for ApiVersionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.ApplicationException}{Google Documentation for ApplicationException}
#' \describe{
#'  \item{message}{a character - Error message.}
#' }
#' 
#' \strong{AuthenticationError}
#' 
#' An error for an exception that occurred when authenticating.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.AuthenticationError}{Google Documentation for AuthenticationError}
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
#' \strong{BillableRevenueOverrides}
#' 
#' Billable revenue overrides for a ReconciliationLineItemReport to be used
#' instead of the Google calculated ones.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.BillableRevenueOverrides}{Google Documentation for BillableRevenueOverrides}
#' \describe{
#'  \item{netBillableRevenueOverride}{a Money - The overridden ReconciliationLineItemReport netBillableRevenue. If the
#' ReconciliationLineItemReport data is for a ProposalLineItem and the
#' ReconciliationLineItemReport pricingModel is PricingModel GROSS, then this
#' value will be calculated using the billableRevenueOverride and the proposal
#' line item's billing settings. Otherwise, the value of this field will be the
#' same as the billableRevenueOverride. This value is read-only.}
#'  \item{grossBillableRevenueOverride}{a Money - The overriden ReconciliationLineItemReport grossBillableRevenue. The value
#' of this field will always be the same as what is set in the
#' billableRevenueOverride. This value is read-only.}
#'  \item{billableRevenueOverride}{a Money - The manually entered billable revenue override, which will be used to
#' calculate both the netBillableRevenueOverride and the
#' grossBillableRevenueOverride. This value is required.}
#' }
#' 
#' \strong{BooleanValue}
#' 
#' Contains a boolean value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.BooleanValue}{Google Documentation for BooleanValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a boolean - The boolean value.}
#' }
#' 
#' \strong{CollectionSizeError}
#' 
#' Error for the size of the collection being too large
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.CollectionSizeError}{Google Documentation for CollectionSizeError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.CommonError}{Google Documentation for CommonError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.Date}{Google Documentation for Date}
#' \describe{
#'  \item{year}{a integer - Year (e.g., 2009)}
#'  \item{month}{a integer - Month (1..12)}
#'  \item{day}{a integer - Day (1..31)}
#' }
#' 
#' \strong{DateTime}
#' 
#' Represents a date combined with the time of day.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.DateTime}{Google Documentation for DateTime}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.DateTimeValue}{Google Documentation for DateTimeValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a DateTime - The DateTime value.}
#' }
#' 
#' \strong{DateValue}
#' 
#' Contains a date value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.DateValue}{Google Documentation for DateValue}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.FeatureError}{Google Documentation for FeatureError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.InternalApiError}{Google Documentation for InternalApiError}
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
#' \strong{Money}
#' 
#' Represents a money amount.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.Money}{Google Documentation for Money}
#' \describe{
#'  \item{currencyCode}{a character - Three letter currency code in string format.}
#'  \item{microAmount}{a integer - Money values are always specified in terms of micros which are a millionth
#' of the fundamental currency unit. For US dollars, $1 is 1,000,000 micros.}
#' }
#' 
#' \strong{NotNullError}
#' 
#' Caused by supplying a null value for an attribute that cannot be null.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.NotNullError}{Google Documentation for NotNullError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.NullError}{Google Documentation for NullError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.NumberValue}{Google Documentation for NumberValue}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.ObjectValue}{Google Documentation for ObjectValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#' }
#' 
#' \strong{ParseError}
#' 
#' Lists errors related to parsing.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.ParseError}{Google Documentation for ParseError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.PermissionError}{Google Documentation for PermissionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.PublisherQueryLanguageContextError}{Google Documentation for PublisherQueryLanguageContextError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.PublisherQueryLanguageSyntaxError}{Google Documentation for PublisherQueryLanguageSyntaxError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.QuotaError}{Google Documentation for QuotaError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.RangeError}{Google Documentation for RangeError}
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
#' \strong{ReconciliationError}
#' 
#' Lists all errors associated with reconciliation.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.ReconciliationError}{Google Documentation for ReconciliationError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a ReconciliationError.Reason - The error reason represented by an enum. This can take one of the following values: 
#'    \itemize{
#'      \item{CANNOT_CREATE_RECONCILIATION_REPORT_VERSION - Reconciliation report is reconciled, and need to revert. Or reconciliation
#' report is Deleted, and not possible.}
#'      \item{INVALID_RECONCILIATION_REPORT_STATE_TRANSITION - Reconciliation report can't be put into that reconciliation state.}
#'      \item{INVALID_RECONCILIATION_PROPOSAL_SUBMISSION_SEQUENCE - Previous cycles of the proposal must be reconciled first.}
#'      \item{USER_CANNOT_RECONCILE_RECONCILIATION_REPORT - User does not have permission to put reconciliation report into reconciled
#' state.}
#'      \item{CONTRACTED_VOLUME_CANNOT_BE_NULL - The billed from is contracted, but the contracted volume cannot be null.}
#'      \item{DFP_VOLUME_CANNOT_BE_NULL - The billed from is DFP, but the DFP volume cannot be null.}
#'      \item{MANUAL_VOLUME_CANNOT_BE_NULL - The billed from is manual, but the manual volume cannot be null.}
#'      \item{THIRD_PARTY_VOLUME_CANNOT_BE_NULL - The billed from is third-party, but the third-party volume cannot be null.}
#'      \item{DUPLICATE_LINE_ITEM_AND_CREATIVE - Duplicate tuples of (line item ID, creative ID).}
#'      \item{CANNOT_RECONCILE_LINE_ITEM_CREATIVE - Cannot reconcile the ReconciliationReportRow as the line item ID and the
#' creative ID association is invalid.}
#'      \item{LINE_ITEM_DAYS_MISMATCH - Third-party days delivered and manual days delivered cannot differ for rows
#' with same line item ID when line item cost type is CPD.}
#'      \item{LINE_ITEM_BILL_OFF_OF_MISMATCH - ReconciliationReportRow billFrom field cannot differ for rows with same line
#' item id when line item cost type is CPD.}
#'      \item{CANNOT_MODIFY_RECONCILED_ORDER - The order of the modifying rows in under reconciled status. The row couldn't
#' be changed.}
#'      \item{CANNOT_MODIFY_ACROSS_MULTIPLE_RECONCILIATION_REPORTS - Can not modify across multiple reconciliation reports.}
#'      \item{CANNOT_UPDATE_VOLUME_WHEN_BILLABLE_REVENUE_OVERRIDDEN - Cannot update reconciled volume when a billable revenue override is set.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{ReconciliationLineItemReport}
#' 
#' Contains reconciliation data of a LineItem and/or ProposalLineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.ReconciliationLineItemReport}{Google Documentation for ReconciliationLineItemReport}
#' \describe{
#'  \item{id}{a integer - Uniquely identifies the ReconciliationLineItemReport. This value is
#' read-only and assigned by Google.}
#'  \item{reconciliationReportId}{a integer - The ID of the ReconciliationReport this ReconciliationLineItemReport belongs
#' to. This value is read-only.}
#'  \item{orderId}{a integer - If this reconciliation data is for a LineItem, then this contains the ID of
#' the order that line item belongs to. Otherwise, this field will have a value
#' of 0. This value is read-only.}
#'  \item{proposalId}{a integer - If this reconciliation data is for a ProposalLineItem, then this contains
#' the ID of the proposal that proposal line item belongs to. Otherwise, this
#' field will have a value of 0. This value is read-only.}
#'  \item{lineItemId}{a integer - If this reconciliation data is for a LineItem, then this contains that line
#' item's ID. Otherwise, this field will have a value of 0. This value is
#' read-only.}
#'  \item{proposalLineItemId}{a integer - If this reconciliation data is for a ProposalLineItem, then this contains
#' that proposal line item's ID. Otherwise, this field will have a value of 0.
#' This value is read-only.}
#'  \item{rateType}{a RateType - The RateType of the LineItem and/or ProposalLineItem this reconciliation
#' data is for. This value is read-only. This can take one of the following values: 
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
#'  \item{netRate}{a Money - The Money net rate of the LineItem and/or ProposalLineItem this
#' reconciliation data is for. This value is read-only.}
#'  \item{grossRate}{a Money - If this reconciliation data is for a ProposalLineItem and the pricingModel
#' is PricingModel GROSS, then this contains the Money gross rate of the
#' proposal line item. Otherwise, the value of this field will be the same as
#' the netRate. This value is read-only.}
#'  \item{pricingModel}{a PricingModel - If this reconciliation data is for a ProposalLineItem, then this contains
#' that proposal line item's proposal's pricing model. Otherwise, the value of
#' this field will be PricingModel NET. This value is read-only. This can take one of the following values: 
#'    \itemize{
#'      \item{NET - Indicates using net pricing model to calculate the price.}
#'      \item{GROSS - Indicates using gross pricing model to calculate the price.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{dfpVolume}{a integer - The volume recorded by the DoubleClick for Publishers ad server. The meaning
#' of this value depends on the rateType, for example if the rateType is
#' RateType CPC, it represents clicks; if the rateType is RateType CPM, it
#' represents impressions; if the rateType is RateType CPD, it represents line
#' item days. This value is read-only.}
#'  \item{thirdPartyVolume}{a integer - The volume recorded by the third-party ad server. The meaning of this value
#' depends on the rateType, for example if the rateType is RateType CPC, it
#' represents clicks; if the rateType is RateType CPM, it represents
#' impressions; if the rateType is RateType CPD, it represents line item days.
#' This value is optional and defaults to null.}
#'  \item{manualVolume}{a integer - A manually entered volume. The meaning of this value depends on the
#' rateType, for example if the rateType is RateType CPC, it represents clicks;
#' if the rateType is RateType CPM, it represents impressions; if the rateType
#' is RateType CPD, it represents line item days. This value is optional and
#' defaults to null.}
#'  \item{reconciliationSource}{a BillFrom - Specifies which of dfpVolume, thirdPartyVolume, or manualVolume should be
#' used as the reconciledVolume. The value is optional. If this reconciliation
#' data is for a ProposalLineItem then this will default to the proposal line
#' item's ProposalLineItem billingSource. Otherwise, this will default to
#' BillFrom DFP. This can take one of the following values: 
#'    \itemize{
#'      \item{DEFAULT - Use default bill from. Google checks whether line item is created in
#' DoubleClick Sales Manager. If yes, the Proposal billingSource will be the
#' billing source. Otherwise, the DFP will be the billing source.}
#'      \item{DFP - DFP volume.}
#'      \item{THIRD_PARTY - Third-party volume.}
#'      \item{MANUAL - Manual volume.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{reconciledVolume}{a integer - The reconciled volume, which is a <i>view</i> of one of the other volume
#' fields depending on what the reconciliationSource is set to. The different
#' possibilities are as follows: The meaning of this value depends on the
#' rateType, for example if the rateType is RateType CPC, it represents clicks;
#' if the rateType is RateType CPM, it represents impressions; if the rateType
#' is RateType CPD, it represents line item days. This value is read-only.}
#'  \item{capVolume}{a integer - If this reconciliation data is for a ProposalLineItem, then this contains
#' the cap volume, which is calculated based on the proposal line item's
#' billing settings (may be null for certain billing settings). Otherwise, this
#' is null. This value is read-only.}
#'  \item{rolloverVolume}{a integer - If this reconciliation data is for a ProposalLineItem, then this contains
#' the rollover volume from previous cycles, which is calculated based on the
#' proposal line item's billing settings (may be null for certain billing
#' settings). Otherwise, this is null. This value is read-only.}
#'  \item{billableVolume}{a integer - If this reconciliation data is for a ProposalLineItem, then this contains
#' the billable volume, which is calculated from the reconciledVolume and the
#' proposal line item's billing settings (may be null for certain billing
#' settings). Otherwise, the value of this field will be the same as the
#' reconciledVolume. This value is read-only.}
#'  \item{netBillableRevenue}{a Money - The net billable revenue. If this reconciliation data is for a
#' ProposalLineItem, this is calculated from the netRate, billableVolume, and
#' the proposal line item's billing settings. This may be null for certain
#' billing settings. Otherwise, this is calculated from the netRate and
#' billableVolume. This value is read-only.}
#'  \item{grossBillableRevenue}{a Money - The gross billable revenue. If this reconciliation data is for a
#' ProposalLineItem and the pricingModel is PricingModel GROSS, this is
#' calculated from the grossRate, billableVolume, and the proposal line item's
#' billing settings. This may be null for certain billing settings. Otherwise,
#' the value of this field will be the same as the netBillableRevenue. This
#' value is read-only.}
#'  \item{billableRevenueOverrides}{a BillableRevenueOverrides - Manual overrides for the Google calculated billable revenue fields. If set,
#' it indicates that these values should be used as the final billable revenue
#' instead of the Google calculated ones. This value is optional and defaults
#' to null.}
#' }
#' 
#' \strong{ReconciliationLineItemReportPage}
#' 
#' Captures a page of ReconciliationLineItemReport objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.ReconciliationLineItemReportPage}{Google Documentation for ReconciliationLineItemReportPage}
#' \describe{
#'  \item{results}{a ReconciliationLineItemReport - The collection of ReconciliationLineItemReport objects contained in this
#' page.}
#'  \item{startIndex}{a integer - The absolute index in the total result set on which this page begins.}
#'  \item{totalResultSetSize}{a integer - The size of the total result set to which this page belongs.}
#' }
#' 
#' \strong{RequiredError}
#' 
#' Errors due to missing required field.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.RequiredError}{Google Documentation for RequiredError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.ServerError}{Google Documentation for ServerError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.SetValue}{Google Documentation for SetValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{values}{a Value - The values. They must all be the same type of Value and not contain
#' duplicates.}
#' }
#' 
#' \strong{SoapRequestHeader}
#' 
#' Represents the SOAP request header used by API requests.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.SoapRequestHeader}{Google Documentation for SoapRequestHeader}
#' \describe{
#'  \item{networkCode}{a character - The network code to use in the context of a request.}
#'  \item{applicationName}{a character - The name of client library application.}
#' }
#' 
#' \strong{SoapResponseHeader}
#' 
#' Represents the SOAP request header used by API responses.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.SoapResponseHeader}{Google Documentation for SoapResponseHeader}
#' \describe{
#'  \item{requestId}{a character}
#'  \item{responseTime}{a integer}
#' }
#' 
#' \strong{Statement}
#' 
#' Holds the query in PQL syntax. See link for how to form PQL.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.Statement}{Google Documentation for Statement}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.StatementError}{Google Documentation for StatementError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.String_ValueMapEntry}{Google Documentation for String_ValueMapEntry}
#' \describe{
#'  \item{key}{a character}
#'  \item{value}{a Value}
#' }
#' 
#' \strong{TextValue}
#' 
#' Contains a string value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.TextValue}{Google Documentation for TextValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a character - The string value.}
#' }
#' 
#' \strong{Value}
#' 
#' Value represents a value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService.Value}{Google Documentation for Value}
#' \describe{
#' }
#' 
#' 
#' 
#' @usage dfp_ReconciliationLineItemReportService_object_factory(obj_type, obj_data)
#' 
#' @param obj_type a string from one of the object types described above
#' @param obj_data a \code{list} of \code{lists} or a \code{data.frame} with the required components to create
#' the obj_type specified. All input names must match the expected attributes for the object.
#' If submitting a list of attributes to create 1 object make sure to nest it inside top-level list, so that
#' it is a list of length 1 with 1 list of attributes to create the object.
#' @return a string of formatted XML that can be inserted into a SOAP request body to the APT
#' @export
dfp_ReconciliationLineItemReportService_object_factory <- function(obj_type, obj_data){
 if(is.data.frame(obj_data)){
 sampled_names <- names(obj_data) } else if(is.list(obj_data)){
 sampled_names <- names(obj_data[[1]])
 } else { stop("obj_data must be a list or data.frame")
 }

 if(obj_type=='BillableRevenueOverrides'){
 stopifnot(all(sampled_names %in% c('netBillableRevenueOverride', 'grossBillableRevenueOverride', 'billableRevenueOverride')))
 }

 if(obj_type=='Date'){
 stopifnot(all(sampled_names %in% c('year', 'month', 'day')))
 }

 if(obj_type=='Money'){
 stopifnot(all(sampled_names %in% c('currencyCode', 'microAmount')))
 }

 if(obj_type=='ReconciliationLineItemReport'){
 stopifnot(all(sampled_names %in% c('id', 'reconciliationReportId', 'orderId', 'proposalId', 'lineItemId', 'proposalLineItemId', 'rateType', 'netRate', 'grossRate', 'pricingModel', 'dfpVolume', 'thirdPartyVolume', 'manualVolume', 'reconciliationSource', 'reconciledVolume', 'capVolume', 'rolloverVolume', 'billableVolume', 'netBillableRevenue', 'grossBillableRevenue', 'billableRevenueOverrides')))
 }

}
#' 
#' getReconciliationLineItemReportsByStatement
#' 
#' Gets a ReconciliationLineItemReportPage of ReconciliationLineItemReport objects that satisfy the given Statement query. The following fields are supported for filtering:  
#' \itemize{
#'   \item{id}
#'   \item{reconciliationReportId}
#'   \item{orderId}
#'   \item{proposalId}
#'   \item{lineItemId}
#'   \item{proposalLineItemId}
#' }
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService#getReconciliationLineItemReportsByStatement}{Google Documentation for getReconciliationLineItemReportsByStatement}
#' 
#' @usage dfp_getReconciliationLineItemReportsByStatement(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a getReconciliationLineItemReportsByStatementResponse 
#' @export
dfp_getReconciliationLineItemReportsByStatement <- function(request_data){

 request_body <- make_request_body(service='ReconciliationLineItemReportService', root_name='getReconciliationLineItemReportsByStatement', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getReconciliationLineItemReportsByStatementResponse']])
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
#' updateReconciliationLineItemReports
#' 
#' Updates a list of ReconciliationLineItemReport objects which belong to same ReconciliationReport. ReconciliationLineItemReport reconciliation line item reports to update
#' 
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/ReconciliationLineItemReportService#updateReconciliationLineItemReports}{Google Documentation for updateReconciliationLineItemReports}
#' 
#' @usage dfp_updateReconciliationLineItemReports(request_data)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @return a \code{list} containing all the elements of a updateReconciliationLineItemReportsResponse 
#' @export
dfp_updateReconciliationLineItemReports <- function(request_data){

 request_body <- make_request_body(service='ReconciliationLineItemReportService', root_name='updateReconciliationLineItemReports', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['updateReconciliationLineItemReportsResponse']])
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
