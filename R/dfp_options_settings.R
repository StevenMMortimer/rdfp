.onLoad <- function(libname, pkgname) {

  op <- options()
  op.rdfp <- list(
    ## httr_oauth_cache can be a path, but I'm only really thinking about and
    ## supporting the simpler TRUE/FALSE usage, i.e. assuming that .httr-oauth
    ## will live in current working directory if it exists at all
    ## htt_oauth will be cached in the current dire3ctory
    rdfp.httr_oauth_cache = TRUE,
    rdfp.network_code = NULL,
    rdfp.application_name = NULL,
    rdfp.client_id = NULL,
    rdfp.client_secret = NULL
  )
  toset <- !(names(op.rdfp) %in% names(op))
  if(any(toset)) options(op.rdfp[toset])

  invisible()

}
