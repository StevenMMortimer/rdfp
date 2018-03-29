
rdfp <img src="man/figures/rdfp.png" width="120px" align="right" />
===================================================================

[![Build Status](https://travis-ci.org/StevenMMortimer/rdfp.svg?branch=master)](https://travis-ci.org/StevenMMortimer/rdfp) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/StevenMMortimer/rdfp?branch=master&svg=true)](https://ci.appveyor.com/project/StevenMMortimer/rdfp) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/rdfp)](http://cran.r-project.org/package=rdfp) [![Coverage Status](https://codecov.io/gh/StevenMMortimer/rdfp/branch/master/graph/badge.svg)](https://codecov.io/gh/StevenMMortimer/rdfp?branch=master)

**Compiled using DFP API version: `v201802`**

**rdfp** allows you to use the DoubleClick for Publishers API from R. Manage inventory, create orders, pull reports, and more!

Table of Contents
-----------------

-   [Installation](#installation)
-   [Usage](#usage)
    -   [Functions](#functions)
    -   [Set API Version](#set-api-version)
    -   [Authenticate](#authenticate)
    -   [Get Current User Info](#get-current-user-info)
    -   [Pull a LineItem](#pull-a-lineitem)
    -   [Run a Report](#run-a-report)
-   [Vignettes](#vignettes)
-   [Credits](#credits)
-   [More Information](#more-information)

Installation
------------

``` r
# this package is currently not on CRAN, so it should be installed from GitHub
# install.packages("devtools")
devtools::install_github("StevenMMortimer/rdfp")
```

If you encounter a clear bug, please file a minimal reproducible example on [github](https://github.com/StevenMMortimer/rdfp/issues).

Usage
-----

### Functions

All functions start with `dfp_` to aid the user's ability to find DFP-specific operations when using code completion in RStudio. By default most **rdfp** functions will return a `data.frame` or `list` parsed from the XML returned in the SOAP response.

### Load Package and Set API Version

Google has a very quick policy of depricating and not supporting versions since they are releasing multiple versions of the API each calendar year. **rdfp** is periodically compiled against a version of the API. If you would like to use an older or newer API version, just specify it in the options.

``` r
suppressWarnings(suppressMessages(library(dplyr)))
suppressWarnings(suppressMessages(library(lubridate)))
library(rdfp)
# this will force all calls to be against the version "v201711"
options(rdfp.version = "v201711")
```

### Authenticate

First, you will need to specify the `network_code` of the DFP instance you'd like to connect to. This is the only required option that the user must specify when using the **rdfp** package. There are also other options like a client\_id and client\_secret which must be created via the \[Google Developers Console\] (<https://console.developers.google.com>), which allows R to access the API as an "application" on your behalf, whether or not you are running your R script interactively. After specifying the 4 options listed below, simply run `dfp_auth()` to authenticate.

``` r
options(rdfp.network_code = "12345678")
options(rdfp.application_name = "MyApp")
options(rdfp.client_id = "012345678901-99thisisatest99.apps.googleusercontent.com")
options(rdfp.client_secret = "Th1s1sMyC1ientS3cr3t")

# this function will use the options set above and 
# cache an OAuth token in the working directory
# the token will be refreshed when necessary
dfp_auth()
```

### Get Current User Info

``` r
# Check current user or network
user_info <- dfp_getCurrentUser()
network_info <- dfp_getCurrentNetwork()
```

#### Pull a LineItem

Below is an example of how to get objects by Publishers Query Language (PQL) statement. The statement is constructed as a list of lists that are nested to emulate the hierarchy of the XML to be created. The example uses the `dfp_getLineItemsByStatement` function from the \[LineItemService\] (<https://developers.google.com/doubleclick-publishers/docs/reference/v201802/LineItemService>)

``` r
# Retrieve all Line Items that have a status of "DELIVERING"
dat <- list('filterStatement'=list('query'="WHERE status='DELIVERING' LIMIT 3"))
resultset <- dfp_getLineItemsByStatement(dat, as_df=TRUE) 
resultset[,c('orderId', 'id', 'priority', 'deliveryRateType')]
#> # A tibble: 3 x 4
#>       orderId          id priority deliveryRateType
#>         <dbl>       <dbl>    <dbl> <chr>           
#> 1 1254227776. 1928427256.      12. EVENLY          
#> 2 1393728736. 2038280896.      12. EVENLY          
#> 3 1265251936. 2060032216.      16. EVENLY
```

### Run a Report

Below is an example of how to make a simple report request.

``` r
# create a reportJob object
# reportJobs consist of a reportQuery
# Documentation for the reportQuery object can be found in R using 
# ?dfp_ReportService_object_factory and searching for ReportQuery
# Also online documentation is available that lists available child elements for reportQuery
# https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ReportService.ReportQuery
report_request_data <- list(reportJob =
                              list(reportQuery =
                                     list(dimensions = 'AD_UNIT_NAME',
                                          dimensions = 'ADVERTISER_NAME',
                                          dimensions = 'ORDER_NAME',
                                          dimensions = 'LINE_ITEM_NAME',
                                          adUnitView = 'FLAT',
                                          columns = 'AD_SERVER_IMPRESSIONS', 
                                          columns = 'AD_SERVER_CLICKS',
                                          dateRangeType = 'LAST_WEEK')
                                   )
                            )

# a convenience function has been provided to you to manage the report process workflow
# if you would like more control, see the example below which moves through each step in the process
report_data <- dfp_full_report_wrapper(report_request_data)
```

Vignettes
---------

The README below outlines the package functionality, but review the vignettes for more detailed examples on usage.

-   [Administrative Tasks](https://StevenMMortimer.github.io/rdfp/articles/administrative-tasks.html)
-   [Ad Trafficking Setup](https://StevenMMortimer.github.io/rdfp/articles/ad-trafficking-setup.html)
-   [Manipulating Orders and LineItems](https://StevenMMortimer.github.io/rdfp/articles/manipulating-orders-and-lineitems.html)
-   [Checking Availability](https://StevenMMortimer.github.io/rdfp/articles/checking-availability.html)
-   [Pulling Reports](https://StevenMMortimer.github.io/rdfp/articles/pulling-reports.html)

Credits
-------

This application uses other open source software components. The authentication components are mostly verbatim copies of the routines established in the **googlesheets** package (<https://github.com/jennybc/googlesheets>). We acknowledge and are grateful to these developers for their contributions to open source.

More Information
----------------

Google provides support for client libraries [here](https://developers.google.com/doubleclick-publishers/docs/clients), but unfortunately, R is not a supported language. Google's client libraries directly reference the production WSDLs to interact with the API, but this package makes SOAP requests best formatted to match the WSDL standards. This articulation is not perfect and continued progress will be made to bring functionality up to par with the client libraries.

Most all operations supported by the DFP API are available via this package. It is strongly recommended that you use the [DFP API Reference](https://developers.google.com/doubleclick-publishers/docs/rel_notes) when using this package. Details on formatting, attributes, and methods are all better explained by Google's documentation.

More information is also available on the `pkgdown` site at <https://StevenMMortimer.github.io/rdfp/>.

[Top](#rdfp-)

------------------------------------------------------------------------

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
