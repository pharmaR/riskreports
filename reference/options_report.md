# Export options

Export options

## Usage

``` r
options_report(show = NULL, exclude = NULL)
```

## Arguments

- show:

  Character vector of options to show.

- exclude:

  Character vector of options variables to hide.

## Value

A list with the options

## Examples

``` r
options_report()
#> $CBoundsCheck
#> [1] FALSE
#> 
#> $HTTPUserAgent
#> [1] "R/4.5.2 R (4.5.2 x86_64-pc-linux-gnu x86_64 linux-gnu) on GitHub Actions"
#> 
#> $Ncpus
#> [1] 1
#> 
#> $OutDec
#> [1] "."
#> 
#> $PCRE_limit_recursion
#> [1] NA
#> 
#> $PCRE_study
#> [1] FALSE
#> 
#> $PCRE_use_JIT
#> [1] TRUE
#> 
#> $add.smooth
#> [1] TRUE
#> 
#> $bitmapType
#> [1] "cairo"
#> 
#> $browser
#> [1] "xdg-open"
#> 
#> $browserNLdisabled
#> [1] FALSE
#> 
#> $callr.condition_handler_cli_message
#> function (msg) 
#> {
#>     custom_handler <- getOption("cli.default_handler")
#>     if (is.function(custom_handler)) {
#>         custom_handler(msg)
#>     }
#>     else {
#>         cli_server_default(msg)
#>     }
#> }
#> <bytecode: 0x55a1eb4879c8>
#> <environment: namespace:cli>
#> 
#> $catch.script.errors
#> [1] FALSE
#> 
#> $check.bounds
#> [1] FALSE
#> 
#> $citation.bibtex.max
#> [1] 1
#> 
#> $cli.dynamic
#> [1] FALSE
#> 
#> $cli.num_colors
#> [1] 256
#> 
#> $continue
#> [1] "+ "
#> 
#> $contrasts
#>         unordered           ordered 
#> "contr.treatment"      "contr.poly" 
#> 
#> $covr.covrignore
#> [1] ".covrignore"
#> 
#> $covr.exclude_end
#> #[[:space:]]*nocov[[:space:]]*end
#> 
#> $covr.exclude_pattern
#> #[[:space:]]*nocov
#> 
#> $covr.exclude_start
#> #[[:space:]]*nocov[[:space:]]*start
#> 
#> $covr.flags
#>           CFLAGS         CXXFLAGS       CXX1XFLAGS       CXX11FLAGS 
#> "-O0 --coverage" "-O0 --coverage" "-O0 --coverage" "-O0 --coverage" 
#>       CXX14FLAGS       CXX17FLAGS       CXX20FLAGS           FFLAGS 
#> "-O0 --coverage" "-O0 --coverage" "-O0 --coverage" "-O0 --coverage" 
#>          FCFLAGS            FLIBS          LDFLAGS 
#> "-O0 --coverage"         "-lgcov"     "--coverage" 
#> 
#> $covr.gcov
#>            gcov 
#> "/usr/bin/gcov" 
#> 
#> $covr.icov
#> codecov 
#>      "" 
#> 
#> $covr.icov_flags
#>                 CFLAGS               CXXFLAGS             CXX1XFLAGS 
#> "-O0 -prof-gen=srcpos" "-O0 -prof-gen=srcpos" "-O0 -prof-gen=srcpos" 
#>             CXX11FLAGS             CXX14FLAGS             CXX17FLAGS 
#> "-O0 -prof-gen=srcpos" "-O0 -prof-gen=srcpos" "-O0 -prof-gen=srcpos" 
#>             CXX20FLAGS                 FFLAGS                FCFLAGS 
#> "-O0 -prof-gen=srcpos" "-O0 -prof-gen=srcpos" "-O0 -prof-gen=srcpos" 
#>                LDFLAGS           SHLIB_LIBADD 
#> "-O0 -prof-gen=srcpos" "-O0 -prof-gen=srcpos" 
#> 
#> $covr.icov_prof
#> profmerge 
#>        "" 
#> 
#> $defaultPackages
#> [1] "datasets"  "utils"     "grDevices" "graphics"  "stats"     "methods"  
#> 
#> $demo.ask
#> [1] "default"
#> 
#> $deparse.cutoff
#> [1] 60
#> 
#> $device
#> function (...) 
#> ragg::agg_png(..., bg = bg)
#> <bytecode: 0x55a1ea8aa180>
#> <environment: 0x55a1eaa98728>
#> 
#> $device.ask.default
#> [1] FALSE
#> 
#> $devtools.ellipsis_action
#> function (message = NULL, class = NULL, ..., body = NULL, footer = NULL, 
#>     parent = NULL, use_cli_format = NULL, .inherit = NULL, .frequency = c("always", 
#>         "regularly", "once"), .frequency_id = NULL, .subclass = deprecated()) 
#> {
#>     message <- validate_signal_args(message, class, NULL, .subclass, 
#>         "warn")
#>     message_info <- cnd_message_info(message, body, footer, caller_env(), 
#>         use_cli_format = use_cli_format)
#>     message <- message_info$message
#>     extra_fields <- message_info$extra_fields
#>     use_cli_format <- message_info$use_cli_format
#>     .frequency <- arg_match0(.frequency, c("always", "regularly", 
#>         "once"))
#>     if (!needs_signal(.frequency, .frequency_id, warning_freq_env, 
#>         "rlib_warning_verbosity")) {
#>         return(invisible(NULL))
#>     }
#>     if (!is_null(parent)) {
#>         if (is_null(.inherit)) {
#>             .inherit <- !inherits(parent, "error")
#>         }
#>         extra_fields$rlang <- c(extra_fields$rlang, list(inherit = .inherit))
#>     }
#>     cnd <- warning_cnd(class, message = message, !!!extra_fields, 
#>         use_cli_format = use_cli_format, parent = parent, ...)
#>     cnd$footer <- c(cnd$footer, message_freq(message, .frequency, 
#>         "warning"))
#>     local_long_messages()
#>     warning(cnd)
#> }
#> <bytecode: 0x55a1eca125f0>
#> <environment: namespace:rlang>
#> 
#> $devtools.install.args
#> [1] ""
#> 
#> $devtools.path
#> [1] "~/R-dev"
#> 
#> $digits
#> [1] 7
#> 
#> $downlit.article_index
#> riskmetric_scores.html
#> 
#> $downlit.article_path
#> [1] "../articles/"
#> 
#> $downlit.attached
#> [1] "riskreports"
#> 
#> $downlit.package
#> [1] "riskreports"
#> 
#> $downlit.rdname
#> [1] "options_report"
#> 
#> $downlit.topic_index
#>                    assessment                check_reporter 
#>                  "assessment"              "check_reporter" 
#>              create_info_card                environ_report 
#>            "create_info_card"              "environ_report" 
#>               extract_license                get_image_name 
#>             "extract_license"              "get_image_name" 
#>                get_pkg_origin                 is_risk_error 
#>              "get_pkg_origin"               "is_risk_error" 
#>                options_report                package_report 
#>              "options_report"              "package_report" 
#>       prepare_namespace_table   replace_zero_or_false_by_no 
#>     "prepare_namespace_table" "replace_zero_or_false_by_no" 
#>                   riskreports           riskreports-package 
#>         "riskreports-package"         "riskreports-package" 
#>                 summary_table 
#>               "summary_table" 
#> 
#> $downlit.topic_path
#> [1] "../reference/"
#> 
#> $dvipscmd
#> [1] "dvips"
#> 
#> $echo
#> [1] FALSE
#> 
#> $editor
#> [1] "vi"
#> 
#> $encoding
#> [1] "native.enc"
#> 
#> $example.ask
#> [1] "default"
#> 
#> $expressions
#> [1] 5000
#> 
#> $help.search.types
#> [1] "vignette" "demo"     "help"    
#> 
#> $help.try.all.packages
#> [1] FALSE
#> 
#> $httr_oauth_cache
#> [1] NA
#> 
#> $httr_oob_default
#> [1] FALSE
#> 
#> $internet.info
#> [1] 2
#> 
#> $keep.parse.data
#> [1] TRUE
#> 
#> $keep.parse.data.pkgs
#> [1] FALSE
#> 
#> $keep.source
#> [1] FALSE
#> 
#> $keep.source.pkgs
#> [1] FALSE
#> 
#> $locatorBell
#> [1] TRUE
#> 
#> $mailer
#> [1] "mailto"
#> 
#> $matprod
#> [1] "default"
#> 
#> $max.contour.segments
#> [1] 25000
#> 
#> $max.print
#> [1] 99999
#> 
#> $menu.graphics
#> [1] TRUE
#> 
#> $na.action
#> [1] "na.omit"
#> 
#> $nwarnings
#> [1] 50
#> 
#> $pager
#> [1] "/opt/R/4.5.2/lib/R/bin/pager"
#> 
#> $papersize
#> [1] "a4"
#> 
#> $pdfviewer
#> [1] "/usr/bin/xdg-open"
#> 
#> $pkgType
#> [1] "source"
#> 
#> $printcmd
#> [1] "/usr/bin/lpr"
#> 
#> $prompt
#> [1] "> "
#> 
#> $repos
#>                                                          RSPM 
#> "https://packagemanager.posit.co/cran/__linux__/noble/latest" 
#>                                                          CRAN 
#>                                    "https://cran.rstudio.com" 
#> 
#> $riskmetric.github_api_host
#> [1] "https://api.github.com"
#> 
#> $riskmetric.gitlab_api_host
#> [1] "https://gitlab.com/api/v4"
#> 
#> $riskmetric.per_package_request
#> [1] FALSE
#> 
#> $rl_word_breaks
#> [1] " \t\n\"\\'`><=%;,|&{()}"
#> 
#> $rlang_interactive
#> [1] FALSE
#> 
#> $rlang_trace_top_env
#> <environment: 0x55a1ebcaaf08>
#> 
#> $scipen
#> [1] 0
#> 
#> $show.coef.Pvalues
#> [1] TRUE
#> 
#> $show.error.messages
#> [1] TRUE
#> 
#> $show.signif.stars
#> [1] TRUE
#> 
#> $showErrorCalls
#> [1] TRUE
#> 
#> $showNCalls
#> [1] 50
#> 
#> $showWarnCalls
#> [1] FALSE
#> 
#> $str
#> $str$strict.width
#> [1] "no"
#> 
#> $str$digits.d
#> [1] 3
#> 
#> $str$vec.len
#> [1] 4
#> 
#> $str$list.len
#> [1] 99
#> 
#> $str$deparse.lines
#> NULL
#> 
#> $str$drop.deparse.attr
#> [1] TRUE
#> 
#> $str$formatNum
#> function (x, ...) 
#> format(x, trim = TRUE, drop0trailing = TRUE, ...)
#> <environment: 0x55a1e94c9f18>
#> 
#> 
#> $str.dendrogram.last
#> [1] "`"
#> 
#> $texi2dvi
#> [1] "/usr/bin/texi2dvi"
#> 
#> $timeout
#> [1] 60
#> 
#> $try.outFile
#> A connection with                    
#> description ""      
#> class       "file"  
#> mode        "w+b"   
#> text        "binary"
#> opened      "opened"
#> can read    "yes"   
#> can write   "yes"   
#> 
#> $ts.S.compat
#> [1] FALSE
#> 
#> $ts.eps
#> [1] 1e-05
#> 
#> $unzip
#> [1] "/usr/bin/unzip"
#> 
#> $useFancyQuotes
#> [1] TRUE
#> 
#> $verbose
#> [1] FALSE
#> 
#> $warn
#> [1] 0
#> 
#> $warnPartialMatchArgs
#> [1] FALSE
#> 
#> $warnPartialMatchAttr
#> [1] FALSE
#> 
#> $warnPartialMatchDollar
#> [1] FALSE
#> 
#> $warning.length
#> [1] 1000
#> 
#> $width
#> [1] 80
#> 
```
