#' Reports about a package
#'
#' @param package_name Package name.
#' @param package_version Package version number.
#' @param package Path where to find a package source to retrieve name and version number.
#' @param template_path Path to a custom quarto template file
#' @param params A list of execute parameters passed to the template
#' @param ... Additional arguments passed to `quarto::quarto_render()`
#'
#' @return A path to the reports generated, called by its side effects.
#' @export
#' @examples
#' pr <- package_report(
#'   package_name = "dplyr",
#'   package_version = "1.1.4",
#'   params = list(
#'     assessment_path = system.file("assessments/dplyr.rds", package = "riskreports"),
#'     image = "rhub/ref-image")
#' )
#' pr
#' file.remove(pr)
package_report <- function(
    package_name,
    package_version,
    package = NULL,
    template_path = system.file("report/pkg_template.qmd", package = "riskreports"),
    params = list(),
    ...
) {
    empty_pkg_info <- is.empty(package_name) && is.empty(package_version)
    if (empty_pkg_info && !is.empty(package)) {
      package_name <- basename(package)
      desc <- read.dcf(file.path(package, "DESCRIPTION"))

      stopifnot("Mismatch between path and DESCRIPTION name" = package_name == desc[, "Package"])
      package_version <- desc[, "Version"]
      params$package <- package
      Sys.setenv("INPUT_REPORT_PKG_DIR" = package)
    } else if (empty_pkg_info && is.empty(package)) {
      stop("Package information missing for the report")
    } else {
      params$package <- package_name
    }

    full_name <- paste0(package_name, "_v", package_version)
    output_file <- paste0("validation_report_", full_name,".html")

    params$package_name <- package_name
    params$package_version <- package_version


    if (is.null(template_path)) {
        template_path <- system.file("report/pkg_template.qmd",
                                     package = "riskreports")
    }

    params$package <- normalizePath(params$package, mustWork = FALSE)
    if (!is.null(params$assessment_path)) {
      params$assessment_path <- normalizePath(params$assessment_path, mustWork = TRUE)
    }
    # Bug on https://github.com/quarto-dev/quarto-cli/issues/5765

    v <- quarto::quarto_version()
    if (v < package_version("1.7.13")) {
      warning("Please install the latest (devel) version of Quarto")
    }

    prefix_output <- paste0("validation_report_", full_name)

    suppressMessages(suppressWarnings(
      quarto::quarto_render(
        input = template_path,
        output_format = "all",
        execute_params = params,
        ...
      )
    ))

    output_filepath <- gsub("\\.qmd$", ".html", template_path)
    named_report_path <- file.path(
      dirname(output_filepath),
      paste0(prefix_output, ".html")
    )
    file.rename(output_filepath, named_report_path)
    invisible(named_report_path)
}

is.empty <- function(x) {
  is.null(x) || is.na(x) || !nzchar(x)
}
