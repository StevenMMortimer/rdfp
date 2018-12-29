.onLoad <- function(libname, pkgname) {

  op <- options()
  op.rdfp <- list(
    rdfp.network_code = NULL,
    rdfp.application_name = "DFP API from R",
    rdfp.httr_oauth_cache = ".httr-oauth-rdfp",
    rdfp.version = 'v201811',
    rdfp.client_id = "1017468132430-k0h1fmcnqvuf3tt62si7c574sridq32b.apps.googleusercontent.com",
    rdfp.client_secret = "dzFYtzTPbkcF90GhUOqTgIM-",
    rdfp.webapp.client_id = "1017468132430-mtbatv3buou1tq4q6oj79tsb76l14c6c.apps.googleusercontent.com",
    rdfp.webapp.client_secret = "XL91ykYZWa4bVQdniBvJ4tvg",
    rdfp.webapp.redirect_uri = "http://127.0.0.1:1410"
  )
  toset <- !(names(op.rdfp) %in% names(op))
  if(any(toset)) options(op.rdfp[toset])

  invisible()
}