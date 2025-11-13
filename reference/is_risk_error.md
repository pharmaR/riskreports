# Checks if it is a riskmetric error or not.

Provide information whether the object metric is an error or not.

## Usage

``` r
is_risk_error(x)
```

## Arguments

- x:

  An object

## Value

A logical value: if it is not a riskmetric metric it returns `NA`, but
normally `TRUE` or `FALSE`.

## Examples

``` r
is_risk_error(1)
#> [1] NA
```
