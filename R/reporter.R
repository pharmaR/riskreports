#' Reports about a package
#'
#' @param x Package name or path
#'
#' @return A report
#' @examples
#' package_report("inst/source/dplyr_1.1.4/dplyr")
#'
#' 
#' @export
package_report <- function(x){
    package <- basename(x)
    desc <- read.dcf(file.path(x, "DESCRIPTION"))
    
    stopifnot("Mismatch between path and DESCRIPTION name" = package == desc[, "Package"])
    full_name <- paste0(package, "_v", desc[, "Version"])
    Sys.setenv("INPUT_REPORT_PKG_DIR" = x)
    template_path <- system.file("report/template.qmd", package = "riskreports")
    quarto::quarto_render(template_path, 
                          output_format = "html",
                          output_file = paste0("validation_report_", full_name,".html"))
}

#' @param package_name Name of the package
#' @param package_version Version of the package
#' @param ... Not used - named arguments separator
#' @param repository Repository where the package is stored
#' @param docker_image Docker image used to validate the package
#' @param assessment_path Path to the assessment file (produced by another script)
#' @export
package_report_gh_action <- function(
    package_name,
    package_version,
    ...,
    repository,
    docker_image,
    assessment_path
) {
    full_name <- paste0(package_name, "_v", package_version)
    template_path <- system.file("report/template.qmd", package = "riskreports")
    quarto::quarto_render(
        template_path, 
        output_format = "html",
        output_file = paste0("validation_report_", full_name,".html"),
        execute_params = list(
            repo = repository,
            package = package_name,
            image = docker_image,
            assessment_path = assessment_path
        )
    )
}
