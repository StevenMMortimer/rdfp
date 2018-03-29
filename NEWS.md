## rdfp 0.1.1.9000

### Features

  * `dfp_report_url_to_dataframe()` now returns a `tbl_df` object for better printing and casted data types

### Bug Fixes

  * Nothing yet! 

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
