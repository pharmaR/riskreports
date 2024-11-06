## ----setup, include = FALSE---------------------------------------------------
library(riskmetric)
library(dplyr)
library(tibble)

options(repos = "https://cran.rstudio.com")

knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.path = "man/figures/"
)

## ----echo = FALSE-------------------------------------------------------------
knitr::include_graphics("../man/figures/core-workflow.svg")

## ----eval = FALSE-------------------------------------------------------------
#  library(riskmetric)
#  riskmetric_pkg_ref <- pkg_ref("riskmetric")
#  print(riskmetric_pkg_ref)

## ----echo = FALSE, warning = FALSE--------------------------------------------
rver <- gsub("\\.\\d+$", "", paste0(R.version$major, ".", R.version$minor))
package <- pkg_ref("riskmetric")

# hack in order to mutate package environment directly so nobody accidentally
# publishes any personal info in their library path
invisible(riskmetric:::bare_env(package, {
  package$path <- sprintf(
    "/home/user/username/R/%s/Resources/library/riskmetric", 
    rver)
}))

package

## ----eval = FALSE-------------------------------------------------------------
#  riskmetric_export_help_metric <- assess_export_help(riskmetric_pkg_ref)
#  print(riskmetric_export_help_metric[1:5])

## ----echo = FALSE-------------------------------------------------------------
rver <- gsub("\\.\\d+$", "", paste0(R.version$major, ".", R.version$minor))
package <- pkg_ref("riskmetric")

riskmetric_export_help_metric <- assess_export_help(package)
print(riskmetric_export_help_metric[1:5])

# hack in order to mutate package environment directly so nobody accidentally
# publishes any personal info in their library path
invisible(riskmetric:::bare_env(package, {
  package$path <- sprintf(
    "/home/user/username/R/%s/Resources/library/riskmetric", 
    rver)
}))

## ----eval = FALSE-------------------------------------------------------------
#  riskmetric_pkg_ref

## ----echo = FALSE-------------------------------------------------------------
package

## ----eval = FALSE-------------------------------------------------------------
#  pkg_assess(riskmetric_pkg_ref)

## ----echo = FALSE-------------------------------------------------------------
pkg_assess(pkg_ref("riskmetric"))

## ----eval = FALSE-------------------------------------------------------------
#  pkg_assess(as_tibble(riskmetric_pkg_ref))

## ----echo = FALSE-------------------------------------------------------------
pkg_assess(as_tibble(pkg_ref("riskmetric")))

## -----------------------------------------------------------------------------
metric_score(riskmetric_export_help_metric)

## ----warning  = FALSE---------------------------------------------------------
pkg_score(pkg_assess(as_tibble(pkg_ref("riskmetric"))))

## -----------------------------------------------------------------------------
package_tbl <- pkg_ref(c("riskmetric", "utils", "tools")) %>%
  as_tibble()

## ----warning = FALSE----------------------------------------------------------
package_tbl %>%
  pkg_assess() %>%
  pkg_score()

## ----warning = FALSE----------------------------------------------------------
package_tbl %>%
  pkg_assess() %>%
  pkg_score() %>%
  summarize_scores()

