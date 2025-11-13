# Reports about a package

Reports about a package

## Usage

``` r
package_report(
  package_name,
  package_version,
  package = NULL,
  template_path = system.file("report/package", package = "riskreports"),
  output_format = "all",
  params = list(),
  ...
)
```

## Arguments

- package_name:

  Package name.

- package_version:

  Package version number.

- package:

  Path where to find a package source to retrieve name and version
  number.

- template_path:

  Path to a custom quarto template file

- output_format:

  Output format for the report. Default is "all".

- params:

  A list of execute parameters passed to the template

- ...:

  Additional arguments passed to
  [`quarto::quarto_render()`](https://quarto-dev.github.io/quarto-r/reference/quarto_render.html)

## Value

A path to the reports generated, called by its side effects.

## Details

Please include source as part of `params` content. Source is returned
after calling function
[`riskmetric::pkg_ref`](https://pharmar.github.io/riskmetric/reference/pkg_ref.html)
before the risk assessment is executed

## Examples

``` r
pr <- package_report(
  package_name = "dplyr",
  package_version = "1.1.4",
  params = list(
    assessment_path = system.file("assessments/dplyr.rds", package = "riskreports"),
    image = "rhub/ref-image")
)
#> Warning: Please provide the source of the package assessment
#> 
#> 
#> processing file: validation_report_dplyr_v1.1.4.qmd
#> 1/51                                      
#> 2/51 [setup]                              
#> 3/51                                      
#> 4/51 [loading]                            
#> 5/51                                      
#> 6/51 [read-riskmetric]                    
#> 7/51                                      
#> 8/51 [create_r_riskmetric]                
#> 9/51                                      
#> 10/51 [info_cards]                         
#> 11/51                                      
#> 12/51 [simple_cards]                       
#> 13/51                                      
#> 14/51 [prepare_tables_namespace]           
#> 15/51                                      
#> 16/51 [prepare_tables_dependencies]        
#> 17/51                                      
#> 18/51 [prepare_tables_reverse_dependencies]
#> 19/51                                      
#> 20/51 [prepare_tables_examples]            
#> 21/51                                      
#> 22/51 [prepare_tables_news]                
#> 23/51                                      
#> 24/51 [general-riskmetric]                 
#> 25/51                                      
#> MIT + file LICENSE26/51 [r_cmd_check]                        
#> 27/51                                      
#> 28/51 [remote_checks]                      
#> 29/51                                      
#> 30/51 [covr_coverage]                      
#> 31/51                                      
#> 32/51 [execution_info]                     
#> 33/51                                      
#> 34/51 [session_info]                       
#> 35/51                                      
#> 36/51 [Platform]                           
#> 37/51                                      
#> 38/51 [capabilities]                       
#> 39/51                                      
#> 40/51 [external-software]                  
#> 41/51                                      
#> 42/51 [graphic-software]                   
#> 43/51                                      
#> 44/51 [machine]                            
#> 45/51                                      
#> 46/51 [RNGKind]                            
#> 47/51                                      
#> 48/51 [computing]                          
#> 49/51                                      
#> 50/51 [options]                            
#> 51/51                                      
#> output file: validation_report_dplyr_v1.1.4.knit.md
#> 
#> pandoc 
#>   to: html
#>   output-file: validation_report_dplyr_v1.1.4.html
#>   standalone: true
#>   embed-resources: true
#>   section-divs: true
#>   html-math-method: mathjax
#>   wrap: none
#>   default-image-extension: png
#>   toc: true
#>   variables: {}
#>   
#> metadata
#>   document-css: false
#>   link-citations: true
#>   lang: en
#>   title: This report is fully automated and builds on [`r params$image`](`r paste('https://hub.docker.com/r', params$image, sep = '/')`) image.
#>   date-format: YYYY-MM-DD hh:mm:ss
#>   date: today
#>   published-title: ''
#>   theme:
#>     dark:
#>       - darkly
#>       - custom.scss
#>     light:
#>       - default
#>       - custom.scss
#>       - custom_light.scss
#>   
#> 
#> 
#> processing file: validation_report_dplyr_v1.1.4.qmd
#> 1/51                                      
#> 2/51 [setup]                              
#> 3/51                                      
#> 4/51 [loading]                            
#> 5/51                                      
#> 6/51 [read-riskmetric]                    
#> 7/51                                      
#> 8/51 [create_r_riskmetric]                
#> 9/51                                      
#> 10/51 [info_cards]                         
#> 11/51                                      
#> 12/51 [simple_cards]                       
#> 13/51                                      
#> 14/51 [prepare_tables_namespace]           
#> 15/51                                      
#> 16/51 [prepare_tables_dependencies]        
#> 17/51                                      
#> 18/51 [prepare_tables_reverse_dependencies]
#> 19/51                                      
#> 20/51 [prepare_tables_examples]            
#> 21/51                                      
#> 22/51 [prepare_tables_news]                
#> 23/51                                      
#> 24/51 [general-riskmetric]                 
#> 25/51                                      
#> MIT + file LICENSE26/51 [r_cmd_check]                        
#> 27/51                                      
#> 28/51 [remote_checks]                      
#> 29/51                                      
#> 30/51 [covr_coverage]                      
#> 31/51                                      
#> 32/51 [execution_info]                     
#> 33/51                                      
#> 34/51 [session_info]                       
#> 35/51                                      
#> 36/51 [Platform]                           
#> 37/51                                      
#> 38/51 [capabilities]                       
#> 39/51                                      
#> 40/51 [external-software]                  
#> 41/51                                      
#> 42/51 [graphic-software]                   
#> 43/51                                      
#> 44/51 [machine]                            
#> 45/51                                      
#> 46/51 [RNGKind]                            
#> 47/51                                      
#> 48/51 [computing]                          
#> 49/51                                      
#> 50/51 [options]                            
#> 51/51                                      
#> output file: validation_report_dplyr_v1.1.4.knit.md
#> 
#> pandoc 
#>   to: >-
#>     commonmark+autolink_bare_uris+emoji+footnotes+gfm_auto_identifiers+pipe_tables+strikeout+task_lists+tex_math_dollars
#>   output-file: validation_report_dplyr_v1.1.4.md
#>   standalone: true
#>   default-image-extension: png
#>   html-math-method: webtex
#>   variables: {}
#>   
#> metadata
#>   title: This report is fully automated and builds on [`r params$image`](`r paste('https://hub.docker.com/r', params$image, sep = '/')`) image.
#>   date-format: YYYY-MM-DD hh:mm:ss
#>   date: today
#>   published-title: ''
#>   
#> 
#> 
#> processing file: validation_report_dplyr_v1.1.4.qmd
#> 1/51                                      
#> 2/51 [setup]                              
#> 3/51                                      
#> 4/51 [loading]                            
#> 5/51                                      
#> 6/51 [read-riskmetric]                    
#> 7/51                                      
#> 8/51 [create_r_riskmetric]                
#> 9/51                                      
#> 10/51 [info_cards]                         
#> 11/51                                      
#> 12/51 [simple_cards]                       
#> 13/51                                      
#> 14/51 [prepare_tables_namespace]           
#> 15/51                                      
#> 16/51 [prepare_tables_dependencies]        
#> 17/51                                      
#> 18/51 [prepare_tables_reverse_dependencies]
#> 19/51                                      
#> 20/51 [prepare_tables_examples]            
#> 21/51                                      
#> 22/51 [prepare_tables_news]                
#> 23/51                                      
#> 24/51 [general-riskmetric]                 
#> 25/51                                      
#> MIT + file LICENSE26/51 [r_cmd_check]                        
#> 27/51                                      
#> 28/51 [remote_checks]                      
#> 29/51                                      
#> 30/51 [covr_coverage]                      
#> 31/51                                      
#> 32/51 [execution_info]                     
#> 33/51                                      
#> 34/51 [session_info]                       
#> 35/51                                      
#> 36/51 [Platform]                           
#> 37/51                                      
#> 38/51 [capabilities]                       
#> 39/51                                      
#> 40/51 [external-software]                  
#> 41/51                                      
#> 42/51 [graphic-software]                   
#> 43/51                                      
#> 44/51 [machine]                            
#> 45/51                                      
#> 46/51 [RNGKind]                            
#> 47/51                                      
#> 48/51 [computing]                          
#> 49/51                                      
#> 50/51 [options]                            
#> 51/51                                      
#> output file: validation_report_dplyr_v1.1.4.knit.md
#> 
#> pandoc 
#>   to: typst
#>   output-file: validation_report_dplyr_v1.1.4.typ
#>   standalone: true
#>   default-image-extension: svg
#>   wrap: none
#>   citeproc: false
#>   toc: true
#>   variables: {}
#>   
#> metadata
#>   title: This report is fully automated and builds on [`r params$image`](`r paste('https://hub.docker.com/r', params$image, sep = '/')`) image.
#>   date-format: YYYY-MM-DD hh:mm:ss
#>   date: today
#>   published-title: ''
#>   section-numbering: 1.1.1
#>   margin:
#>     x: 2cm
#>     'y': 2cm
#>   
#> [typst]: Compiling validation_report_dplyr_v1.1.4.typ to validation_report_dplyr_v1.1.4.pdf...DONE
#> 
#> Output created: validation_report_dplyr_v1.1.4.html
#> 
#> 
pr
#> [1] "/home/runner/work/riskreports/riskreports/docs/reference/validation_report_dplyr_v1.1.4.html"
#> [2] "/home/runner/work/riskreports/riskreports/docs/reference/validation_report_dplyr_v1.1.4.md"  
#> [3] "/home/runner/work/riskreports/riskreports/docs/reference/validation_report_dplyr_v1.1.4.pdf" 
file.remove(pr)
#> [1] TRUE TRUE TRUE
```
