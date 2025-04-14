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
  stopifnot(is.character(title))
  header_div <- if (!is.null(header)) div(header, class = "card-header") else header
  text_div <- if (!is.null(text)) div(text, class = "card-text") else text
  div(
    class = paste("card", extra_class),
    header_div,
    htmltools::h5(title, class = "card-title"),
    text_div
    )
}
