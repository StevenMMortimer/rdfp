## rdfp 0.1.2.9000

### Features

  * Nothing Yet!

### Bug Fixes

  * Nothing Yet!

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
