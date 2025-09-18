#' analyze license output from risk assessment to display in cards
#'
#' @param assessment object returning from riskmetric assessment, it can also be data.frame from riskreports::assessment
#' @return list with main card license string and footer if available
#' @details The function analyzes if the license is standard. If it is standard, then it will see if there is available
#' information for the footer. The footer information is only the multiple version number for the moment.
#' @keywords internal
#' @importFrom utils getFromNamespace
extract_license <- function(assessment) {
  license_output <- list(main = as.character(assessment$license))
  # We use the internal version so that we can use old R versions analyze_license
  if (getRversion() < "4.4.0") {
    analyze_license <- utils::getFromNamespace("tools", "analyze_license") # nolint
  } else {
    analyze_license <- tools::analyze_license
  }
  license_analysis <- analyze_license(license_output$main)

  if (isTRUE(license_analysis$is_standardizable)) {
    license_output$main <- sub("\\(.+\\)", "", license_analysis$components[1])
    if (grepl("\\(.+\\)",license_analysis$components[1])) {
    license_output$footer <- sub("^.+\\((.+)\\)", "\\1", license_analysis$components[1])
    }

    if (length(license_analysis$components) > 1) {
      license_output$footer <- paste(
        c(license_output$footer,
          license_analysis$components[seq(2, length(license_analysis$components))])
        , collapse = "|")
    }
  }
  license_output
}

#' Create a info card for the report
#'
#' @importFrom htmltools div
#' @param title text to include in the card title
#' @param header text or html content to be included in the card header
#' @param text content to be included as class card text
#' @param extra_class whether to add additional class for the card div in order to modify style
#' @details check https://getbootstrap.com/docs/5.0/components/card/ for class names and card content
#' To style the card, assign a custom class and style the card within the quarto theme
#' @keywords internal
create_info_card <- function(title, header = NULL, text = NULL, extra_class = NULL) {
  header_div <- if (!is.null(header)) div(header, class = "card-header") else header
  text_div <- if (!is.null(text)) div(text, class = "card-text") else text
  div(
    class = paste("card", extra_class),
    header_div,
    htmltools::h3(title, class = "card-title"),
    text_div
    )
}

create_metrics_cards <- function(assessment_info) {
  license_card_values <- extract_license(assessment_info)
  div(
    class = "info-card",
      div(
        class = "top-card",
          create_info_card(
            title = assessment_info$downloads_1yr,
            # check for icon shapes here: https://icons.getbootstrap.com/
            header = htmltools::tagList(htmltools::tags$i(class = "bi bi-download"), htmltools::p("1 year")),
            text = "Downloads",
            extra_class = "top-left-card"
          ),
        div(
          class = "top-right-card",
          create_info_card(title = assessment_info$reverse_dependencies, header = "Reverse Dependencies", extra_class = "left-card"),
          create_info_card(title = license_card_values$main, header = "License", text = license_card_values$footer, extra_class = "right-card")
        )
      ),
      create_info_card(title = assessment_info$origin, header = "Origin", extra_class = "bottom-card")
  )
}

#' Return the Docker Image name to be printed on the report
#'
#' @keywords internal
get_image_name <- function(params) {
  default_image <- "rhub/ref-image"
  image <- Sys.getenv("DOCKER_IMAGE", unset = NA)

  if (is_empty(image) && !is_empty(params$image)) {
    image <- params$image
  } else if (is_empty(image)) image <- default_image
  image
}
