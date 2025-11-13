# Validation Report - dplyr@1.1.4

# Validation Report - dplyr@1.1.4

# Context

This report is fully automated and builds on rhub/ref-image image.
Documents the installation of this package on an open source R
environment, focusing on:

- Installation environment description
- Testing coverage

It is limited to assess whether unit tests and documentation are present
and can execute without error. An assessment would be required that the
tests and documentation are meaningful.

# Package dplyr

## Metric based risk assessment

The following metrics are derived from the `riskmetric` R package.

##### 1 year

## 17965873

Downloads

##### Reverse Dependencies

## 5458

##### License

MIT + file LICENSE

##### Origin

TO BE DETERMINED

# Installation environment

## System Info

| Field          | Value                   |
|:---------------|:------------------------|
| Image          | rhub/ref-image          |
| OS             | macOS Sequoia 15.3.2    |
| Platform       | aarch64-apple-darwin20  |
| System         | aarch64, darwin20       |
| Execution Time | 2025-04-08 09:58:30 UTC |

**System information**. Table about the system used to check the
package.

## R Session Info

Information about the R environment and capabilities:

R version 4.4.3 (2025-02-28) Platform: aarch64-apple-darwin20 Running
under: macOS Sequoia 15.3.2

Matrix products: default BLAS:
/Library/Frameworks/R.framework/Versions/4.4-arm64/Resources/lib/libRblas.0.dylib
LAPACK:
/Library/Frameworks/R.framework/Versions/4.4-arm64/Resources/lib/libRlapack.dylib;
LAPACK version 3.12.0

locale: \[1\]
en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8

time zone: Europe/Madrid tzcode source: internal

attached base packages: \[1\] tools stats graphics grDevices utils
datasets methods  
\[8\] base

other attached packages: \[1\] htmltools_0.5.8.1 riskreports_0.0.0.9006
knitr_1.50

loaded via a namespace (and not attached): \[1\] digest_0.6.37 R6_2.6.1
fastmap_1.2.0  
\[4\] xfun_0.51 reactR_0.6.1 rmarkdown_2.29  
\[7\] reactable_0.4.4 ps_1.9.0 cli_3.6.4  
\[10\] processx_3.8.6 callr_3.7.6 compiler_4.4.3  
\[13\] rstudioapi_0.17.1 pkgbuild_1.4.5 evaluate_1.0.3  
\[16\] yaml_2.3.10 BiocManager_1.30.25 rlang_1.1.5  
\[19\] jsonlite_2.0.0 htmlwidgets_1.6.4

Platform used:

R’s capabilities:

“Capabilities details”

External software:

                                                                               zlib
                                                                           "1.2.12"
                                                                              bzlib
                                                               "1.0.8, 13-Jul-2019"
                                                                                 xz
                                                                            "5.6.3"
                                                                         libdeflate
                                                                             "1.23"
                                                                               PCRE
                                                                 "10.44 2024-06-07"
                                                                                ICU
                                                                             "74.2"
                                                                                TRE
                                                          "TRE 0.8.0 R_fixes (BSD)"
                                                                              iconv
                                                       "Apple or GNU libiconv 1.11"
                                                                           readline
                                                                              "5.2"
                                                                               BLAS 

“/Library/Frameworks/R.framework/Versions/4.4-arm64/Resources/lib/libRblas.0.dylib”

Graphics external software:

                   cairo                  cairoFT                    pango
                "1.17.6"                       ""                "1.50.14"
                  libpng                     jpeg                  libtiff
                "1.6.44"                    "9.5" "LIBTIFF, Version 4.5.0" 

Numerical characteristics of the machine:

           double.eps        double.neg.eps           double.xmin
         2.220446e-16          1.110223e-16         2.225074e-308
          double.xmax           double.base         double.digits
        1.797693e+308          2.000000e+00          5.300000e+01
      double.rounding          double.guard     double.ulp.digits
         5.000000e+00          0.000000e+00         -5.200000e+01 

double.neg.ulp.digits double.exponent double.min.exp -5.300000e+01
1.100000e+01 -1.022000e+03 double.max.exp integer.max sizeof.long
1.024000e+03 2.147484e+09 8.000000e+00 sizeof.longlong sizeof.longdouble
sizeof.pointer 8.000000e+00 8.000000e+00 8.000000e+00 sizeof.time_t
8.000000e+00

Random number generation process:

\[1\] “Mersenne-Twister” “Inversion” “Rejection”

## Information about the environment

Environmental and options variables affect how package checks and
software in it might behave. Here is the environmental variables when
running this report

\_\_CF_USER_TEXT_ENCODING 0x1F5:0x0:0x2 \_\_CFBundleIdentifier
com.rstudio.desktop CLICOLOR_FORCE 1 COMMAND_MODE unix2003
DENO_DOM_PLUGIN
/Users/user/Documents/proj/quarto/quarto-cli/package/dist/bin/tools/aarch64/deno_dom/libplugin.dylib
DENO_NO_UPDATE_CHECK 1 DENO_TLS_CA_STORE system,mozilla DISPLAY
/private/tmp/com.apple.launchd.G6zMv6HMqN/org.xquartz:0
DYLD_FALLBACK_LIBRARY_PATH
/Library/Frameworks/R.framework/Resources/lib:/Library/Java/JavaVirtualMachines/jdk-11.0.18+10/Contents/Home/lib/server
EDITOR vi GIT_ASKPASS rpostback-askpass HOME /Users/user LANG
en_US.UTF-8 LC_CTYPE en_US.UTF-8 LN_S ln -s LOGNAME user MAKE make
MallocNanoZone 0 MPLENGINE tkAgg ORIGINAL_XDG_CURRENT_DESKTOP undefined
PAGER /usr/bin/less PATH
/Library/Frameworks/Python.framework/Versions/3.10/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/Library/Frameworks/Python.framework/Versions/3.11/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/opt/X11/bin:/Library/Apple/usr/bin:/Users/user/.local/bin:/Applications/quarto/bin:/Library/TeX/texbin:/usr/texbin:/Users/user/Documents/proj/quarto/quarto-cli/package/dist/bin:/Applications/RStudio.app/Contents/Resources/app/bin/postback
PKGLOAD_PARENT_TEMPDIR
/var/folders/ng/qfxwj0fx58vc95xf\_\_n87cwc0000gn/T//RtmpLQITWi
PROCESSX_PS1144e2159b651_1744106308 YES PWD
/Users/user/Documents/proj/riskreports PYTHONIOENCODING utf-8
QUARTO_BIN_PATH
/Users/user/Documents/proj/quarto/quarto-cli/package/dist/bin
QUARTO_DEBUG true QUARTO_DENO
/Users/user/Documents/proj/quarto/quarto-cli/package/dist/bin/tools/aarch64/deno
QUARTO_DOCUMENT_FILE validation_report_dplyr_v1.1.4.qmd
QUARTO_DOCUMENT_PATH pkgdown/assets QUARTO_PROJECT_ROOT
/Users/user/Documents/proj/riskreports/pkgdown/assets QUARTO_ROOT
/Users/user/Documents/proj/quarto/quarto-cli QUARTO_SHARE_PATH
/Users/user/Documents/proj/quarto/quarto-cli/src/resources/ R_ARCH  
R_BROWSER /usr/bin/open R_BZIPCMD /usr/bin/bzip2
R_CLI_HAS_HYPERLINK_IDE_HELP true R_CLI_HAS_HYPERLINK_IDE_RUN true
R_CLI_HAS_HYPERLINK_IDE_VIGNETTE true R_DOC_DIR
/Library/Frameworks/R.framework/Resources/doc R_GZIPCMD /usr/bin/gzip
R_HOME /Library/Frameworks/R.framework/Resources R_INCLUDE_DIR
/Library/Frameworks/R.framework/Resources/include R_LIBS_SITE
/Library/Frameworks/R.framework/Resources/site-library R_LIBS_USER
/Users/user/Library/R/arm64/4.4/library R_PAPERSIZE a4 R_PAPERSIZE_USER
a4 R_PDFVIEWER /usr/bin/open R_PLATFORM aarch64-apple-darwin20
R_PRINTCMD lpr R_QPDF /Library/Frameworks/R.framework/Resources/bin/qpdf
R_RD4PDF times,inconsolata,hyper R_RUNTIME  
R_SESSION_TMPDIR
/var/folders/ng/qfxwj0fx58vc95xf\_\_n87cwc0000gn/T//RtmpuDw4Yu
R_SHARE_DIR /Library/Frameworks/R.framework/Resources/share
R_STRIP_SHARED_LIB strip -x R_STRIP_STATIC_LIB strip -S R_TEXI2DVICMD
/opt/R/arm64/bin/texi2dvi R_UNZIPCMD /usr/bin/unzip R_ZIPCMD
/usr/bin/zip RMARKDOWN_MATHJAX_PATH
/Applications/RStudio.app/Contents/Resources/app/resources/mathjax-27
RS_LOG_LEVEL WARN RS_RPOSTBACK_PATH
/Applications/RStudio.app/Contents/Resources/app/bin/rpostback
RS_SHARED_SECRET 67d675fa-fe4f-4d42-9f33-b77ec1f61fb6 RSTUDIO 1
RSTUDIO_CLI_HYPERLINKS true RSTUDIO_CONSOLE_COLOR 256
RSTUDIO_CONSOLE_WIDTH 35 RSTUDIO_DESKTOP_EXE
/Applications/RStudio.app/Contents/MacOS/RStudio
RSTUDIO_FALLBACK_LIBRARY_PATH
/var/folders/ng/qfxwj0fx58vc95xf\_\_n87cwc0000gn/T/rstudio-fallback-library-path-1532250
RSTUDIO_PANDOC
/Applications/RStudio.app/Contents/Resources/app/quarto/bin/tools/aarch64
RSTUDIO_PROGRAM_MODE desktop RSTUDIO_SESSION_PID 70734
RSTUDIO_SESSION_PORT 37679 RSTUDIO_USER_IDENTITY user SED /usr/bin/sed
SHELL /bin/zsh SHLVL 1 SSH_ASKPASS rpostback-askpass SSH_AUTH_SOCK
/private/tmp/com.apple.launchd.lb0MdNPcuS/Listeners TAR /usr/bin/tar
TERM xterm-256color TMPDIR
/var/folders/ng/qfxwj0fx58vc95xf\_\_n87cwc0000gn/T/ USER user XPC_FLAGS
0x0 XPC_SERVICE_NAME 0

These are the options set to generate the report:

\$add.smooth \[1\] TRUE

\$bitmapType \[1\] “quartz”

\$browser \[1\] “/usr/bin/open”

\$browserNLdisabled \[1\] FALSE

\$callr.condition_handler_cli_message function (msg) { custom_handler
\<- getOption(“cli.default_handler”) if (is.function(custom_handler)) {
custom_handler(msg) } else { cli_server_default(msg) } } \<bytecode:
0x15a7c8130\> \<environment: namespace:cli\>

\$catch.script.errors \[1\] FALSE

\$CBoundsCheck \[1\] FALSE

\$check.bounds \[1\] FALSE

\$citation.bibtex.max \[1\] 1

\$continue \[1\] “+”

\$contrasts unordered ordered “contr.treatment” “contr.poly”

\$covr.record_tests \[1\] TRUE

\$defaultPackages \[1\] “datasets” “utils” “grDevices” “graphics”
“stats” “methods”

\$demo.ask \[1\] “default”

\$deparse.cutoff \[1\] 60

\$device function (width = 7, height = 7, …) { grDevices::pdf(NULL,
width, height, …) } \<bytecode: 0x13abc3cb0\> \<environment:
namespace:knitr\>

\$device.ask.default \[1\] FALSE

\$digits \[1\] 7

\$dplyr.show_progress \[1\] TRUE

\$dvipscmd \[1\] “dvips”

\$echo \[1\] FALSE

\$editor \[1\] “vi”

\$encoding \[1\] “native.enc”

\$example.ask \[1\] “default”

\$expressions \[1\] 5000

\$help.search.types \[1\] “vignette” “demo” “help”

\$help.try.all.packages \[1\] FALSE

\$htmltools.preserve.raw \[1\] TRUE

\$HTTPUserAgent \[1\] “R (4.4.3 aarch64-apple-darwin20 aarch64
darwin20)”

\$install.packages.compile.from.source \[1\] “interactive”

\$internet.info \[1\] 2

\$keep.parse.data \[1\] TRUE

\$keep.parse.data.pkgs \[1\] FALSE

\$keep.source \[1\] FALSE

\$keep.source.pkgs \[1\] FALSE

\$knitr.in.progress \[1\] TRUE

\$locatorBell \[1\] TRUE

\$mailer \[1\] “mailto”

\$matprod \[1\] “default”

\$max.contour.segments \[1\] 25000

\$max.print \[1\] 99999

\$menu.graphics \[1\] TRUE

\$na.action \[1\] “na.omit”

\$nwarnings \[1\] 50

\$OutDec \[1\] “.”

\$pager \[1\] “/Library/Frameworks/R.framework/Resources/bin/pager”

\$papersize \[1\] “a4”

\$PCRE_limit_recursion \[1\] NA

\$PCRE_study \[1\] FALSE

\$PCRE_use_JIT \[1\] TRUE

\$pdfviewer \[1\] “/usr/bin/open”

\$pkgType \[1\] “both”

\$printcmd \[1\] “lpr”

\$prompt \[1\] “\>”

\$repos CRAN “@CRAN@”

\$rl_word_breaks \[1\] ” "\\\`\>\<=%;,\|&{()}”

\$rlang_trace_top_env \<environment: R_GlobalEnv\>

\$scipen \[1\] 0

\$show.coef.Pvalues \[1\] TRUE

\$show.error.messages \[1\] TRUE

\$show.signif.stars \[1\] TRUE

\$showErrorCalls \[1\] TRUE

\$showNCalls \[1\] 50

\$showWarnCalls \[1\] FALSE

\\str\\str\$strict.width \[1\] “no”

\\str\\digits.d \[1\] 3

\\str\\vec.len \[1\] 4

\\str\\list.len \[1\] 99

\\str\\deparse.lines NULL

\\str\\drop.deparse.attr \[1\] TRUE

\\str\\formatNum function (x, …) format(x, trim = TRUE, drop0trailing =
TRUE, …) \<environment: 0x14a7a6920\>

\$str.dendrogram.last \[1\] “\`”

\$texi2dvi \[1\] “/opt/R/arm64/bin/texi2dvi”

\$tikzMetricsDictionary \[1\]
“validation_report_dplyr_v1.1.4-tikzDictionary”

\$timeout \[1\] 60

\$try.outFile A connection with  
description “”  
class “file”  
mode “w+b”  
text “binary” opened “opened” can read “yes”  
can write “yes”

\$ts.eps \[1\] 1e-05

\$ts.S.compat \[1\] FALSE

\$unzip \[1\] “/usr/bin/unzip”

\$useFancyQuotes \[1\] FALSE

\$verbose \[1\] FALSE

\$warn \[1\] 0

\$warning.length \[1\] 1000

\$warnPartialMatchArgs \[1\] FALSE

\$warnPartialMatchAttr \[1\] FALSE

\$warnPartialMatchDollar \[1\] FALSE

\$width \[1\] 80
