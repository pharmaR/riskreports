#' Reports about a package
#'
#' @param x Package name or path
#' @param template_path Path to a custom quarto template file
#' @param params A list of execute parameters passed to the template
#'
#' @return A report
#' @examples
#' package_report(
#'   x = "inst/source/dplyr",
#'   template_path = "inst/report/template.qmd",
#'   params = list(
#'     repo = "inst/repos/ubuntu-22.04/4.4",
#'     package = "dplyr",
#'     image = "rhub/ref-image",
#'     assessment_path = "inst/assessments/dplyr.rds",
#'   )
#' )
#'
#' 
#' @export
package_report <- function(
    x,
    template_path = NULL,
    params = list()
) {
    package <- basename(x)
    desc <- read.dcf(file.path(x, "DESCRIPTION"))
    
    stopifnot("Mismatch between path and DESCRIPTION name" = package == desc[, "Package"])

    full_name <- paste0(package, "_v", desc[, "Version"])
    output_file <- paste0("validation_report_", full_name,".html")

    Sys.setenv("INPUT_REPORT_PKG_DIR" = x)

    if (is.null(template_path)) {
        template_path <- system.file("report/template.qmd", package = "riskreports")
    }

    quarto::quarto_render(
        template_path, 
        output_format = "html",
        output_file = paste0("validation_report_", full_name,".html"),
        execute_params = params,
        ...
    )

    output_file
}
