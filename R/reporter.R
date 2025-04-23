#' Reports about a package
#'
#' @param package_name Package name.
#' @param package_version Package version number.
#' @param package Path where to find a package source to retrieve name and version number.
#' @param template_path Path to a custom quarto template file
#' @param output_format Output format for the report. Default is "all".
#' @param params A list of execute parameters passed to the template
#' @param ... Additional arguments passed to `quarto::quarto_render()`
#'
#' @return A path to the reports generated, called by its side effects.
#' @details Please include source as part of `params` content. Source is returned after
#' calling function `riskmetric::pkg_ref` before the risk assessment is executed
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
    template_path = system.file("report/package", package = "riskreports"),
    output_format = "all",
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
    output_file <- paste0("validation_report_", full_name, ".qmd")

    params$package_name <- package_name
    params$package_version <- package_version
    params$image <- get_image_name(params)

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

    if (is.null(params$source)) warning("Please provide the source of the package assessment")

    # https://github.com/quarto-dev/quarto-r/issues/81#issuecomment-1375691267
    # quarto rendering happens in the same place as the file/project
    # To avoid issues copy to a different place and render there.
    render_dir <- output_dir()
    files_to_copy <- list.files(template_path)
    fc <- file.copy(from = file.path(template_path, files_to_copy),
                    to = render_dir,
                    overwrite = TRUE,
                    copy.date = TRUE)

    if (any(!fc)) {
      stop("Copying to the rendering directory failed.")
    }

    template_all_files <- file.path(render_dir, files_to_copy)
    template <- template_all_files[endsWith(template_all_files, "qmd")]

    if (length(template) > 1) {
      stop("There are more than one template!\n",
           "Please have only one quarto file on the directory.")
    }

    prefix_output <- file.path(render_dir, paste0("validation_report_", full_name, ".qmd"))
    file.rename(template, prefix_output)

    # replace the title of the place header by the package name and header
    top_page_file <- readLines(file.path(render_dir, "top-page.html"))
    title_line <- grep("<p", top_page_file)
    top_page_file[title_line] <- htmltools::p(paste0("Validation Report - ", package_name, "@", package_version)) |>
      as.character()
    writeLines(top_page_file, file.path(render_dir, "top-page.html"))

    pre_rendering <- list.files(render_dir, full.names = TRUE)

    suppressMessages({suppressWarnings({
      out <- quarto::quarto_render(
        input = prefix_output,
        output_format = output_format,
        execute_params = params,
        ...
      )
    })})

    files_to_remove <- replace(
      template_all_files,
      which(template_all_files == template),
      prefix_output
    )

    fr <- file.remove(files_to_remove)
    if (any(!fr)) {
      warning("Failed to remove the quarto template used from the directory.")
    }

    post_rendering <- list.files(render_dir, full.names = TRUE)
    output_files <- setdiff(post_rendering, pre_rendering)
    invisible(output_files)
}

is.empty <- function(x) {
  is.null(x) || is.na(x) || !nzchar(x)
}
