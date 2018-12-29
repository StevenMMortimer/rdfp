
rdfp<img src="man/figures/rdfp.png" width="120px" align="right" />
==================================================================

[![Build Status](https://travis-ci.org/StevenMMortimer/rdfp.svg?branch=master)](https://travis-ci.org/StevenMMortimer/rdfp) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/StevenMMortimer/rdfp?branch=master&svg=true)](https://ci.appveyor.com/project/StevenMMortimer/rdfp) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/rdfp)](http://cran.r-project.org/package=rdfp) [![Coverage Status](https://codecov.io/gh/StevenMMortimer/rdfp/branch/master/graph/badge.svg)](https://codecov.io/gh/StevenMMortimer/rdfp?branch=master)

**Compiled using DFP API version: `v201811`**

**rdfp** allows you to use the DoubleClick for Publishers API from R (recently renamed to Google Ad Manager). Manage inventory, create orders, pull reports, and more!

Table of Contents
-----------------

-   [Installation](#installation)
-   [Vignettes](#vignettes)
-   [Usage](#usage)
    -   [Set API Version](#load-package-and-set-api-version)
    -   [Authenticate](#authenticate)
    -   [Get Current User Info](#get-current-user-info)
    -   [Pull a LineItem](#pull-a-lineitem)
    -   [Run a Report](#run-a-report)
-   [Credits](#credits)
-   [More Information](#more-information)

Installation
------------

``` r
# install from CRAN
install.packages("rdfp")

# or get the latest version available on GitHub using the devtools package
# install.packages("devtools")
devtools::install_github("StevenMMortimer/rdfp")
```

If you encounter a clear bug, please file a minimal reproducible example on [GitHub](https://github.com/StevenMMortimer/rdfp/issues).

Vignettes
---------

The README below outlines the package functionality, but review the vignettes for more detailed examples on usage.

-   [Administrative Tasks](https://StevenMMortimer.github.io/rdfp/articles/administrative-tasks.html)
-   [Ad Trafficking Setup](https://StevenMMortimer.github.io/rdfp/articles/ad-trafficking-setup.html)
-   [Manipulating Orders and LineItems](https://StevenMMortimer.github.io/rdfp/articles/manipulating-orders-and-lineitems.html)
-   [Checking Availability](https://StevenMMortimer.github.io/rdfp/articles/checking-availability.html)
-   [Pulling Reports](https://StevenMMortimer.github.io/rdfp/articles/pulling-reports.html)

Usage
-----

All functions start with `dfp_` so that you can easily identify DFP-specific operations and use tab completion in RStudio. Most **rdfp** functions will return a `tbl_df` or `list` parsed from the XML returned in the SOAP response.

### Load Package and Set API Version

Google releases 4 versions of the DFP API each year and deprecates versions older than one year, so there is a lot that's regularly changing in this package. **rdfp** is periodically compiled against a recent version of the API. If you would like to use an older or newer API version that what is the package default, then just specify it as an option.

``` r
library(rdfp)
# see the package default version
getOption("rdfp.version")
#> [1] "v201811"
```

``` r
# this will force all calls to be against the version "v201808"
options(rdfp.version = "v201808")
```

### Authenticate

To authenticate you will first need to specify the `network_code` of the DFP instance you would like to connect to. This is the only required option that the user must specify when using the **rdfp** package. After setting the `network_code` all you need to do is run `dfp_auth()`. If you already have a cached `.httr-oauth-rdfp` file in the current working directory, then the token will be loaded and refreshed if necessary. Otherwise, your browswer will pop open and you will interactively authenticate.

The package has other options like a client\_id and client\_secret where you can connect using your own Google Client instead of the package default. Using your own client requires you to first set one up in the [Google Developers Console](https://console.developers.google.com).

``` r
options(rdfp.network_code = "12345678")
options(rdfp.application_name = "MyApp")
options(rdfp.client_id = "012345678901-99thisisatest99.apps.googleusercontent.com")
options(rdfp.client_secret = "Th1s1sMyC1ientS3cr3t")

# dfp_auth will use the options above and cache an OAuth token in the working directory
# the token will be refreshed when necessary
dfp_auth()
```

### Get Current User Info

``` r
# Check current user or network
user_info <- dfp_getCurrentUser()
user_info[,c('id', 'isActive')]
#> # A tibble: 1 x 2
#>          id isActive
#>       <dbl> <lgl>   
#> 1 185549536 TRUE
network_info <- dfp_getCurrentNetwork()
network_info[,c('id', 'networkCode')]
#> # A tibble: 1 x 2
#>       id networkCode
#>    <dbl>       <dbl>
#> 1 109096     1019096
```

#### Pull a LineItem

The function `dfp_getLineItemsByStatement()` function from the [LineItemService](https://developers.google.com/ad-manager/api/reference/v201811/LineItemService) allows you to retrieve Line Items by Publishers Query Language (PQL) statement. The statement is constructed as a list of lists that are nested to emulate the hierarchy of the XML that needs to be created in the request.

``` r
# Retrieve up to 3 Line Items that have a status of "DELIVERING"
request_data <- list('filterStatement'=list('query'="WHERE status='DELIVERING' LIMIT 3"))
resultset <- dfp_getLineItemsByStatement(request_data, as_df=TRUE) 
resultset[,c('orderId', 'id', 'priority', 'deliveryRateType')]
#> # A tibble: 3 x 4
#>      orderId         id priority deliveryRateType
#>        <dbl>      <dbl>    <dbl> <chr>           
#> 1 2231707164 4557799162       12 EVENLY          
#> 2 2231707164 4557800341       12 EVENLY          
#> 3 2231707164 4557803758       12 EVENLY
```

### Run a Report

Below is an example of how to make a simple report request.

``` r
# In order to run a report you must specify how the report should be structured 
# by specifying a reportQuery inside a reportJob. All of the dimensions, columns, 
# date range options, etc. are documented at:
# https://developers.google.com/doubleclick-publishers/docs/reference/v201802/ReportService.ReportQuery
request_data <- list(reportJob=list(reportQuery=list(dimensions='MONTH_AND_YEAR', 
                                                     dimensions='AD_UNIT_ID',
                                                     adUnitView='FLAT',
                                                     columns = 'AD_SERVER_IMPRESSIONS', 
                                                     columns = 'AD_SERVER_CLICKS',
                                                     dateRangeType='LAST_WEEK'
                                                     )))

# a convenience function has been provided to you to manage the report process workflow
# if you would like more control, see the example below which moves through each step in the process
report_data <- dfp_full_report_wrapper(request_data)
report_data[,c('Dimension.MONTH_AND_YEAR', 'Dimension.AD_UNIT_ID', 'Column.AD_SERVER_CLICKS')]
#> # A tibble: 9 x 3
#>   Dimension.MONTH_AND_YEAR Dimension.AD_UNIT_ID Column.AD_SERVER_CLICKS
#>   <chr>                                   <dbl>                   <dbl>
#> 1 2018-12                           21677451947                     864
#> 2 2018-12                           21677451950                     210
#> 3 2018-12                           21677553898                    5049
#> 4 2018-12                           21677553901                     174
#> 5 2018-12                           21677553904                    3474
#> 6 2018-12                           21677451953                    1687
#> 7 2018-12                           21677553910                      65
#> 8 2018-12                           21677553913                    2589
#> 9 2018-12                           21677554012                      75
```

Credits
-------

This application uses other open source software components. The authentication components are mostly verbatim copies of the routines established in the **googlesheets** package (<https://github.com/jennybc/googlesheets>). We acknowledge and are grateful to these developers for their contributions to open source.

More Information
----------------

Google provides support for client libraries [here](https://developers.google.com/ad-manager/api/clients), but unfortunately, R is not a supported language. Google's client libraries directly reference the production WSDLs to interact with the API, but this package makes SOAP requests best formatted to match the WSDL standards. This articulation is not perfect and continued progress will be made to bring functionality up to par with the client libraries.

Most all operations supported by the DFP API are available via this package. It is strongly recommended that you use the [DFP API Reference](https://developers.google.com/ad-manager/api/rel_notes) when using this package. Details on formatting, attributes, and methods are all better explained by Google's documentation.

More information is also available on the `pkgdown` site at <https://StevenMMortimer.github.io/rdfp/>.

[Top](#rdfp)

------------------------------------------------------------------------

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
