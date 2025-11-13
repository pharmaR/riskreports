# Reports check results

Experimental function to use the default log to create a report.

## Usage

``` r
check_reporter(path)
```

## Arguments

- path:

  Path to check results folder (aka `pkgname.Rcheck`).

## Value

A base report

## See also

[`tools::check_packages_in_dir()`](https://rdrr.io/r/tools/check_packages_in_dir.html)

## Examples

``` r
# Requires the package to be installed (or be in inst/ folder)
# check_reporter("checks/riskmetric.Rcheck")
```
