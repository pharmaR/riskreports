# This report is fully automated and builds on
[rhub/ref-image](https://hub.docker.com/r/rhub/ref-image) image.

2025-09-01 12:00:00

# Context

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

| Downloads.1.year | Reverse.dependencies | License            | Origin |
|:-----------------|---------------------:|:-------------------|:-------|
| 17965873         |                 5458 | MIT + file LICENSE | NA     |

| Section             | Values                             |
|:--------------------|:-----------------------------------|
| Has news            | Yes                                |
| Exported namespace  | 293                                |
| Has vignettes       | Yes                                |
| Export help         | 293                                |
| Has website         | Yes                                |
| Has maintainer      | Hadley Wickham <hadley@posit.co>   |
| Bugs status         | 43.33% closed                      |
| Size codebase       | 10022                              |
| Has bug reports url | Yes                                |
| Has examples        | 93.86%                             |
| Dependencies        | 13                                 |
| News current        | Yes                                |
| Has source control  | https://github.com/tidyverse/dplyr |

**Package general assessment:** Coverage, check results, size, download
the last year, reverse dependencies and number of dependencies.

# Installation environment

## System Info

| Field          | Value                   |
|:---------------|:------------------------|
| Image          | rhub/ref-image          |
| OS             | Ubuntu 22.04.5 LTS      |
| Platform       | x86_64-pc-linux-gnu     |
| System         | x86_64, linux-gnu       |
| Execution Time | 2025-09-01 21:08:15 UTC |

**System information**. Table about the system used to check the
package.

<!--
From here we use the lua filter based on this issue from Quarto itself
https://github.com/quarto-dev/quarto-cli/issues/341
Please take into account that not all content in the chunks will be correctly folded
- character vectors are
- reactable tables are not
An alternative is to use callout blocks with collapse = TRUE
The advantage of the foldable_code lua filter is that the code is printed exactly as in the R console
-->

## R Session Info

<details><summary>Session info</summary>

``` details
R version 4.5.1 (2025-06-13)
Platform: x86_64-pc-linux-gnu
Running under: Ubuntu 22.04.5 LTS

Matrix products: default
BLAS:   /usr/lib/x86_64-linux-gnu/blas/libblas.so.3.10.0 
LAPACK: /usr/lib/x86_64-linux-gnu/lapack/liblapack.so.3.10.0  LAPACK version 3.10.0

locale:
 [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C              
 [3] LC_TIME=pt_BR.UTF-8        LC_COLLATE=en_US.UTF-8    
 [5] LC_MONETARY=pt_BR.UTF-8    LC_MESSAGES=en_US.UTF-8   
 [7] LC_PAPER=pt_BR.UTF-8       LC_NAME=C                 
 [9] LC_ADDRESS=C               LC_TELEPHONE=C            
[11] LC_MEASUREMENT=pt_BR.UTF-8 LC_IDENTIFICATION=C       

time zone: America/Bahia
tzcode source: system (glibc)

attached base packages:
[1] tools     stats     graphics  grDevices utils     datasets  methods  
[8] base     

other attached packages:
[1] riskreports_0.0.0.9006 knitr_1.50            

loaded via a namespace (and not attached):
 [1] xml2_1.3.8          digest_0.6.37       magrittr_2.0.3     
 [4] evaluate_1.0.4      pkgload_1.4.0       fastmap_1.2.0      
 [7] jsonlite_2.0.0      processx_3.8.6      pkgbuild_1.4.8     
[10] sessioninfo_1.2.3   cranlogs_2.1.1      backports_1.5.0    
[13] urltools_1.7.3.1    urlchecker_1.0.1    ps_1.9.1           
[16] promises_1.3.3      BiocManager_1.30.26 httr_1.4.7         
[19] purrr_1.0.4         crosstalk_1.2.1     lazyeval_0.2.2     
[22] cli_3.6.5           shiny_1.11.1        rlang_1.1.6        
[25] covr_3.6.4          triebeard_0.4.1     ellipsis_0.3.2     
[28] reactR_0.6.1        remotes_2.5.0       cachem_1.1.0       
[31] yaml_2.3.10         devtools_2.4.5      memoise_2.0.1      
[34] httpuv_1.6.16       curl_6.4.0          vctrs_0.6.5        
[37] R6_2.6.1            mime_0.13           lifecycle_1.0.4    
[40] reactable_0.4.4     fs_1.6.6            htmlwidgets_1.6.4  
[43] usethis_3.1.0       miniUI_0.1.2        pkgconfig_2.0.3    
[46] callr_3.7.6         rex_1.2.1           pillar_1.11.0      
[49] later_1.4.2         glue_1.8.0          profvis_0.4.0      
[52] Rcpp_1.1.0          xfun_0.52           tibble_3.3.0       
[55] xtable_1.8-4        riskmetric_0.2.5    htmltools_0.5.8.1  
[58] rmarkdown_2.29      compiler_4.5.1     
```

</details>

<details><summary>Platform</summary>

``` details
   OS.type   file.sep dynlib.ext        GUI     endian    pkgType   path.sep 
    "unix"        "/"      ".so"      "X11"   "little"   "source"        ":" 
    r_arch 
        "" 
```

</details>

<details><summary>R's capabilities</summary>

``` details
       jpeg         png        tiff       tcltk         X11        aqua 
       TRUE        TRUE        TRUE        TRUE        TRUE       FALSE 
   http/ftp     sockets      libxml        fifo      cledit       iconv 
       TRUE        TRUE       FALSE        TRUE       FALSE        TRUE 
        NLS       Rprof     profmem       cairo         ICU long.double 
       TRUE        TRUE        TRUE        TRUE        TRUE        TRUE 
    libcurl 
       TRUE 
```

</details>

<details><summary>External software</summary>

``` details
                                              zlib 
                                          "1.2.11" 
                                             bzlib 
                              "1.0.8, 13-Jul-2019" 
                                                xz 
                                           "5.2.5" 
                                        libdeflate 
                                            "1.10" 
                                              PCRE 
                                "10.39 2021-10-29" 
                                               ICU 
                                            "70.1" 
                                               TRE 
                         "TRE 0.8.0 R_fixes (BSD)" 
                                             iconv 
                                      "glibc 2.35" 
                                          readline 
                                             "8.1" 
                                              BLAS 
"/usr/lib/x86_64-linux-gnu/blas/libblas.so.3.10.0" 
```

</details>

<details><summary>Graphics external software</summary>

``` details
                   cairo                  cairoFT                    pango 
                "1.16.0"                       ""                 "1.50.6" 
                  libpng                     jpeg                  libtiff 
                "1.6.37"                    "8.0" "LIBTIFF, Version 4.3.0" 
```

</details>

<details><summary>Numerical characteristics of the machine</summary>

``` details
               double.eps            double.neg.eps               double.xmin 
             2.220446e-16              1.110223e-16             2.225074e-308 
              double.xmax               double.base             double.digits 
            1.797693e+308              2.000000e+00              5.300000e+01 
          double.rounding              double.guard         double.ulp.digits 
             5.000000e+00              0.000000e+00             -5.200000e+01 
    double.neg.ulp.digits           double.exponent            double.min.exp 
            -5.300000e+01              1.100000e+01             -1.022000e+03 
           double.max.exp               integer.max               sizeof.long 
             1.024000e+03              2.147484e+09              8.000000e+00 
          sizeof.longlong         sizeof.longdouble            sizeof.pointer 
             8.000000e+00              1.600000e+01              8.000000e+00 
            sizeof.time_t            longdouble.eps        longdouble.neg.eps 
             8.000000e+00              1.084202e-19              5.421011e-20 
        longdouble.digits       longdouble.rounding          longdouble.guard 
             6.400000e+01              5.000000e+00              0.000000e+00 
    longdouble.ulp.digits longdouble.neg.ulp.digits       longdouble.exponent 
            -6.300000e+01             -6.400000e+01              1.500000e+01 
       longdouble.min.exp        longdouble.max.exp 
            -1.638200e+04              1.638400e+04 
```

</details>

<details><summary>Random number generation process</summary>

``` details
[1] "Mersenne-Twister" "Inversion"        "Rejection"       
```

</details>

## Information about the environment

Environmental and options variables affect how package checks and
software in it might behave.

<details><summary>Environmental variables when running this report</summary>

``` details
_R_CHECK_COMPILATION_FLAGS_KNOWN_
                        -Wformat -Werror=format-security -Wdate-time
CHROME_DESKTOP          code.desktop
COLORTERM               truecolor
DBUS_SESSION_BUS_ADDRESS
                        unix:path=/run/user/1000/bus
DENO_DOM_PLUGIN         /opt/quarto/bin/tools/x86_64/deno_dom/libplugin.so
DENO_NO_UPDATE_CHECK    1
DENO_TLS_CA_STORE       system,mozilla
DESKTOP_SESSION         ubuntu
DISPLAY                 :0
EDITOR                  vi
GDK_BACKEND             x11
GDMSESSION              ubuntu
GIT_ASKPASS             /usr/share/code/resources/app/extensions/git/dist/askpass.sh
GNOME_DESKTOP_SESSION_ID
                        this-is-deprecated
GNOME_SETUP_DISPLAY     :1
GNOME_SHELL_SESSION_MODE
                        ubuntu
GNOME_TERMINAL_SCREEN   /org/gnome/Terminal/screen/2e0c3286_f133_4643_8280_2cd19254a969
GNOME_TERMINAL_SERVICE
                        :1.138
GTK_MODULES             gail:atk-bridge
HOME                    /home/osenan
LANG                    en_US.UTF-8
LC_ADDRESS              pt_BR.UTF-8
LC_IDENTIFICATION       pt_BR.UTF-8
LC_MEASUREMENT          pt_BR.UTF-8
LC_MONETARY             pt_BR.UTF-8
LC_NAME                 pt_BR.UTF-8
LC_NUMERIC              pt_BR.UTF-8
LC_PAPER                pt_BR.UTF-8
LC_TELEPHONE            pt_BR.UTF-8
LC_TIME                 pt_BR.UTF-8
LD_LIBRARY_PATH         /usr/lib/R/lib:/usr/lib/x86_64-linux-gnu:/usr/lib/jvm/default-java/lib/server:/usr/lib/jvm/default-java/lib/server:/usr/lib/R/lib:/usr/lib/x86_64-linux-gnu:/usr/lib/jvm/default-java/lib/server
LESS                    -R
LN_S                    ln -s
LOGNAME                 osenan
LS_COLORS               rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.webp=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:
LSCOLORS                Gxfxcxdxbxegedabagacad
MAKE                    make
OLDPWD                  /home/osenan/Documents/Appsilon
ORIGINAL_XDG_CURRENT_DESKTOP
                        ubuntu:GNOME
PAGER                   less
PATH                    :/opt/quarto/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/snap/bin:/home/osenan/.local/bin:/home/osenan/.config/Code/User/globalStorage/github.copilot-chat/debugCommand
PKGLOAD_PARENT_TEMPDIR
                        /tmp/Rtmp9kYHIW
PROCESSX_PS330251442c0_1756760885
                        YES
PWD                     /home/osenan/Documents/Appsilon/riskreports
QT_ACCESSIBILITY        1
QT_IM_MODULE            ibus
QUARTO_BIN_PATH         /opt/quarto/bin
QUARTO_DENO             /opt/quarto/bin/tools/x86_64/deno
QUARTO_DOCUMENT_FILE    validation_report_dplyr_v1.1.4.qmd
QUARTO_DOCUMENT_PATH    pkgdown/assets
QUARTO_FILTER_DEPENDENCY_FILE
                        /tmp/quarto-session79ffcff44b9056c2/28ff77986cc862f1/a62d6354125ec9ef
QUARTO_PROJECT_ROOT     /home/osenan/Documents/Appsilon/riskreports/pkgdown/assets
QUARTO_ROOT             /
QUARTO_SHARE_PATH       /opt/quarto/share
R_ARCH                  
R_BROWSER               xdg-open
R_BZIPCMD               /bin/bzip2
R_DOC_DIR               /usr/share/R/doc
R_GZIPCMD               /bin/gzip -n
R_HOME                  /usr/lib/R
R_INCLUDE_DIR           /usr/share/R/include
R_LD_LIBRARY_PATH       /usr/lib/R/lib:/usr/lib/x86_64-linux-gnu:/usr/lib/jvm/default-java/lib/server:/usr/lib/jvm/default-java/lib/server
R_LIBS_SITE             /usr/local/lib/R/site-library/:/usr/local/lib/R/site-library/:/usr/local/lib/R/site-library:/usr/lib/R/site-library:/usr/lib/R/library:/usr/lib/R/library
R_LIBS_USER             /home/osenan/R/x86_64-pc-linux-gnu-library/4.5
R_PAPERSIZE             letter
R_PAPERSIZE_USER        letter
R_PDFVIEWER             /usr/bin/xdg-open
R_PLATFORM              x86_64-pc-linux-gnu
R_PRINTCMD              /usr/bin/lpr
R_PROFILE_USER          
R_PROFILE_USER_OLD      
R_RD4PDF                times,inconsolata,hyper
R_SESSION_TMPDIR        /tmp/Rtmp9kYHIW
R_SHARE_DIR             /usr/share/R/share
R_STRIP_SHARED_LIB      strip --strip-unneeded
R_STRIP_STATIC_LIB      strip --strip-debug
R_TEXI2DVICMD           /usr/bin/texi2dvi
R_UNZIPCMD              /usr/bin/unzip
R_ZIPCMD                /usr/bin/zip
RADIAN_COMMAND_ARGS     --no-save --no-restore
RADIAN_VERSION          0.6.13
RCHITECT_REGISTER_SIGNAL_HANDLERS
                        1
RCHITECT_RETICULATE_CONFIG
                        0
SED                     /bin/sed
SESSION_MANAGER         local/osenan-ThinkPad-T14-Gen-1:@/tmp/.ICE-unix/3092,unix/osenan-ThinkPad-T14-Gen-1:/tmp/.ICE-unix/3092
SHELL                   /usr/bin/zsh
SHLVL                   2
SSH_AGENT_LAUNCHER      gnome-keyring
SSH_AGENT_PID           12687
SSH_AUTH_SOCK           /tmp/ssh-XXXXXXrJVy8A/agent.12686
SYSTEMD_EXEC_PID        3297
TAR                     /bin/tar
TERM                    xterm-256color
TERM_PROGRAM            vscode
TERM_PROGRAM_VERSION    1.102.3
USER                    osenan
VSCODE_GIT_ASKPASS_EXTRA_ARGS
                        
VSCODE_GIT_ASKPASS_MAIN
                        /usr/share/code/resources/app/extensions/git/dist/askpass-main.js
VSCODE_GIT_ASKPASS_NODE
                        /usr/share/code/code
VSCODE_GIT_IPC_HANDLE   /run/user/1000/vscode-git-01add43d82.sock
VSCODE_INIT_R           /home/osenan/.vscode/extensions/reditorsupport.r-2.8.6/R/session/init.R
VSCODE_WATCHER_DIR      /home/osenan/.vscode-R
VTE_VERSION             6800
WAYLAND_DISPLAY         wayland-0
XAUTHORITY              /run/user/1000/.mutter-Xwaylandauth.Z0SFC3
XDG_CURRENT_DESKTOP     Unity
XDG_DATA_DIRS           /usr/local/share/:/usr/share/:/var/lib/snapd/desktop
XDG_MENU_PREFIX         gnome-
XDG_RUNTIME_DIR         /run/user/1000
XDG_SESSION_CLASS       user
XDG_SESSION_DESKTOP     ubuntu
XDG_SESSION_TYPE        wayland
XMODIFIERS              @im=ibus
ZSH                     /home/osenan/.oh-my-zsh
```

</details>

<details><summary>These are the options set to generate the report</summary>

``` details
$add.smooth
[1] TRUE

$bitmapType
[1] "cairo"

$browser
[1] "xdg-open"

$browserNLdisabled
[1] FALSE

$callr.condition_handler_cli_message
function (msg) 
{
    custom_handler <- getOption("cli.default_handler")
    if (is.function(custom_handler)) {
        custom_handler(msg)
    }
    else {
        cli_server_default(msg)
    }
}
<bytecode: 0x5f1399253350>
<environment: namespace:cli>

$catch.script.errors
[1] FALSE

$CBoundsCheck
[1] FALSE

$check.bounds
[1] FALSE

$citation.bibtex.max
[1] 1

$continue
[1] "+ "

$contrasts
        unordered           ordered 
"contr.treatment"      "contr.poly" 

$covr.covrignore
[1] ".covrignore"

$covr.exclude_end
#[[:space:]]*nocov[[:space:]]*end

$covr.exclude_pattern
#[[:space:]]*nocov

$covr.exclude_start
#[[:space:]]*nocov[[:space:]]*start

$covr.flags
          CFLAGS         CXXFLAGS       CXX1XFLAGS       CXX11FLAGS 
"-O0 --coverage" "-O0 --coverage" "-O0 --coverage" "-O0 --coverage" 
      CXX14FLAGS       CXX17FLAGS       CXX20FLAGS           FFLAGS 
"-O0 --coverage" "-O0 --coverage" "-O0 --coverage" "-O0 --coverage" 
         FCFLAGS            FLIBS          LDFLAGS 
"-O0 --coverage"         "-lgcov"     "--coverage" 

$covr.gcov
           gcov 
"/usr/bin/gcov" 

$covr.icov
codecov 
     "" 

$covr.icov_flags
                CFLAGS               CXXFLAGS             CXX1XFLAGS 
"-O0 -prof-gen=srcpos" "-O0 -prof-gen=srcpos" "-O0 -prof-gen=srcpos" 
            CXX11FLAGS             CXX14FLAGS             CXX17FLAGS 
"-O0 -prof-gen=srcpos" "-O0 -prof-gen=srcpos" "-O0 -prof-gen=srcpos" 
            CXX20FLAGS                 FFLAGS                FCFLAGS 
"-O0 -prof-gen=srcpos" "-O0 -prof-gen=srcpos" "-O0 -prof-gen=srcpos" 
               LDFLAGS           SHLIB_LIBADD 
"-O0 -prof-gen=srcpos" "-O0 -prof-gen=srcpos" 

$covr.icov_prof
profmerge 
       "" 

$covr.record_tests
[1] TRUE

$defaultPackages
[1] "datasets"  "utils"     "grDevices" "graphics"  "stats"     "methods"  

$demo.ask
[1] "default"

$deparse.cutoff
[1] 60

$device
function (width = 7, height = 7, ...) 
{
    grDevices::pdf(NULL, width, height, ...)
}
<bytecode: 0x5f1399be3580>
<environment: namespace:knitr>

$device.ask.default
[1] FALSE

$devtools.ellipsis_action
function (message = NULL, class = NULL, ..., body = NULL, footer = NULL, 
    parent = NULL, use_cli_format = NULL, .inherit = NULL, .frequency = c("always", 
        "regularly", "once"), .frequency_id = NULL, .subclass = deprecated()) 
{
    message <- validate_signal_args(message, class, NULL, .subclass, 
        "warn")
    message_info <- cnd_message_info(message, body, footer, caller_env(), 
        use_cli_format = use_cli_format)
    message <- message_info$message
    extra_fields <- message_info$extra_fields
    use_cli_format <- message_info$use_cli_format
    .frequency <- arg_match0(.frequency, c("always", "regularly", 
        "once"))
    if (!needs_signal(.frequency, .frequency_id, warning_freq_env, 
        "rlib_warning_verbosity")) {
        return(invisible(NULL))
    }
    if (!is_null(parent)) {
        if (is_null(.inherit)) {
            .inherit <- !inherits(parent, "error")
        }
        extra_fields$rlang <- c(extra_fields$rlang, list(inherit = .inherit))
    }
    cnd <- warning_cnd(class, message = message, !!!extra_fields, 
        use_cli_format = use_cli_format, parent = parent, ...)
    cnd$footer <- c(cnd$footer, message_freq(message, .frequency, 
        "warning"))
    local_long_messages()
    warning(cnd)
}
<bytecode: 0x5f139bc84220>
<environment: namespace:rlang>

$devtools.install.args
[1] ""

$devtools.path
[1] "~/R-dev"

$digits
[1] 7

$dvipscmd
[1] "dvips"

$echo
[1] FALSE

$editor
[1] "vi"

$encoding
[1] "native.enc"

$example.ask
[1] "default"

$expressions
[1] 5000

$help.search.types
[1] "vignette" "demo"     "help"    

$help.try.all.packages
[1] FALSE

$htmltools.preserve.raw
[1] TRUE

$HTTPUserAgent
[1] "R (4.5.1 x86_64-pc-linux-gnu x86_64 linux-gnu)"

$httr_oauth_cache
[1] NA

$httr_oob_default
[1] FALSE

$internet.info
[1] 2

$keep.parse.data
[1] TRUE

$keep.parse.data.pkgs
[1] FALSE

$keep.source
[1] FALSE

$keep.source.pkgs
[1] FALSE

$knitr.in.progress
[1] TRUE

$locatorBell
[1] TRUE

$mailer
[1] "mailto"

$matprod
[1] "default"

$max.contour.segments
[1] 25000

$max.print
[1] 99999

$menu.graphics
[1] TRUE

$na.action
[1] "na.omit"

$nwarnings
[1] 50

$OutDec
[1] "."

$pager
[1] "/usr/lib/R/bin/pager"

$papersize
[1] "letter"

$PCRE_limit_recursion
[1] NA

$PCRE_study
[1] FALSE

$PCRE_use_JIT
[1] TRUE

$pdfviewer
[1] "/usr/bin/xdg-open"

$pkgType
[1] "source"

$printcmd
[1] "/usr/bin/lpr"

$prompt
[1] "> "

$repos
                         CRAN 
"https://cloud.r-project.org" 

$riskmetric.github_api_host
[1] "https://api.github.com"

$riskmetric.gitlab_api_host
[1] "https://gitlab.com/api/v4"

$riskmetric.per_package_request
[1] FALSE

$rl_word_breaks
[1] " \t\n\"\\'`><=%;,|&{()}"

$rlang_trace_top_env
<environment: R_GlobalEnv>

$scipen
[1] 0

$show.coef.Pvalues
[1] TRUE

$show.error.messages
[1] TRUE

$show.signif.stars
[1] TRUE

$showErrorCalls
[1] TRUE

$showNCalls
[1] 50

$showWarnCalls
[1] FALSE

$str
$str$strict.width
[1] "no"

$str$digits.d
[1] 3

$str$vec.len
[1] 4

$str$list.len
[1] 99

$str$deparse.lines
NULL

$str$drop.deparse.attr
[1] TRUE

$str$formatNum
function (x, ...) 
format(x, trim = TRUE, drop0trailing = TRUE, ...)
<environment: 0x5f13984f2190>


$str.dendrogram.last
[1] "`"

$texi2dvi
[1] "/usr/bin/texi2dvi"

$tikzMetricsDictionary
[1] "validation_report_dplyr_v1.1.4-tikzDictionary"

$timeout
[1] 60

$try.outFile
A connection with                    
description ""      
class       "file"  
mode        "w+b"   
text        "binary"
opened      "opened"
can read    "yes"   
can write   "yes"   

$ts.eps
[1] 1e-05

$ts.S.compat
[1] FALSE

$unzip
[1] "/usr/bin/unzip"

$useFancyQuotes
[1] FALSE

$verbose
[1] FALSE

$warn
[1] 0

$warning.length
[1] 1000

$warnPartialMatchArgs
[1] FALSE

$warnPartialMatchAttr
[1] FALSE

$warnPartialMatchDollar
[1] FALSE

$width
[1] 80
```

</details>
