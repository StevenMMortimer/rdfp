## rdfp 0.1.3 [release](https://github.com/StevenMMortimer/rdfp/releases/tag/v0.1.3)

**Note**: DoubleClick for Publishers was recently renamed to Google Ad Manager. For 
this version we will continue to use the "dfp" abbreviation although everything else 
has been updated to `v201811` from the Google Ad Manager API reference.

Also, please note that the API has changed the name of `timeZoneID` to `timeZoneId`. 
We have modified functions to follow suit. You may need to update this argument in existing 
scripts, especially when dealing with forecasts, reports, orders, and lineitems.

### Features

  * Update to latest version which is `v201811` (#8)
  * Make the default file name for a cached token `".httr-oauth-rdfp"` so that 
  it does not clash with other package token names
  * `dfp_date_to_list()` now infers the timezone if not provided. Previously it always defaulted 
  to a value of `America/New_York` (#6)
  * Increased the default `max_tries` argument in `dfp_full_report_wrapper()` from 
  10 to 20 tries so that long running queries do not "timeout" by reaching the max 
  number of tries without completing

### Bug Fixes

  * Update vignette names so that they are not duplicated, which is now a required 
  check for CRAN

___

## rdfp 0.1.2 [release](https://github.com/StevenMMortimer/rdfp/releases/tag/v0.1.2)

### Features

  * `dfp_report_url_to_dataframe()` now returns a `tbl_df` object for better 
  printing and casted data types
  * Simplify `dfp_select()` so that it automatically uses `dfp_select_parse()` 
  to format the result into a `tbl_df`
  * Add `dfp_date_as_list()` that will convert a date or datetime representation 
  in R to the required list format for submission to DFP
  * Add examples to functions so that the inline documentation 
  gives a better idea of how to make it work in R
  * Add `addtl_scopes` arugment to `dfp_auth()` so that users can create token that 
  can be used with other R packages to connect to other Google services

---

## rdfp 0.1.1 [release](https://github.com/StevenMMortimer/rdfp/releases/tag/v0.1.1)

### Features

  * Upgraded to API version `v201802`
  * Created more efficient parsers `parse_soap_response()`. Warning: This will cause 
  some breaking changes because how certain results are returned may be different.

### Bug Fixes

  * Line item targeting does not come back as a matrix. It is preserved as a list 
  so it can be directly passed back into the ForecastService functions or LineItemService 
  to get detailed availability

---

## rdfp 0.1.0 [release](https://github.com/StevenMMortimer/rdfp/releases/tag/v0.1.0)

### Features

  * Simple Administrative Tools:
    * `dfp_getCurrentUser()`
    * `dfp_getCurrentNetwork()`
    * `dfp_createTeams()`
    * `dfp_createUsers()`
    * `dfp_createUserTeamAssociations()`
    * `dfp_createCompanies()`
    * `dfp_createContacts()`
  * Ad Trafficking Setup: 
    * `dfp_createLabels()`
    * `dfp_createCustomFields()`
    * `dfp_createCustomFieldOptions()`
    * `dfp_createCustomTargetingKeys()`
    * `dfp_createCustomTargetingValues()`
  * Manipulating Orders and LineItems: 
    * `dfp_createOrders()`
    * `dfp_getLineItemsByStatement()`
  * Forecasting and Reporting:
    * `dfp_full_report_wrapper()`
    * `dfp_getDeliveryForecast()`
    * `dfp_getAvailabilityForecast()`
    
### Bug Fixes

  * None.
