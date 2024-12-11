#' Reports about a package
#'
#' @param x Package name or path
#' @param template_path Path to a custom quarto template file
#' @param params A list of execute parameters passed to the template
#' @param ... Additional arguments passed to `quarto::quarto_render()`
#'
#' @return A report
#' @examples
#' package_report(
#'   x = "inst/source/dplyr",
#'   template_path = "inst/report/pkg_template.qmd",
#'   params = list(
#'     package = "dplyr",
#'     image = "rhub/ref-image",
#'     assessment_path = "./inst/assessments/dplyr.rds"
#'   )
#' )
#'
#' @export
package_report <- function(
    x,
    template_path = NULL,
    params = list(),
    ...
) {

    package <- basename(x)
    desc <- read.dcf(file.path(x, "DESCRIPTION"))

    stopifnot("Mismatch between path and DESCRIPTION name" = package == desc[, "Package"])

    full_name <- paste0(package, "_v", desc[, "Version"])
    output_file <- paste0("validation_report_", full_name,".html")

    Sys.setenv("INPUT_REPORT_PKG_DIR" = x)

    if (is.null(template_path)) {
        template_path <- system.file("report/pkg_template.qmd",
                                     package = "riskreports")
    }
    # Bug on https://github.com/quarto-dev/quarto-cli/issues/5765
    suppressMessages({suppressWarnings({
      out <- quarto::quarto_render(
        template_path,
        output_format = "html",
        execute_params = params,
        ...
      )
    })})

    # Move reports after creation (work around issue https://github.com/quarto-dev/quarto-cli/issues/5765)
    lf <- list.files(dirname(template_path), full.names = TRUE)
    files_template <- lf[!dir.exists(lf)]
    file_name <- tools::file_path_sans_ext(basename(template_path))
    files_template <- files_template[startsWith(basename(files_template),
                                                file_name)]
    files_template <- files_template[!endsWith(files_template, ".qmd")]
    output_file = paste0("validation_report_", full_name,
                         ".", tools::file_ext(files_template))
    file.rename(files_template, output_file)
    invisible(output_file)
}
