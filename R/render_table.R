#' Prepare subtable for metric based risk assessment main table
#'
#' @param riskmetric_assessment object coming from rismetric::pkg_assess function
#' @keywords internal
prepare_namespace_table <- function(riskmetric_assessment) {
  namespace_table <- riskmetric_assessment$export_help[sort(riskmetric_assessment$exported_namespace)] |>
  as.data.frame()
  colnames(namespace_table) <- "value"

  namespace_table |>
    reactable::reactable(
      columns = list(
        value = reactable::colDef(
          cell = function(value) {
            # Please to update icons search for unicodes here: https://icons.getbootstrap.com/
            if (value) {
              # Green checkmark
              htmltools::tags$i(class = "bi bi-check-square", style = "background-color: var(--bs-success); font-weight: bold;")
            } else {
              # Red cross
              htmltools::tags$i(class = "bi bi-x", style = "color: var(--bs-danger); font-weight: bold;")
            }
          },
          align = "center"
        )
      ),
      class = "metrics-table"
    )
}
