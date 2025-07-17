

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

#' Checks if it is a riskmetric error or not.
#'
#' Provide information whether the object metric is an error or not.
#' @param x An object
#' @returns A logical value: if it is not a riskmetric metric it returns `NA`, but normally `TRUE` or `FALSE`.
#'
#' @export
#' @examples
#' is_risk_error(1)
is_risk_error <- function(x) {
  x <- tryCatch(x, error = identity)
  if (is(x, "simpleError")) {
    FALSE
  } else if (inherits(x, "pkg_metric")) {
    inherits(x, "pkg_metric_error") || inherits(x, "error")
  } else {
    NA
  }
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

#' Replace 0 or FALSE by no in the summary table
#' @keywords internal
replace_zero_or_false_by_no <- function(value) {
  if (value == 0 || isFALSE(value)) {
    "No"
  } else {
    value
  }
}


simple_cap <- function(x) {
  s <- toupper(substr(x, 1, 1))
  paste0(s, substring(x, 2))
}

#' Summary table
#'
#' @param risk The output of `assessment()`.
#'
#' @returns A data.frame with the two columns one for the fields and one for the values.
#' @export
summary_table <- function(risk) {
  # excluded columns do not need to be analyzed by `is_logical`` to display information on the summary table
  # for example, has_examples could go to 1 and be transformed (wrongly) to "Yes"
  excluded_columns <- c("has_examples", "bug_status")
  for (column in setdiff(colnames(risk), excluded_columns)) {
    risk[,column] <- is_logical(risk[, column])
  }

  columns_to_add_no <- c("has_news", "has_vignettes", "has_website", "has_bug_reports_url", "news_current") |>
    intersect(colnames(risk))
  for (column in columns_to_add_no) risk[,column] <- replace_zero_or_false_by_no(risk[, column])


  if(is.numeric(risk$has_examples)) risk$has_examples <- sprintf("%.2f%%", risk$has_examples*100)
  if(is.numeric(risk$bugs_status)) risk$bugs_status <- sprintf("%.2f%% closed", risk$bugs_status*100)

  # We change to numeric because it is a list with different elements we only use the numeric value
  if(!is.null(risk$size_codebase)) risk$size_codebase <- as.numeric(risk$size_codebase)
  if (risk$has_vignettes > 0) {
    risk$has_vignettes <- "Yes"
  }
  transposed_risk <- t(risk)

  # Reorder by
  fields <- rownames(transposed_risk)
  important_fields <- c("has_news", "exported_namespace", "license", "has_vignettes", "export_help",
                        "has_website", "has_maintainer", "bugs_status", "size_codebase",
                        "has_bug_reports_url", "has_examples", "dependencies", "reverse_dependencies")
  # fields in report cards are duplicated and should be removed
  fields_in_cards <- c("downloads_1yr", "reverse_dependencies", "license")

  transposed_risk <- transposed_risk[c(intersect(important_fields, fields),
           setdiff(fields, important_fields)) |>
            setdiff(fields_in_cards), ,drop = FALSE]


  transformed_risk <- simple_cap(gsub("_", " ", rownames(transposed_risk), fixed = TRUE))
  summary_data <- as.data.frame(transposed_risk)
  summary_data <- cbind(Section = transformed_risk, Values = summary_data)
  colnames(summary_data) <- c("Section", "Values")
  rownames(summary_data) <- NULL
  summary_data
}
