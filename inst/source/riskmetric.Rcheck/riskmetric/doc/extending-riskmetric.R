## ----setup, include = FALSE---------------------------------------------------
library(riskmetric)
library(dplyr)

knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

options(repos = "https://cran.rstudio.com")

print_riskmetric_function <- function(names) {
  for (name in names) {
    fprint <- capture.output(getNamespace("riskmetric")[[name]])
    fprint <- fprint[!startsWith(fprint, "<")]
    cat(name, ' <- ', sep = '')
    cat(paste(fprint, collapse = '\n'), '\n\n')
  }
}

## ----echo = FALSE-------------------------------------------------------------
print_riskmetric_function(c("assess_has_news", "assess_has_news.pkg_install"))

## ----results = 'hide'---------------------------------------------------------
assess_name_first_letter <- function(x, ...) {
  UseMethod("assess_name_first_letter")
}
attr(assess_name_first_letter, "column_name") <- "name_first_letter"

assess_name_first_letter.pkg_ref <- function(x, ...) {
  pkg_metric(substr(x$name, 0, 1), class = "pkg_metric_name_first_letter")
} 

## ----echo = FALSE-------------------------------------------------------------
print_riskmetric_function(c("pkg_ref_cache.description", "pkg_ref_cache.description.pkg_install"))

## ----eval = FALSE-------------------------------------------------------------
#  library(riskmetric)
#  package <- pkg_ref("riskmetric")

## ----echo = FALSE-------------------------------------------------------------
package_real <- pkg_ref("riskmetric")

## ----echo = FALSE-------------------------------------------------------------
rver <- gsub("\\.\\d+$", "", paste0(R.version$major, ".", R.version$minor))
package <- pkg_ref("riskmetric")

# hack in order to mutate package environment directly so nobody accidentally
# publishes any personal info in their library path
invisible(riskmetric:::bare_env(package, {
  package$path <- sprintf("/home/user/username/R/%s/Resources/library/riskmetric", rver)
}))

package

## ----eval = FALSE-------------------------------------------------------------
#  package$description

## -----------------------------------------------------------------------------
pkg_ref_cache.name_first_letter <- function(x, name, ...) {
  substr(x$name, 0, 1)
}

## -----------------------------------------------------------------------------
assess_name_first_letter.pkg_ref <- function(x, ...) {
  pkg_metric(x$name_first_letter, class = "pkg_metric_name_first_letter")
} 

## -----------------------------------------------------------------------------
package$name
package$name_first_letter

## -----------------------------------------------------------------------------
metric_score.pkg_metric_name_first_letter <- function(x, ...) {
  as.numeric(x == "r")
}

## -----------------------------------------------------------------------------
library(dplyr)
pkg_ref(c("riskmetric", "utils", "tools")) %>%
  as_tibble() %>%
  pkg_assess(c(all_assessments(), assess_name_first_letter))

## ----warning = FALSE----------------------------------------------------------
pkg_ref(c("riskmetric", "utils", "tools")) %>%
  as_tibble() %>%
  pkg_assess(c(all_assessments(), assess_name_first_letter)) %>%
  pkg_score()

## ----warning = FALSE----------------------------------------------------------
pkg_ref(c("riskmetric", "utils", "tools")) %>%
  as_tibble() %>%
  pkg_assess(c(all_assessments(), assess_name_first_letter)) %>%
  pkg_score(weights = c(has_news = 1, name_first_letter = 1))

