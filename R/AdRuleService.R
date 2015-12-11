#' AdRuleService
#' 
#' Provides methods for creating, updating and retrieving AdRule objects.
#'
#' Ad rules contain data that the ad server uses to generate a playlist of
#' video ads.
#' 
#' AdRuleService Object Factory
#' 
#' A function to create a variety of objects that are part of the AdRuleService
#' Note: not all objects here are inputs to the functions of this service so 
#' please consult each function for the required inputs
#' 
#' Below is a list of objects and their required components to be created with this function:
#' 
#' \strong{ActivateAdRules}
#' 
#' The action used for resuming AdRule objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.ActivateAdRules}{Google Documentation for ActivateAdRules}
#' \describe{
#'  \item{extends AdRuleAction}{see documentation for AdRuleAction}
#' }
#' 
#' \strong{AdRule}
#' 
#' An AdRule contains data that the ad server will use to generate a playlist
#' of video ads.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.AdRule}{Google Documentation for AdRule}
#' \describe{
#'  \item{id}{a integer - The unique ID of the AdRule. This value is readonly and is assigned by
#' Google.}
#'  \item{name}{a character - The unique name of the AdRule. This attribute is required to create an ad
#' rule and has a maximum length of 255 characters.}
#'  \item{priority}{a integer - The priority of the AdRule. This attribute is required and can range from 1
#' to 1000, with 1 being the highest possible priority. Changing an ad rule's
#' priority can affect the priorities of other ad rules. For example,
#' increasing an ad rule's priority from 5 to 1 will shift the ad rules that
#' were previously in priority positions 1 through 4 down one.}
#'  \item{targeting}{a Targeting - The targeting criteria of the AdRule. This attribute is required.}
#'  \item{startDateTime}{a DateTime - This AdRule object's start date and time. This attribute is required and
#' must be a date in the future for new ad rules.}
#'  \item{startDateTimeType}{a StartDateTimeType - Specifies whether to start using the AdRule right away, in an hour, etc.
#' This attribute is optional and defaults to StartDateTimeType
#' USE_START_DATE_TIME. This can take one of the following values: 
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
#'  \item{endDateTime}{a DateTime - This AdRule object's end date and time. This attribute is required unless
#' unlimitedEndDateTime is set to true. If specified, it must be after the
#' startDateTime.}
#'  \item{unlimitedEndDateTime}{a boolean - Specifies whether the AdRule has an end time. This attribute is optional and
#' defaults to false.}
#'  \item{status}{a AdRuleStatus - The AdRuleStatus of the ad rule. This attribute is read-only and defaults to
#' AdRuleStatus INACTIVE. This can take one of the following values: 
#'    \itemize{
#'      \item{ACTIVE - Created and ready to be served. Is user-visible.}
#'      \item{INACTIVE - Paused, user-visible.}
#'      \item{DELETED - Marked as deleted, not user-visible.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{frequencyCapBehavior}{a FrequencyCapBehavior - The FrequencyCapBehavior of the AdRule. This attribute is optional and
#' defaults to FrequencyCapBehavior DEFER. This can take one of the following values: 
#'    \itemize{
#'      \item{TURN_ON - Turn on at least one of the frequency caps.}
#'      \item{TURN_OFF - Turn off all frequency caps.}
#'      \item{DEFER - Defer frequency cap decisions to the next ad rule in priority order.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{maxImpressionsPerLineItemPerStream}{a integer - This AdRule object's frequency cap for the maximum impressions per stream.
#' This attribute is optional and defaults to 0.}
#'  \item{maxImpressionsPerLineItemPerPod}{a integer - This AdRule object's frequency cap for the maximum impressions per pod. This
#' attribute is optional and defaults to 0.}
#'  \item{preroll}{a BaseAdRuleSlot - This AdRule object's pre-roll slot. This attribute is required.}
#'  \item{midroll}{a BaseAdRuleSlot - This AdRule object's mid-roll slot. This attribute is required.}
#'  \item{postroll}{a BaseAdRuleSlot - This AdRule object's post-roll slot. This attribute is required.}
#' }
#' 
#' \strong{AdRuleAction}
#' 
#' Represents the actions that can be performed on AdRule objects. May take one of the actions listed below.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.AdRuleAction}{Google Documentation for AdRuleAction}
#' \describe{
#'  \item{ActivateAdRules}{The action used for resuming AdRule objects.}
#'  \item{DeactivateAdRules}{The action used for pausing AdRule objects.}
#'  \item{DeleteAdRules}{The action used for deleting AdRule objects.}
#' }
#' 
#' \strong{AdRuleDateError}
#' 
#' Lists all errors associated with ad rule start and end dates.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.AdRuleDateError}{Google Documentation for AdRuleDateError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a AdRuleDateError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{START_DATE_TIME_IS_IN_PAST - Cannot create a new ad rule with a start date in the past.}
#'      \item{END_DATE_TIME_IS_IN_PAST - Cannot update an existing ad rule that has already completely passed with a
#' new end date that is still in the past.}
#'      \item{END_DATE_TIME_NOT_AFTER_START_TIME - End date must be after the start date.}
#'      \item{END_DATE_TIME_TOO_LATE - DateTimes after 1 January 2037 are not supported.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{AdRuleFrequencyCapError}
#' 
#' Errors related to ad rule frequency caps
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.AdRuleFrequencyCapError}{Google Documentation for AdRuleFrequencyCapError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a AdRuleFrequencyCapError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{NO_FREQUENCY_CAPS_SPECIFIED_WHEN_FREQUENCY_CAPS_TURNED_ON - The ad rule specifies that frequency caps should be turned on, but then none
#' of the frequency caps have actually been set.}
#'      \item{FREQUENCY_CAPS_SPECIFIED_WHEN_FREQUENCY_CAPS_TURNED_OFF - The ad rule specifies that frequency caps should not be turned on, but then
#' some frequency caps were actually set.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{AdRulePage}
#' 
#' Captures a page of AdRule objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.AdRulePage}{Google Documentation for AdRulePage}
#' \describe{
#'  \item{totalResultSetSize}{a integer - The size of the total result set to which this page belongs.}
#'  \item{startIndex}{a integer - The absolute index in the total result set on which this page begins.}
#'  \item{results}{a AdRule - The collection of ad rules contained within this page.}
#' }
#' 
#' \strong{AdRulePriorityError}
#' 
#' Errors associated with ad rule priorities.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.AdRulePriorityError}{Google Documentation for AdRulePriorityError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a AdRulePriorityError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{DUPLICATE_PRIORITY - Ad rules must have unique priorities.}
#'      \item{PRIORITIES_NOT_SEQUENTIAL - One or more priorities are missing.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{AdRuleSlotError}
#' 
#' Errors related to ad rule slots.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.AdRuleSlotError}{Google Documentation for AdRuleSlotError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a AdRuleSlotError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{DIFFERENT_STATUS_THAN_AD_RULE - Has a different status than the ad rule to which it belongs.}
#'      \item{INVALID_VIDEO_AD_DURATION_RANGE - Min video ad duration is greater than max video ad duration.}
#'      \item{INVALID_VIDEO_MIDROLL_FREQUENCY_TYPE - Video mid-roll frequency type other than NONE for pre-roll or post-roll.}
#'      \item{MALFORMED_VIDEO_MIDROLL_FREQUENCY_CSV - Invalid format for video mid-roll frequency when expecting a CSV list of
#' numbers. Valid formats are the following: empty comma-separated list of
#' numbers (time milliseconds or cue points) a single number (every n
#' milliseconds or cue points, or one specific time / cue point)}
#'      \item{MALFORMED_VIDEO_MIDROLL_FREQUENCY_SINGLE_NUMBER - Invalid format for video mid-roll frequency when expecting a single number
#' only, e.g., every n seconds or every n cue points.}
#'      \item{INVALID_OVERLAY_AD_DURATION_RANGE - Min overlay ad duration is greater than max overlay ad duration.}
#'      \item{INVALID_OVERLAY_MIDROLL_FREQUENCY_TYPE - Overlay mid-roll frequency type other than NONE for pre-roll or post-roll.}
#'      \item{MALFORMED_OVERLAY_MIDROLL_FREQUENCY_CSV - Invalid format for overlay mid-roll frequency for list of numbers. See valid
#' formats above.}
#'      \item{MALFORMED_OVERLAY_MIDROLL_FREQUENCY_SINGLE_NUMBER - Invalid format for overlay mid-roll frequency for a single number.}
#'      \item{INVALID_BUMPER_MAX_DURATION - Non-positive bumper duration when expecting a positive number.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#' }
#' 
#' \strong{AdUnitTargeting}
#' 
#' Represents targeted or excluded ad units.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.AdUnitTargeting}{Google Documentation for AdUnitTargeting}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.ApiError}{Google Documentation for ApiError}
#' \describe{
#'  \item{fieldPath}{a character - The OGNL field path to identify cause of error.}
#'  \item{trigger}{a character - The data that caused the error.}
#'  \item{errorString}{a character - A simple string representation of the error and reason.}
#' }
#' 
#' \strong{ApiException}
#' 
#' Exception class for holding a list of service errors.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.ApiException}{Google Documentation for ApiException}
#' \describe{
#'  \item{message}{a character (inherited from ApplicationException) - Error message.}
#'  \item{errors}{a ApiError - List of errors.}
#' }
#' 
#' \strong{ApiVersionError}
#' 
#' Errors related to the usage of API versions.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.ApiVersionError}{Google Documentation for ApiVersionError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.ApplicationException}{Google Documentation for ApplicationException}
#' \describe{
#'  \item{message}{a character - Error message.}
#' }
#' 
#' \strong{AudienceSegmentCriteria}
#' 
#' An AudienceSegmentCriteria object is used to target AudienceSegment objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.AudienceSegmentCriteria}{Google Documentation for AudienceSegmentCriteria}
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
#' \strong{AuthenticationError}
#' 
#' An error for an exception that occurred when authenticating.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.AuthenticationError}{Google Documentation for AuthenticationError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.BandwidthGroup}{Google Documentation for BandwidthGroup}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.BandwidthGroupTargeting}{Google Documentation for BandwidthGroupTargeting}
#' \describe{
#'  \item{isTargeted}{a boolean - Indicates whether bandwidth groups should be targeted or excluded. This
#' attribute is optional and defaults to true.}
#'  \item{bandwidthGroups}{a Technology - The bandwidth groups that are being targeted or excluded by the LineItem.}
#' }
#' 
#' \strong{BaseAdRuleSlot}
#' 
#' Simple object representing an ad slot within an AdRule. Ad rule slots
#' contain information about the types/number of ads to display, as well as
#' additional information on how the ad server will generate playlists.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.BaseAdRuleSlot}{Google Documentation for BaseAdRuleSlot}
#' \describe{
#'  \item{slotBehavior}{a AdRuleSlotBehavior - The AdRuleSlotBehavior for video ads for this slot. This attribute is
#' optional and defaults to AdRuleSlotBehavior DEFER. Indicates whether video
#' ads are allowed for this slot, or if the decision is deferred to a
#' lower-priority ad rule. This can take one of the following values: 
#'    \itemize{
#'      \item{ALWAYS_SHOW - This ad rule always includes this slot's ads.}
#'      \item{NEVER_SHOW - This ad rule never includes this slot's ads.}
#'      \item{DEFER - Defer to lower priority rules. This ad rule doesn't specify guidelines for
#' this slot's ads.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{minVideoAdDuration}{a integer - The minimum duration in milliseconds of video ads within this slot. This
#' attribute is optional and defaults to 0.}
#'  \item{maxVideoAdDuration}{a integer - The maximum duration in milliseconds of video ads within this slot. This
#' attribute is optional and defaults to 0.}
#'  \item{videoMidrollFrequencyType}{a MidrollFrequencyType - The frequency type for video ads in this ad rule slot. This attribute is
#' required for mid-rolls, but if this is not a mid-roll, the value is set to
#' MidrollFrequencyType NONE. This can take one of the following values: 
#'    \itemize{
#'      \item{NONE - The ad rule slot is not a mid-roll and hence MidrollFrequency should be
#' ignored.}
#'      \item{EVERY_N_SECONDS - MidrollFrequency is a time interval and mentioned as a single numeric value
#' in seconds. For example, "100" would mean "play a mid-roll every 100
#' seconds".}
#'      \item{FIXED_TIME - MidrollFrequency is a comma-delimited list of points in time (in seconds)
#' when an ad should play. For example, "100,300" would mean "play an ad at 100
#' seconds and 300 seconds".}
#'      \item{EVERY_N_CUEPOINTS - MidrollFrequency is a cue point interval and is a single integer value, such
#' as "5", which means "play a mid-roll every 5th cue point".}
#'      \item{FIXED_CUE_POINTS - Same as FIXED_TIME, except the values represent the ordinal cue points
#' ("1,3,5", for example).}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{videoMidrollFrequency}{a character - The mid-roll frequency of this ad rule slot for video ads. This attribute is
#' required for mid-rolls, but if MidrollFrequencyType is set to
#' MidrollFrequencyType NONE, this value should be ignored. For example, if
#' this slot has a frequency type of MidrollFrequencyType EVERY_N_SECONDS and
#' videoMidrollFrequency = "60", this would mean " play a mid-roll every 60
#' seconds."}
#'  \item{bumper}{a AdRuleSlotBumper - The AdRuleSlotBumper for this slot. This attribute is optional and defaults
#' to AdRuleSlotBumper NONE. This can take one of the following values: 
#'    \itemize{
#'      \item{NONE - Do not show a bumper ad.}
#'      \item{BEFORE - Show a bumper ad before the slot's other ads.}
#'      \item{AFTER - Show a bumper ad after the slot's other ads.}
#'      \item{BEFORE_AND_AFTER - Show a bumper before and after the slot's other ads.}
#'      \item{UNKNOWN - The value returned if the actual value is not exposed by the requested API
#' version.}
#'    }
#'   }
#'  \item{maxBumperDuration}{a integer - The maximum duration of bumper ads within this slot. This attribute is
#' optional and defaults to 0.}
#'  \item{minPodDuration}{a integer - The minimum pod duration in milliseconds for this slot. This attribute is
#' optional and defaults to 0.}
#'  \item{maxPodDuration}{a integer - The maximum pod duration in milliseconds for this slot. This attribute is
#' optional and defaults to 0.}
#'  \item{maxAdsInPod}{a integer - The maximum number of ads allowed in a pod in this slot. This attribute is
#' optional and defaults to 0.}
#' }
#' 
#' \strong{BooleanValue}
#' 
#' Contains a boolean value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.BooleanValue}{Google Documentation for BooleanValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a boolean - The boolean value.}
#' }
#' 
#' \strong{Browser}
#' 
#' Represents an internet browser.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.Browser}{Google Documentation for Browser}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.BrowserLanguage}{Google Documentation for BrowserLanguage}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.BrowserLanguageTargeting}{Google Documentation for BrowserLanguageTargeting}
#' \describe{
#'  \item{isTargeted}{a boolean - Indicates whether browsers languages should be targeted or excluded. This
#' attribute is optional and defaults to true.}
#'  \item{browserLanguages}{a Technology - Browser languages that are being targeted or excluded by the LineItem.}
#' }
#' 
#' \strong{BrowserTargeting}
#' 
#' Represents browsers that are being targeted or excluded by the LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.BrowserTargeting}{Google Documentation for BrowserTargeting}
#' \describe{
#'  \item{isTargeted}{a boolean - Indicates whether browsers should be targeted or excluded. This attribute is
#' optional and defaults to true.}
#'  \item{browsers}{a Technology - Browsers that are being targeted or excluded by the LineItem.}
#' }
#' 
#' \strong{CollectionSizeError}
#' 
#' Error for the size of the collection being too large
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.CollectionSizeError}{Google Documentation for CollectionSizeError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.CommonError}{Google Documentation for CommonError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.ContentMetadataKeyHierarchyTargeting}{Google Documentation for ContentMetadataKeyHierarchyTargeting}
#' \describe{
#'  \item{customTargetingValueIds}{a integer - The list of IDs of the targeted CustomTargetingValue objects that are ANDed
#' together. Targeting values do not need to be in the order of the hierarchy
#' levels. For example, if the hierarchy is "show > season > genre" the values
#' could be "season=3, show=30rock, genre=comedy."}
#' }
#' 
#' \strong{ContentMetadataTargetingError}
#' 
#' Lists all errors related to ContentMetadataTargeting.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.ContentMetadataTargetingError}{Google Documentation for ContentMetadataTargetingError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.ContentTargeting}{Google Documentation for ContentTargeting}
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
#' \strong{CustomCriteria}
#' 
#' A CustomCriteria object is used to perform custom criteria targeting on
#' custom targeting keys of type CustomTargetingKey.Type PREDEFINED or
#' CustomTargetingKey.Type FREEFORM.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.CustomCriteria}{Google Documentation for CustomCriteria}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.CustomCriteriaLeaf}{Google Documentation for CustomCriteriaLeaf}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.CustomCriteriaNode}{Google Documentation for CustomCriteriaNode}
#' \describe{
#' }
#' 
#' \strong{CustomCriteriaSet}
#' 
#' A CustomCriteriaSet comprises of a set of CustomCriteriaNode objects
#' combined by the CustomCriteriaSet.LogicalOperator logicalOperator. The
#' custom criteria targeting tree is subject to the rules defined on Targeting
#' customTargeting.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.CustomCriteriaSet}{Google Documentation for CustomCriteriaSet}
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
#' \strong{CustomTargetingError}
#' 
#' Lists all errors related to CustomTargetingKey and CustomTargetingValue
#' objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.CustomTargetingError}{Google Documentation for CustomTargetingError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.Date}{Google Documentation for Date}
#' \describe{
#'  \item{year}{a integer - Year (e.g., 2009)}
#'  \item{month}{a integer - Month (1..12)}
#'  \item{day}{a integer - Day (1..31)}
#' }
#' 
#' \strong{DateTime}
#' 
#' Represents a date combined with the time of day.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.DateTime}{Google Documentation for DateTime}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.DateTimeValue}{Google Documentation for DateTimeValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a DateTime - The DateTime value.}
#' }
#' 
#' \strong{DateValue}
#' 
#' Contains a date value.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.DateValue}{Google Documentation for DateValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a Date - The Date value.}
#' }
#' 
#' \strong{DayPart}
#' 
#' DayPart represents a time-period within a day of the week which is targeted
#' by a LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.DayPart}{Google Documentation for DayPart}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.DayPartTargeting}{Google Documentation for DayPartTargeting}
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
#' \strong{DeactivateAdRules}
#' 
#' The action used for pausing AdRule objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.DeactivateAdRules}{Google Documentation for DeactivateAdRules}
#' \describe{
#'  \item{extends AdRuleAction}{see documentation for AdRuleAction}
#' }
#' 
#' \strong{DeleteAdRules}
#' 
#' The action used for deleting AdRule objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.DeleteAdRules}{Google Documentation for DeleteAdRules}
#' \describe{
#'  \item{extends AdRuleAction}{see documentation for AdRuleAction}
#' }
#' 
#' \strong{DeviceCapability}
#' 
#' Represents a capability of a physical device.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.DeviceCapability}{Google Documentation for DeviceCapability}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.DeviceCapabilityTargeting}{Google Documentation for DeviceCapabilityTargeting}
#' \describe{
#'  \item{targetedDeviceCapabilities}{a Technology - Device capabilities that are being targeted by the LineItem.}
#'  \item{excludedDeviceCapabilities}{a Technology - Device capabilities that are being excluded by the LineItem.}
#' }
#' 
#' \strong{DeviceCategory}
#' 
#' Represents the category of a device.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.DeviceCategory}{Google Documentation for DeviceCategory}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.DeviceCategoryTargeting}{Google Documentation for DeviceCategoryTargeting}
#' \describe{
#'  \item{targetedDeviceCategories}{a Technology - Device categories that are being targeted by the LineItem.}
#'  \item{excludedDeviceCategories}{a Technology - Device categories that are being excluded by the LineItem.}
#' }
#' 
#' \strong{DeviceManufacturer}
#' 
#' Represents a mobile device's manufacturer.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.DeviceManufacturer}{Google Documentation for DeviceManufacturer}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.DeviceManufacturerTargeting}{Google Documentation for DeviceManufacturerTargeting}
#' \describe{
#'  \item{isTargeted}{a boolean - Indicates whether device manufacturers should be targeted or excluded. This
#' attribute is optional and defaults to true.}
#'  \item{deviceManufacturers}{a Technology - Device manufacturers that are being targeted or excluded by the LineItem.}
#' }
#' 
#' \strong{FeatureError}
#' 
#' Errors related to feature management. If you attempt using a feature that is
#' not available to the current network you'll receive a FeatureError with the
#' missing feature as the trigger.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.FeatureError}{Google Documentation for FeatureError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.GeoTargeting}{Google Documentation for GeoTargeting}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.InternalApiError}{Google Documentation for InternalApiError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.InventoryTargeting}{Google Documentation for InventoryTargeting}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.InventoryTargetingError}{Google Documentation for InventoryTargetingError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.Location}{Google Documentation for Location}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.MobileCarrier}{Google Documentation for MobileCarrier}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.MobileCarrierTargeting}{Google Documentation for MobileCarrierTargeting}
#' \describe{
#'  \item{isTargeted}{a boolean - Indicates whether mobile carriers should be targeted or excluded. This
#' attribute is optional and defaults to true.}
#'  \item{mobileCarriers}{a Technology - Mobile carriers that are being targeted or excluded by the LineItem.}
#' }
#' 
#' \strong{MobileDevice}
#' 
#' Represents a Mobile Device.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.MobileDevice}{Google Documentation for MobileDevice}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.MobileDeviceSubmodel}{Google Documentation for MobileDeviceSubmodel}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.MobileDeviceSubmodelTargeting}{Google Documentation for MobileDeviceSubmodelTargeting}
#' \describe{
#'  \item{targetedMobileDeviceSubmodels}{a Technology - Mobile device submodels that are being targeted by the LineItem.}
#'  \item{excludedMobileDeviceSubmodels}{a Technology - Mobile device submodels that are being excluded by the LineItem.}
#' }
#' 
#' \strong{MobileDeviceTargeting}
#' 
#' Represents mobile devices that are being targeted or excluded by the
#' LineItem.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.MobileDeviceTargeting}{Google Documentation for MobileDeviceTargeting}
#' \describe{
#'  \item{targetedMobileDevices}{a Technology - Mobile devices that are being targeted by the LineItem.}
#'  \item{excludedMobileDevices}{a Technology - Mobile devices that are being excluded by the LineItem.}
#' }
#' 
#' \strong{NoPoddingAdRuleSlot}
#' 
#' An ad rule slot with no podding. It is defined by a BaseAdRuleSlot
#' maxVideoAdDuration.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.NoPoddingAdRuleSlot}{Google Documentation for NoPoddingAdRuleSlot}
#' \describe{
#'  \item{slotBehavior}{a AdRuleSlotBehavior (inherited from BaseAdRuleSlot) - The AdRuleSlotBehavior for video ads for this slot. This attribute is
#' optional and defaults to AdRuleSlotBehavior DEFER. Indicates whether video
#' ads are allowed for this slot, or if the decision is deferred to a
#' lower-priority ad rule.}
#'  \item{minVideoAdDuration}{a integer (inherited from BaseAdRuleSlot) - The minimum duration in milliseconds of video ads within this slot. This
#' attribute is optional and defaults to 0.}
#'  \item{maxVideoAdDuration}{a integer (inherited from BaseAdRuleSlot) - The maximum duration in milliseconds of video ads within this slot. This
#' attribute is optional and defaults to 0.}
#'  \item{videoMidrollFrequencyType}{a MidrollFrequencyType (inherited from BaseAdRuleSlot) - The frequency type for video ads in this ad rule slot. This attribute is
#' required for mid-rolls, but if this is not a mid-roll, the value is set to
#' MidrollFrequencyType NONE.}
#'  \item{videoMidrollFrequency}{a character (inherited from BaseAdRuleSlot) - The mid-roll frequency of this ad rule slot for video ads. This attribute is
#' required for mid-rolls, but if MidrollFrequencyType is set to
#' MidrollFrequencyType NONE, this value should be ignored. For example, if
#' this slot has a frequency type of MidrollFrequencyType EVERY_N_SECONDS and
#' videoMidrollFrequency = "60", this would mean " play a mid-roll every 60
#' seconds."}
#'  \item{bumper}{a AdRuleSlotBumper (inherited from BaseAdRuleSlot) - The AdRuleSlotBumper for this slot. This attribute is optional and defaults
#' to AdRuleSlotBumper NONE.}
#'  \item{maxBumperDuration}{a integer (inherited from BaseAdRuleSlot) - The maximum duration of bumper ads within this slot. This attribute is
#' optional and defaults to 0.}
#'  \item{minPodDuration}{a integer (inherited from BaseAdRuleSlot) - The minimum pod duration in milliseconds for this slot. This attribute is
#' optional and defaults to 0.}
#'  \item{maxPodDuration}{a integer (inherited from BaseAdRuleSlot) - The maximum pod duration in milliseconds for this slot. This attribute is
#' optional and defaults to 0.}
#'  \item{maxAdsInPod}{a integer (inherited from BaseAdRuleSlot) - The maximum number of ads allowed in a pod in this slot. This attribute is
#' optional and defaults to 0.}
#' }
#' 
#' \strong{NotNullError}
#' 
#' Caused by supplying a null value for an attribute that cannot be null.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.NotNullError}{Google Documentation for NotNullError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.NumberValue}{Google Documentation for NumberValue}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.ObjectValue}{Google Documentation for ObjectValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#' }
#' 
#' \strong{OperatingSystem}
#' 
#' Represents an Operating System, such as Linux, Mac OS or Windows.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.OperatingSystem}{Google Documentation for OperatingSystem}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.OperatingSystemTargeting}{Google Documentation for OperatingSystemTargeting}
#' \describe{
#'  \item{isTargeted}{a boolean - Indicates whether operating systems should be targeted or excluded. This
#' attribute is optional and defaults to true.}
#'  \item{operatingSystems}{a Technology - Operating systems that are being targeted or excluded by the LineItem.}
#' }
#' 
#' \strong{OperatingSystemVersion}
#' 
#' Represents a specific version of an operating system.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.OperatingSystemVersion}{Google Documentation for OperatingSystemVersion}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.OperatingSystemVersionTargeting}{Google Documentation for OperatingSystemVersionTargeting}
#' \describe{
#'  \item{targetedOperatingSystemVersions}{a Technology - Operating system versions that are being targeted by the LineItem.}
#'  \item{excludedOperatingSystemVersions}{a Technology - Operating system versions that are being excluded by the LineItem.}
#' }
#' 
#' \strong{OptimizedPoddingAdRuleSlot}
#' 
#' Ad rule slot with optimized podding. Optimized pods are defined by a
#' BaseAdRuleSlot maxPodDuration and a BaseAdRuleSlot maxAdsInPod, and the ad
#' server chooses the best ads for the alloted duration.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.OptimizedPoddingAdRuleSlot}{Google Documentation for OptimizedPoddingAdRuleSlot}
#' \describe{
#'  \item{slotBehavior}{a AdRuleSlotBehavior (inherited from BaseAdRuleSlot) - The AdRuleSlotBehavior for video ads for this slot. This attribute is
#' optional and defaults to AdRuleSlotBehavior DEFER. Indicates whether video
#' ads are allowed for this slot, or if the decision is deferred to a
#' lower-priority ad rule.}
#'  \item{minVideoAdDuration}{a integer (inherited from BaseAdRuleSlot) - The minimum duration in milliseconds of video ads within this slot. This
#' attribute is optional and defaults to 0.}
#'  \item{maxVideoAdDuration}{a integer (inherited from BaseAdRuleSlot) - The maximum duration in milliseconds of video ads within this slot. This
#' attribute is optional and defaults to 0.}
#'  \item{videoMidrollFrequencyType}{a MidrollFrequencyType (inherited from BaseAdRuleSlot) - The frequency type for video ads in this ad rule slot. This attribute is
#' required for mid-rolls, but if this is not a mid-roll, the value is set to
#' MidrollFrequencyType NONE.}
#'  \item{videoMidrollFrequency}{a character (inherited from BaseAdRuleSlot) - The mid-roll frequency of this ad rule slot for video ads. This attribute is
#' required for mid-rolls, but if MidrollFrequencyType is set to
#' MidrollFrequencyType NONE, this value should be ignored. For example, if
#' this slot has a frequency type of MidrollFrequencyType EVERY_N_SECONDS and
#' videoMidrollFrequency = "60", this would mean " play a mid-roll every 60
#' seconds."}
#'  \item{bumper}{a AdRuleSlotBumper (inherited from BaseAdRuleSlot) - The AdRuleSlotBumper for this slot. This attribute is optional and defaults
#' to AdRuleSlotBumper NONE.}
#'  \item{maxBumperDuration}{a integer (inherited from BaseAdRuleSlot) - The maximum duration of bumper ads within this slot. This attribute is
#' optional and defaults to 0.}
#'  \item{minPodDuration}{a integer (inherited from BaseAdRuleSlot) - The minimum pod duration in milliseconds for this slot. This attribute is
#' optional and defaults to 0.}
#'  \item{maxPodDuration}{a integer (inherited from BaseAdRuleSlot) - The maximum pod duration in milliseconds for this slot. This attribute is
#' optional and defaults to 0.}
#'  \item{maxAdsInPod}{a integer (inherited from BaseAdRuleSlot) - The maximum number of ads allowed in a pod in this slot. This attribute is
#' optional and defaults to 0.}
#' }
#' 
#' \strong{ParseError}
#' 
#' Lists errors related to parsing.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.ParseError}{Google Documentation for ParseError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.PermissionError}{Google Documentation for PermissionError}
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
#' \strong{PoddingError}
#' 
#' Errors related to podding fields in ad rule slots.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.PoddingError}{Google Documentation for PoddingError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#'  \item{reason}{a PoddingError.Reason - This can take one of the following values: 
#'    \itemize{
#'      \item{INVALID_PODDING_TYPE_NONE - Invalid podding type NONE, but has podding fields filled in. Podding types
#' are defined in
#' com.google.ads.publisher.domain.entity.adrule.export.PoddingType.}
#'      \item{INVALID_PODDING_TYPE_STANDARD - Invalid podding type STANDARD, but doesn't specify the max ads in pod and
#' max ad duration podding fields.}
#'      \item{INVALID_OPTIMIZED_POD_WITHOUT_DURATION - Invalid podding type OPTIMIZED, but doesn't specify pod duration.}
#'      \item{INVALID_OPTIMIZED_POD_WITHOUT_ADS - Invalid optimized pod that does not specify a valid max ads in pod, which
#' must either be a positive number or -1 to signify that there is no maximum.}
#'      \item{INVALID_POD_DURATION_RANGE - Min pod ad duration is greater than max pod ad duration.}
#'    }
#'   }
#' }
#' 
#' \strong{PublisherQueryLanguageContextError}
#' 
#' An error that occurs while executing a PQL query contained in a Statement
#' object.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.PublisherQueryLanguageContextError}{Google Documentation for PublisherQueryLanguageContextError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.PublisherQueryLanguageSyntaxError}{Google Documentation for PublisherQueryLanguageSyntaxError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.QuotaError}{Google Documentation for QuotaError}
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
#' \strong{RequiredError}
#' 
#' Errors due to missing required field.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.RequiredError}{Google Documentation for RequiredError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.RequiredNumberError}{Google Documentation for RequiredNumberError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.ServerError}{Google Documentation for ServerError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.SetValue}{Google Documentation for SetValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{values}{a Value - The values. They must all be the same type of Value and not contain
#' duplicates.}
#' }
#' 
#' \strong{SoapRequestHeader}
#' 
#' Represents the SOAP request header used by API requests.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.SoapRequestHeader}{Google Documentation for SoapRequestHeader}
#' \describe{
#'  \item{networkCode}{a character - The network code to use in the context of a request.}
#'  \item{applicationName}{a character - The name of client library application.}
#' }
#' 
#' \strong{SoapResponseHeader}
#' 
#' Represents the SOAP request header used by API responses.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.SoapResponseHeader}{Google Documentation for SoapResponseHeader}
#' \describe{
#'  \item{requestId}{a character}
#'  \item{responseTime}{a integer}
#' }
#' 
#' \strong{StandardPoddingAdRuleSlot}
#' 
#' An ad rule slot with standard podding. A standard pod is a series of video
#' ads played back to back. Standard pods are defined by a BaseAdRuleSlot
#' maxAdsInPod and a BaseAdRuleSlot maxVideoAdDuration.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.StandardPoddingAdRuleSlot}{Google Documentation for StandardPoddingAdRuleSlot}
#' \describe{
#'  \item{slotBehavior}{a AdRuleSlotBehavior (inherited from BaseAdRuleSlot) - The AdRuleSlotBehavior for video ads for this slot. This attribute is
#' optional and defaults to AdRuleSlotBehavior DEFER. Indicates whether video
#' ads are allowed for this slot, or if the decision is deferred to a
#' lower-priority ad rule.}
#'  \item{minVideoAdDuration}{a integer (inherited from BaseAdRuleSlot) - The minimum duration in milliseconds of video ads within this slot. This
#' attribute is optional and defaults to 0.}
#'  \item{maxVideoAdDuration}{a integer (inherited from BaseAdRuleSlot) - The maximum duration in milliseconds of video ads within this slot. This
#' attribute is optional and defaults to 0.}
#'  \item{videoMidrollFrequencyType}{a MidrollFrequencyType (inherited from BaseAdRuleSlot) - The frequency type for video ads in this ad rule slot. This attribute is
#' required for mid-rolls, but if this is not a mid-roll, the value is set to
#' MidrollFrequencyType NONE.}
#'  \item{videoMidrollFrequency}{a character (inherited from BaseAdRuleSlot) - The mid-roll frequency of this ad rule slot for video ads. This attribute is
#' required for mid-rolls, but if MidrollFrequencyType is set to
#' MidrollFrequencyType NONE, this value should be ignored. For example, if
#' this slot has a frequency type of MidrollFrequencyType EVERY_N_SECONDS and
#' videoMidrollFrequency = "60", this would mean " play a mid-roll every 60
#' seconds."}
#'  \item{bumper}{a AdRuleSlotBumper (inherited from BaseAdRuleSlot) - The AdRuleSlotBumper for this slot. This attribute is optional and defaults
#' to AdRuleSlotBumper NONE.}
#'  \item{maxBumperDuration}{a integer (inherited from BaseAdRuleSlot) - The maximum duration of bumper ads within this slot. This attribute is
#' optional and defaults to 0.}
#'  \item{minPodDuration}{a integer (inherited from BaseAdRuleSlot) - The minimum pod duration in milliseconds for this slot. This attribute is
#' optional and defaults to 0.}
#'  \item{maxPodDuration}{a integer (inherited from BaseAdRuleSlot) - The maximum pod duration in milliseconds for this slot. This attribute is
#' optional and defaults to 0.}
#'  \item{maxAdsInPod}{a integer (inherited from BaseAdRuleSlot) - The maximum number of ads allowed in a pod in this slot. This attribute is
#' optional and defaults to 0.}
#' }
#' 
#' \strong{Statement}
#' 
#' Holds the query in PQL syntax. See link for how to form PQL.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.Statement}{Google Documentation for Statement}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.StatementError}{Google Documentation for StatementError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.String_ValueMapEntry}{Google Documentation for String_ValueMapEntry}
#' \describe{
#'  \item{key}{a character}
#'  \item{value}{a Value}
#' }
#' 
#' \strong{StringLengthError}
#' 
#' Errors for Strings which do not meet given length constraints.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.StringLengthError}{Google Documentation for StringLengthError}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.Targeting}{Google Documentation for Targeting}
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
#' \strong{Technology}
#' 
#' Represents a technology entity that can be targeted.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.Technology}{Google Documentation for Technology}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.TechnologyTargeting}{Google Documentation for TechnologyTargeting}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.TextValue}{Google Documentation for TextValue}
#' \describe{
#'  \item{extends Value}{see documentation for Value}
#'  \item{value}{a character - The string value.}
#' }
#' 
#' \strong{TimeOfDay}
#' 
#' Represents a specific time in a day.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.TimeOfDay}{Google Documentation for TimeOfDay}
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
#' \strong{UniqueError}
#' 
#' An error for a field which must satisfy a uniqueness constraint
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.UniqueError}{Google Documentation for UniqueError}
#' \describe{
#'  \item{extends ApiError}{see documentation for ApiError}
#' }
#' 
#' \strong{UnknownAdRuleSlot}
#' 
#' The BaseAdRuleSlot subtype returned if the actual type is not exposed by the
#' requested API version.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.UnknownAdRuleSlot}{Google Documentation for UnknownAdRuleSlot}
#' \describe{
#'  \item{slotBehavior}{a AdRuleSlotBehavior (inherited from BaseAdRuleSlot) - The AdRuleSlotBehavior for video ads for this slot. This attribute is
#' optional and defaults to AdRuleSlotBehavior DEFER. Indicates whether video
#' ads are allowed for this slot, or if the decision is deferred to a
#' lower-priority ad rule.}
#'  \item{minVideoAdDuration}{a integer (inherited from BaseAdRuleSlot) - The minimum duration in milliseconds of video ads within this slot. This
#' attribute is optional and defaults to 0.}
#'  \item{maxVideoAdDuration}{a integer (inherited from BaseAdRuleSlot) - The maximum duration in milliseconds of video ads within this slot. This
#' attribute is optional and defaults to 0.}
#'  \item{videoMidrollFrequencyType}{a MidrollFrequencyType (inherited from BaseAdRuleSlot) - The frequency type for video ads in this ad rule slot. This attribute is
#' required for mid-rolls, but if this is not a mid-roll, the value is set to
#' MidrollFrequencyType NONE.}
#'  \item{videoMidrollFrequency}{a character (inherited from BaseAdRuleSlot) - The mid-roll frequency of this ad rule slot for video ads. This attribute is
#' required for mid-rolls, but if MidrollFrequencyType is set to
#' MidrollFrequencyType NONE, this value should be ignored. For example, if
#' this slot has a frequency type of MidrollFrequencyType EVERY_N_SECONDS and
#' videoMidrollFrequency = "60", this would mean " play a mid-roll every 60
#' seconds."}
#'  \item{bumper}{a AdRuleSlotBumper (inherited from BaseAdRuleSlot) - The AdRuleSlotBumper for this slot. This attribute is optional and defaults
#' to AdRuleSlotBumper NONE.}
#'  \item{maxBumperDuration}{a integer (inherited from BaseAdRuleSlot) - The maximum duration of bumper ads within this slot. This attribute is
#' optional and defaults to 0.}
#'  \item{minPodDuration}{a integer (inherited from BaseAdRuleSlot) - The minimum pod duration in milliseconds for this slot. This attribute is
#' optional and defaults to 0.}
#'  \item{maxPodDuration}{a integer (inherited from BaseAdRuleSlot) - The maximum pod duration in milliseconds for this slot. This attribute is
#' optional and defaults to 0.}
#'  \item{maxAdsInPod}{a integer (inherited from BaseAdRuleSlot) - The maximum number of ads allowed in a pod in this slot. This attribute is
#' optional and defaults to 0.}
#' }
#' 
#' \strong{UpdateResult}
#' 
#' Represents the result of performing an action on objects.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.UpdateResult}{Google Documentation for UpdateResult}
#' \describe{
#'  \item{numChanges}{a integer - The number of objects that were changed as a result of performing the
#' action.}
#' }
#' 
#' \strong{UserDomainTargeting}
#' 
#' Provides line items the ability to target or exclude users visiting their
#' websites from a list of domains or subdomains.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.UserDomainTargeting}{Google Documentation for UserDomainTargeting}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.Value}{Google Documentation for Value}
#' \describe{
#' }
#' 
#' \strong{VideoPosition}
#' 
#' Represents a targetable position within a video. A video ad can be targeted
#' to a position (pre-roll, all mid-rolls, or post-roll), or to a specific
#' mid-roll index.
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.VideoPosition}{Google Documentation for VideoPosition}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.VideoPositionTarget}{Google Documentation for VideoPositionTarget}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.VideoPositionTargeting}{Google Documentation for VideoPositionTargeting}
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
#' \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService.VideoPositionWithinPod}{Google Documentation for VideoPositionWithinPod}
#' \describe{
#'  \item{index}{a integer - The specific index of the pod. The index is defined as: 1 = first 2 = second
#' 3 = third .... 100 = last 100 will always be the last position. For example,
#' for a pod with 5 positions, 100 would target position 5. Multiple targets
#' against the index 100 can exist.<br> Positions over 100 are not supported.}
#' }
#' 
#' 
#' 
#' @usage dfp_AdRuleService_object_factory(obj_type, obj_data)
#' 
#' @param obj_type a string from one of the object types described above
#' @param obj_data a \code{list} of \code{lists} or a \code{data.frame} with the required components to create
#' the obj_type specified. All input names must match the expected attributes for the object.
#' If submitting a list of attributes to create 1 object make sure to nest it inside top-level list, so that
#' it is a list of length 1 with 1 list of attributes to create the object.
#' @return a string of formatted XML that can be inserted into a SOAP request body to the APT
#' @export
dfp_AdRuleService_object_factory <- function(obj_type, obj_data){
 if(is.data.frame(obj_data)){
 sampled_names <- names(obj_data) } else if(is.list(obj_data)){
 sampled_names <- names(obj_data[[1]])
 } else { stop("obj_data must be a list or data.frame")
 }

 if(obj_type=='AdRule'){
 stopifnot(all(sampled_names %in% c('id', 'name', 'priority', 'targeting', 'startDateTime', 'startDateTimeType', 'endDateTime', 'unlimitedEndDateTime', 'status', 'frequencyCapBehavior', 'maxImpressionsPerLineItemPerStream', 'maxImpressionsPerLineItemPerPod', 'preroll', 'midroll', 'postroll')))
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

 if(obj_type=='BaseAdRuleSlot'){
 stopifnot(all(sampled_names %in% c('slotBehavior', 'minVideoAdDuration', 'maxVideoAdDuration', 'videoMidrollFrequencyType', 'videoMidrollFrequency', 'bumper', 'maxBumperDuration', 'minPodDuration', 'maxPodDuration', 'maxAdsInPod')))
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

 if(obj_type=='NoPoddingAdRuleSlot'){
 stopifnot(all(sampled_names %in% c('slotBehavior', 'minVideoAdDuration', 'maxVideoAdDuration', 'videoMidrollFrequencyType', 'videoMidrollFrequency', 'bumper', 'maxBumperDuration', 'minPodDuration', 'maxPodDuration', 'maxAdsInPod')))
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

 if(obj_type=='OptimizedPoddingAdRuleSlot'){
 stopifnot(all(sampled_names %in% c('slotBehavior', 'minVideoAdDuration', 'maxVideoAdDuration', 'videoMidrollFrequencyType', 'videoMidrollFrequency', 'bumper', 'maxBumperDuration', 'minPodDuration', 'maxPodDuration', 'maxAdsInPod')))
 }

 if(obj_type=='StandardPoddingAdRuleSlot'){
 stopifnot(all(sampled_names %in% c('slotBehavior', 'minVideoAdDuration', 'maxVideoAdDuration', 'videoMidrollFrequencyType', 'videoMidrollFrequency', 'bumper', 'maxBumperDuration', 'minPodDuration', 'maxPodDuration', 'maxAdsInPod')))
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

 if(obj_type=='UnknownAdRuleSlot'){
 stopifnot(all(sampled_names %in% c('slotBehavior', 'minVideoAdDuration', 'maxVideoAdDuration', 'videoMidrollFrequencyType', 'videoMidrollFrequency', 'bumper', 'maxBumperDuration', 'minPodDuration', 'maxPodDuration', 'maxAdsInPod')))
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
#' createAdRules
#' 
#' Creates new AdRule objects.
#' 
#' @importFrom plyr llply ldply
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService#createAdRules}{Google Documentation for createAdRules}
#' 
#' @usage dfp_createAdRules(request_data, as_df=FALSE)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into a \code{data.frame}
#' @return a \code{list} or \code{data.frame} containing all the elements of a createAdRulesResponse 
#' @export
dfp_createAdRules <- function(request_data, as_df=FALSE){
 request_body <- make_request_body(service='AdRuleService', root_name='createAdRules', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['createAdRulesResponse']])
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
#' getAdRulesByStatement
#' 
#' Gets an AdRulePage of AdRule objects that satisfy the given Statement query. The following fields are supported for filtering:  a set of ad rules there is a backend error 
#' \itemize{
#'   \item{id}
#'   \item{name}
#'   \item{priority}
#'   \item{status}
#' }
#' 
#' @importFrom plyr llply ldply
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService#getAdRulesByStatement}{Google Documentation for getAdRulesByStatement}
#' 
#' @usage dfp_getAdRulesByStatement(request_data, as_df=FALSE)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into a \code{data.frame}
#' @return a \code{list} or \code{data.frame} containing all the elements of a getAdRulesByStatementResponse 
#' @export
dfp_getAdRulesByStatement <- function(request_data, as_df=FALSE){
 request_body <- make_request_body(service='AdRuleService', root_name='getAdRulesByStatement', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['getAdRulesByStatementResponse']])
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
#' performAdRuleAction
#' 
#' Performs actions on AdRule objects that match the given Statement query. a set of ad rules
#' 
#' @importFrom plyr llply ldply
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService#performAdRuleAction}{Google Documentation for performAdRuleAction}
#' 
#' @usage dfp_performAdRuleAction(request_data, as_df=FALSE)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into a \code{data.frame}
#' @return a \code{list} or \code{data.frame} containing all the elements of a performAdRuleActionResponse 
#' @export
dfp_performAdRuleAction <- function(request_data, as_df=FALSE){
 request_body <- make_request_body(service='AdRuleService', root_name='performAdRuleAction', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['performAdRuleActionResponse']])
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
#' updateAdRules
#' 
#' Updates the specified AdRule objects.
#' 
#' @importFrom plyr llply ldply
#' @seealso \href{https://developers.google.com/doubleclick-publishers/docs/reference/v201508/AdRuleService#updateAdRules}{Google Documentation for updateAdRules}
#' 
#' @usage dfp_updateAdRules(request_data, as_df=FALSE)
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into a \code{data.frame}
#' @return a \code{list} or \code{data.frame} containing all the elements of a updateAdRulesResponse 
#' @export
dfp_updateAdRules <- function(request_data, as_df=FALSE){
 request_body <- make_request_body(service='AdRuleService', root_name='updateAdRules', data=request_data)
  request <- build_soap_request(body = request_body)

  response <- xmlChildren(xmlChildren(xmlChildren(xmlRoot(request))$Body)[['updateAdRulesResponse']])
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
