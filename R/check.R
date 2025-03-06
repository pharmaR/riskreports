

#' Reports check results
#'
#' Experimental function to use the default log to create a report.
#'
#' @param path Path to check results folder (aka `pkgname.Rcheck`).
#'
#' @return A base report
#' @export
#' @seealso [tools::check_packages_in_dir()]
#' @examples
#' # Requires the package to be installed (or be in inst/ folder)
#' # check_reporter("checks/riskmetric.Rcheck")
#'
check_reporter <- function(path){
  log <- file.path(path, "00check.log")
  lines <- readLines(log)
}


#' Export environmental variables
#'
#' @param show Character vector of environmental variables to show.
#' @param exclude Character vector of environmental variables to hide.
#'
#' @return A character vector with environmental variables.
#' @export
#'
#' @examples
#' environ_report()
environ_report <- function(show = NULL, exclude = NULL) {
  environ <- Sys.getenv()

  keep_names <- include_exclude_from(names(environ), show, exclude)

  if (length(keep_names) == 0) {
    return(NULL)
  }

  environ[keep_names]
}

#' Export options
#'
#' @param show Character vector of options to show.
#' @param exclude Character vector of options variables to hide.
#'
#' @return A list with the options
#' @export
#'
#' @examples
#' options_report()
options_report <- function(show = NULL, exclude = NULL) {
  options <- options()

  keep_names <- include_exclude_from(names(options), show, exclude)

  if (length(keep_names) == 0) {
    return(NULL)
  }
  fill_in(options, keep_names)
}

check_summary <- function(path) {
  out <- tools::check_packages_in_dir_details(path)
  summary(out)
}

check_packages <- function(path) {

  check_packages_in_dir_details(path)

}
