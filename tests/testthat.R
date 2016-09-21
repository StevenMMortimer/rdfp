library(testthat)
library(rdfp)

if (identical(tolower(Sys.getenv("NOT_CRAN")), "true") & identical(tolower(Sys.getenv("TRAVIS_PULL_REQUEST")), "false")) {
  
  devtools::test()
  
}
