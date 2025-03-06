

#' Create a
#'
#' Vectorize assessment to be able to add it to a report for a package or the PACKAGES file.
#'
#' @param assessment An object created by `pkg_assess()` (`list_of_pkg_metric`)
#' @return A data.frame with simplified objects but no scoring of the assessment.
#' @export
#'
assessment <- function(assessment) {
  stopifnot("Input is not from riskmetric::pkg_assess()"= is(assessment, "list_of_pkg_metric"))

  len <- lengths(assessment)

  out <- as.list(assessment)

  covr_coverage <- out[["covr_coverage"]]
  if (length(covr_coverage) > 1) {
    covr_coverage <- covr_coverage[["totalcoverage"]]
  }

  out[["covr_coverage"]] <- covr_coverage
  out[["exported_namespace"]] <- risk_error(out[["exported_namespace"]], length(assessment[["exported_namespace"]]))
  out[["export_help"]] <- risk_error(out[["export_help"]], length(assessment[["export_help"]]))
  out[["has_website"]] <- risk_error(out[["has_website"]], as.logical(length(assessment[["has_website"]])))
  out[["bugs_status"]] <- risk_error(out[["bugs_status"]], sum(assessment[["bugs_status"]])/length(assessment[["bugs_status"]]))
  out[["reverse_dependencies"]] <- risk_error(out[["reverse_dependencies"]], length(assessment[["reverse_dependencies"]]))
  out[["has_examples"]] <- risk_error(out[["has_examples"]], sum(assessment[["has_examples"]])/length(assessment[["has_examples"]]))
  out[["dependencies"]] <- risk_error(out[["dependencies"]], nrow(assessment[["dependencies"]]))
  l <- lengths(out)

  if (any(l) > 1) {
    out[l > 1] <- lapply(l[l > 1], risk_error)
  }

  if (any(lengths(out)>0)) {
    big <- names(out)[lengths(out)>0]
    warning(paste(big, collapse = ", "), ": cannot be summarized yet")
    out <- out[lengths(out) == 1]
  }
  # browser()
  list2DF(out)
}

risk_error <- function(output, y) {
  if (is.null(output)) {
    return(NULL)
  }
  if (is(output, "pkg_metric_error")) {
    return(output$message)
  }
  y
}

is_logical <- function(x) {
  if (x == 1 || isTRUE(x)) {
    "Yes"
  } else {
    x
  }
}

simple_cap <- function(x) {
  s <- toupper(substr(x, 1, 1))
  paste0(s, substring(x, 2))
}

#' Summary talbe
#'
#' @param risk The output of `assessment()`.
#'
#' @returns A data.frame with the two columns one for the fields and one for the values.
#' @export
summary_table <- function(risk) {
  y <- risk
  y[] <- lapply(y, is_logical)
  y$has_examples <- sprintf("%.2f%%", y$has_examples*100)
  y$bugs_status <- sprintf("%.2f%%", y$bugs_status*100)
  if (y$has_vignettes > 0) {
    y$has_vignettes <- "Yes"
  }
  x <- t(y)
  yx <- simple_cap(gsub("_", " ", rownames(x), fixed = TRUE))
  df <- as.data.frame(x)
  df <- cbind(Section = yx, Values = df)
  colnames(df) <- c("Section", "Values")
  rownames(df) <- NULL
  df
}
