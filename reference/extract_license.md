# analyze license output from risk assessment to display in cards

analyze license output from risk assessment to display in cards

## Usage

``` r
extract_license(assessment)
```

## Arguments

- assessment:

  object returning from riskmetric assessment, it can also be data.frame
  from riskreports::assessment

## Value

list with main card license string and footer if available

## Details

The function analyzes if the license is standard. If it is standard,
then it will see if there is available information for the footer. The
footer information is only the multiple version number for the moment.
