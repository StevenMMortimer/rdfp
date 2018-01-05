library(testthat)
library(rdfp)

if (identical(tolower(Sys.getenv("NOT_CRAN")), "true") & 
    identical(tolower(Sys.getenv("TRAVIS_PULL_REQUEST")), "false")) {
  
  # split up tests to see if it helps memory issue on Travis-CI
  test_check("rdfp", filter = "^[A-K]")
  test_check("rdfp", filter = "^[L-Z]")
  
}
