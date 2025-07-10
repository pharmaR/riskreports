#' Reports about a package
#'
#' @param package_name Package name.
#' @param package_version Package version number.
#' @param package Path where to find a package source to retrieve name and version number.
#' @param template_path Path to a custom quarto template file.
#' @param output_format Output format for the report. Default is "all".
#' @param params A list of execute parameters passed to the template.
#' @param logo_path Path to a custom logo image file for light mode (e.g., PNG, JPG). Defaults to "r_validation_logo.png".
#' @param logo_path_dark Path to a custom logo image file for dark mode (e.g., PNG, JPG). Defaults to the value of `logo_path` if not specified.
#' @param r_validation_logo_path Path to the R Validation Hub logo image file to display at the bottom of the report. Defaults to "r_validation_logo.png".
#' @param primary_color Hex color code for primary styling (e.g., links, headers). Defaults to "#007BFF" (blue). Currently not applied; reserved for future customization.
#' @param secondary_color Hex color code for secondary styling (e.g., backgrounds, borders). Defaults to "#2A424E" (dark gray). Currently not applied; reserved for future customization.
#' @param ... Additional arguments passed to `quarto::quarto_render()`.
#'
#' @return A path to the reports generated, called by its side effects.
#' @details Please include source as part of `params` content. Source is returned after
#' calling function `riskmetric::pkg_ref` before the risk assessment is executed.
#' The `logo_path` and `logo_path_dark` allow customization of the report's logo for light and dark modes.
#' The `r_validation_logo_path` allows adding the R Validation Hub logo at the bottom of the report.
#' The `primary_color` and `secondary_color` arguments are placeholders for future branding customization
#' and are not currently applied. See the function code for a placeholder to add custom CSS or SCSS styling.
#' @export
#' @examples
#' pr <- package_report(
#'   package_name = "dplyr",
#'   package_version = "1.1.4",
#'   params = list(
#'     assessment_path = system.file("assessments/dplyr.rds", package = "riskreports"),
#'     image = "rhub/ref-image"
#'   ),
#'   logo_path = "r_validation_logo.png",
#'   logo_path_dark = "r_validation_logo.png",
#'   r_validation_logo_path = "path/to/r_validation_logo.png",
#'   primary_color = "#4697D2",
#'   secondary_color = "#E8F7F7"
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
    logo_path = "r_validation_logo.png",
    logo_path_dark = logo_path,
    r_validation_logo_path = "r_validation_logo.png",
    primary_color = "#007BFF",
    secondary_color = "#2A424E",
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
  params$logo_path <- logo_path
  params$logo_path_dark <- logo_path_dark
  params$r_validation_logo_path <- r_validation_logo_path
  params$primary_color <- primary_color
  params$secondary_color <- secondary_color
  # Removed params$output_format to avoid error if not declared in YAML
  
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
  
  # Remove custom_color.css from rendering directory if it exists to prevent errors
  custom_css_path <- file.path(render_dir, "custom_color.css")
  if (file.exists(custom_css_path)) {
    file.remove(custom_css_path)
    message("Removed custom_color.css from rendering directory to prevent rendering errors.")
  }
  
  # Copy logo files to rendering directory to ensure accessibility
  logo_light_dest <- file.path(render_dir, "logo_light.png")
  logo_dark_dest <- file.path(render_dir, "logo_dark.png")
  r_validation_logo_dest <- file.path(render_dir, "r_validation_logo.png")
  logo_to_remove <- c()
  if (file.exists(logo_path)) {
    file.copy(logo_path, logo_light_dest, overwrite = TRUE)
    if(logo_path != logo_light_dest) {
      logo_to_remove <- c(logo_to_remove, logo_light_dest)
    }
    message("Copied light mode logo to rendering directory.")
  }else{
    message("Either your logo_path specification is wrong or your light mode logo already exists in rendering directory.")
  }
  
  if (file.exists(logo_path_dark) && logo_path_dark != logo_path && (normalizePath(logo_path_dark) != normalizePath(logo_dark_dest))) {
    file.copy(logo_path_dark, logo_dark_dest, overwrite = TRUE)
    if(logo_path_dark != logo_dark_dest) {
      logo_to_remove <- c(logo_to_remove, logo_dark_dest)
    }
    message("Copied dark mode logo to rendering directory.")
  }else{
    message("Dark mode logo already exists in rendering directory.")
  }
  if (file.exists(r_validation_logo_path)) {
    file.copy(r_validation_logo_path, r_validation_logo_dest, overwrite = TRUE)
    message("Copied R Validation Hub logo to rendering directory.")
  }
  
  # Replace the title and logo in top_page.html
  top_page_file <- readLines(file.path(render_dir, "top_page.html"))
  title_line <- grep("<p", top_page_file)
  top_page_file[title_line] <- htmltools::p(class="title",
                                            paste0("Validation Report - ", package_name, "@", package_version)) |>
    as.character()
  top_page_file <- gsub("LOGO_LIGHT_PLACEHOLDER", basename(params$logo_path), top_page_file)
  top_page_file <- gsub("LOGO_DARK_PLACEHOLDER", basename(params$logo_path_dark), top_page_file)
  # Placeholder for custom CSS or SCSS styling
  # Note: Add custom styling here in the future. Options include:
  # - Inline CSS by appending a <style> block to top_page_file with custom styles using params$primary_color and params$secondary_color.
  # - Creating a separate custom CSS file in render_dir and ensuring it's referenced in the Quarto template YAML under format:html:include-in-header.
  # - Dynamically updating SCSS files like custom.scss or custom_light.scss with color variables before rendering, if supported by the build process.
  # Minimal CSS for dual-logo visibility in light and dark modes:
  custom_style <- c(
    "<style>",
    "  /* Dual-logo styling for light and dark modes */",
    "  .logo-container { position: relative; display: inline-block; }",
    "  .logo-light { display: block !important; }",
    "  .logo-dark { display: none !important; }",
    "  /* System preference for dark mode */",
    "  @media (prefers-color-scheme: dark) {",
    "    .logo-light { display: none !important; }",
    "    .logo-dark { display: block !important; }",
    "  }",
    "  /* Quarto manual theme switcher support - high specificity */",
    "  body.quarto-dark .logo-container .logo-light {",
    "    display: none !important;",
    "  }",
    "  body.quarto-dark .logo-container .logo-dark {",
    "    display: block !important;",
    "  }",
    "  /* Additional Quarto theme attribute variations */",
    "  html[data-bs-theme=\"dark\"] .logo-container .logo-light {",
    "    display: none !important;",
    "  }",
    "  html[data-bs-theme=\"dark\"] .logo-container .logo-dark {",
    "    display: block !important;",
    "  }",
    "  html[data-theme=\"dark\"] .logo-container .logo-light {",
    "    display: none !important;",
    "  }",
    "  html[data-theme=\"dark\"] .logo-container .logo-dark {",
    "    display: block !important;",
    "  }",
    "  /* Fallback for custom dark mode class on body or html */",
    "  body.dark .logo-container .logo-light, html.dark .logo-container .logo-light,",
    "  body.dark-mode .logo-container .logo-light, html.dark-mode .logo-container .logo-light {",
    "    display: none !important;",
    "  }",
    "  body.dark .logo-container .logo-dark, html.dark .logo-container .logo-dark,",
    "  body.dark-mode .logo-container .logo-dark, html.dark-mode .logo-container .logo-dark {",
    "    display: block !important;",
    "  }",
    "</style>"
  )
  top_page_file <- c(top_page_file, custom_style)
  writeLines(top_page_file, file.path(render_dir, "top_page.html"))
  ##browser()
  ## Dynamically write the footer.html. Not necessary in most cases.
  # Create footer.html for R Validation Hub logo and text at the bottom (for HTML output)
  # footer_content <- c(
  #   '<div class="report-footer" style="text-align: center; margin-top: 2em; padding: 1em; font-size: 0.9em; color: #666;">',
  #   '  <p>Generated by R-Validation Hub workflow</p>',
  #   paste0('  <img src="r_validation_logo.png" alt="R Validation Hub Logo" style="width: 100px; margin-top: 0.5em;">'),
  #   '</div>'
  # )
  # writeLines(footer_content, file.path(render_dir, "footer.html"))
  
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
  
  fr <- file.remove(c(files_to_remove,logo_to_remove))
  if (any(!fr)) {
    warning("Failed to remove the quarto template used from the directory.")
  }
  
  post_rendering <- list.files(render_dir, full.names = TRUE)
  output_files <- setdiff(post_rendering, pre_rendering)
  invisible(output_files)
}

