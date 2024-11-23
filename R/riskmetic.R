

#' Create a
#'
#' Vectorize assessment to be able to add it to a report for a package or the PACKAGES file.
#'
#' @param assessment An object created by `pkg_assess()` (`list_of_pkg_metric`)
#' @return
#' @export
#'
#' @examples
assessment <- function(assessment) {
  stopifnot("Input is not from riskmetric::pkg_assess()"= is(assessment, "list_of_pkg_metric"))

  len <- lengths(assessment)

  out <- as.list(assessment)

  out[["exported_namespace"]] <- length(assessment[["exported_namespace"]])
  out[["export_help"]] <- length(assessment[["export_help"]])
  out[["has_website"]] <- as.logical(length(assessment[["has_website"]]))
  out[["bugs_status"]] <- sum(assessment[["bugs_status"]])/length(assessment[["bugs_status"]])
  out[["reverse_dependencies"]] <- length(assessment[["reverse_dependencies"]])
  out[["has_examples"]] <- sum(assessment[["has_examples"]])/length(assessment[["has_examples"]])
  out[["dependencies"]] <- nrow(assessment[["dependencies"]])

  # TODO: Deal with errors on calls.
  # browser()
  list2DF(out)
}
