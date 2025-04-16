# ' Create a info card for the report
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
          create_info_card(title = length(assessment_info$reverse_dependencies), header = "Reverse Dependencies", extra_class = "left-card"),
          create_info_card(title = assessment_info$license, header = "License", text = ">=2", extra_class = "right-card")
        )
      ),
      create_info_card(title = "To be determined", header = "Origin", extra_class = "bottom-card")
  )
}
