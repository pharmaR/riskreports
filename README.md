
<!-- README.md is generated from README.Rmd. Please edit that file -->

# riskreports <a href="https://pharmar.github.io/riskreports/"><img src="man/figures/logo.svg" align="right" height="139" alt="riskreports website" /></a>

<!-- badges: start -->

[![Codecov test
coverage](https://codecov.io/gh/pharmaR/riskreports/graph/badge.svg)](https://app.codecov.io/gh/pharmaR/riskreports)
[![R-CMD-check](https://github.com/pharmaR/riskreports/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/pharmaR/riskreports/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of riskreports is to documents results of package checks for
validation.

## Installation

You can install the development version of riskreports from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("pharmaR/riskreports")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
unlink("pkgdown/assets/*")
```

``` r
library(riskreports)
# Specify the folder where the files should go (here for easy access on the website)
options("riskreports_output_dir" = "pkgdown/assets")
pr <- package_report(
  package_name = "dplyr",
  package_version = "1.1.4",
  params = list(
    assessment_path = system.file("assessments/dplyr.rds", package = "riskreports")),
  quiet = TRUE # To silence quarto output for readability
)
pr
#> [1] "pkgdown/assets/validation_report_dplyr_v1.1.4.html"
#> [2] "pkgdown/assets/validation_report_dplyr_v1.1.4.md"
```

We first selected were reports should go. Then we used
[{riskmetric}](https://cran.r-project.org/package=riskmetric) data to
generate the report for the package.

Then we can access those files on the website:

- [HTML](https://pharmar.github.io/riskreports/validation_report_dplyr_v1.1.4.html)
- [markdown](https://pharmar.github.io/riskreports/validation_report_dplyr_v1.1.4.md)
