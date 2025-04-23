include_exclude_from <- function(from, include = NULL, exclude = NULL) {
  if (!is.null(include) && !is.null(exclude)) {
    names <- setdiff(include, exclude)
  } else if (is.null(exclude) && !is.null(include)) {
    names <- include
  } else if (is.null(exclude) && is.null(include)) {
    names <- from
  } else if (is.null(include) && !is.null(exclude)) {
    names <- setdiff(from, exclude)
  }
  names
}


fill_in <- function(list, names) {
  missing_names <- setdiff(names(list), names)
  list[missing_names] <- NA
  list
}


output_dir <- function() {
  opt <- getOption("riskreports_output_dir", default = NULL)
  env <- Sys.getenv("RISKREPORTS_OUTPUT_DIR", unset = getwd())

  opt %||% env
}

rendering_dir <- function() {
  opt <- getOption("riskreports_rendering_dir", default = NULL)
  env <- Sys.getenv("RISKREPORTS_RENDERING_DIR", unset = tempdir())

  opt %||% env
}

  is_empty <- function(x) {
    is.null(x) || is.na(x) || !nzchar(x)
  }

#' Return string to display Origin depending on source of the assessment
#' 
#' @param source return value of function `pkg_ref`
#' @returns depending on source transformed string for the origin
#' @keywords internal
#' @details Please check `riskmetric::pkg_ref_class_hierarchy` and `riskmetric::pkg_ref` code
#' to see the allowed values and structure
get_pkg_origin <- function(source) {
  source_values <- unlist(riskmetric:::pkg_ref_class_hierarchy)
  report_source_values <- c("Missing Origin", "Source Package", "Internal Package", "CRAN", "Bioconductor", "Github")
  names(report_source_values) <- source_values
  report_source_values[source]
}
