# riskmetric_scores

``` r
library(riskreports)
library("riskmetric")
```

We generate the assessment with riskmetric and we load it as part of the
report:

``` r
dplyr_assessment <- readRDS("assessments/dplyr.rds")
```

Then we can start working on the assessment. This is not a
quantification of a risk like
[`riskmetric::pkg_score()`](https://pharmar.github.io/riskmetric/reference/pkg_score.html)
but some minor conversion to a value of length 1, one character or one
numeric value.

``` r
list.files("assessments", full.names = TRUE)
#> character(0)
knitr::knit_exit()
# riskmetric_a <- assessment(riskmetric_assessment)
# dplyr_a <- assessment(dplyr_assessment)

# dplyr_a
# riskmetric_a
```
