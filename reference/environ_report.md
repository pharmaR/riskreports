# Export environmental variables

Export environmental variables

## Usage

``` r
environ_report(show = NULL, exclude = NULL)
```

## Arguments

- show:

  Character vector of environmental variables to show.

- exclude:

  Character vector of environmental variables to hide.

## Value

A character vector with environmental variables.

## Examples

``` r
environ_report()
#> ACCEPT_EULA             Y
#> ACTIONS_RUNNER_ACTION_ARCHIVE_CACHE
#>                         /opt/actionarchivecache
#> AGENT_TOOLSDIRECTORY    /opt/hostedtoolcache
#> ANDROID_HOME            /usr/local/lib/android/sdk
#> ANDROID_NDK             /usr/local/lib/android/sdk/ndk/27.3.13750724
#> ANDROID_NDK_HOME        /usr/local/lib/android/sdk/ndk/27.3.13750724
#> ANDROID_NDK_LATEST_HOME
#>                         /usr/local/lib/android/sdk/ndk/29.0.14206865
#> ANDROID_NDK_ROOT        /usr/local/lib/android/sdk/ndk/27.3.13750724
#> ANDROID_SDK_ROOT        /usr/local/lib/android/sdk
#> ANT_HOME                /usr/share/ant
#> AZURE_EXTENSION_DIR     /opt/az/azcliextensions
#> BOOTSTRAP_HASKELL_NONINTERACTIVE
#>                         1
#> BUNDLE_EXT              linux-amd64.deb
#> CHROMEWEBDRIVER         /usr/local/share/chromedriver-linux64
#> CHROME_BIN              /usr/bin/google-chrome
#> CI                      true
#> CONDA                   /usr/share/miniconda
#> DEBIAN_FRONTEND         noninteractive
#> DOTNET_MULTILEVEL_LOOKUP
#>                         0
#> DOTNET_NOLOGO           1
#> DOTNET_SKIP_FIRST_TIME_EXPERIENCE
#>                         1
#> EDGEWEBDRIVER           /usr/local/share/edge_driver
#> EDITOR                  vi
#> ENABLE_RUNNER_TRACING   true
#> GECKOWEBDRIVER          /usr/local/share/gecko_driver
#> GHCUP_INSTALL_BASE_PREFIX
#>                         /usr/local
#> GITHUB_ACTION           __run
#> GITHUB_ACTIONS          true
#> GITHUB_ACTION_REF       
#> GITHUB_ACTION_REPOSITORY
#>                         
#> GITHUB_ACTOR            llrs-roche
#> GITHUB_ACTOR_ID         185338939
#> GITHUB_API_URL          https://api.github.com
#> GITHUB_BASE_REF         
#> GITHUB_ENV              /home/runner/work/_temp/_runner_file_commands/set_env_45d09236-6a42-442a-be67-d71d8d4f3536
#> GITHUB_EVENT_NAME       push
#> GITHUB_EVENT_PATH       /home/runner/work/_temp/_github_workflow/event.json
#> GITHUB_GRAPHQL_URL      https://api.github.com/graphql
#> GITHUB_HEAD_REF         
#> GITHUB_JOB              pkgdown
#> GITHUB_OUTPUT           /home/runner/work/_temp/_runner_file_commands/set_output_45d09236-6a42-442a-be67-d71d8d4f3536
#> GITHUB_PAT              ghs_OMtiwdJU2TL5U5e1Y4vzknpL47Ioxu3wgHgO
#> GITHUB_PATH             /home/runner/work/_temp/_runner_file_commands/add_path_45d09236-6a42-442a-be67-d71d8d4f3536
#> GITHUB_REF              refs/heads/main
#> GITHUB_REF_NAME         main
#> GITHUB_REF_PROTECTED    true
#> GITHUB_REF_TYPE         branch
#> GITHUB_REPOSITORY       pharmaR/riskreports
#> GITHUB_REPOSITORY_ID    883206300
#> GITHUB_REPOSITORY_OWNER
#>                         pharmaR
#> GITHUB_REPOSITORY_OWNER_ID
#>                         42115094
#> GITHUB_RETENTION_DAYS   90
#> GITHUB_RUN_ATTEMPT      1
#> GITHUB_RUN_ID           19543911609
#> GITHUB_RUN_NUMBER       73
#> GITHUB_SERVER_URL       https://github.com
#> GITHUB_SHA              fbc96714ffe0f513ec398a6d045b7ec087a7203d
#> GITHUB_STATE            /home/runner/work/_temp/_runner_file_commands/save_state_45d09236-6a42-442a-be67-d71d8d4f3536
#> GITHUB_STEP_SUMMARY     /home/runner/work/_temp/_runner_file_commands/step_summary_45d09236-6a42-442a-be67-d71d8d4f3536
#> GITHUB_TRIGGERING_ACTOR
#>                         llrs-roche
#> GITHUB_WORKFLOW         pkgdown.yaml
#> GITHUB_WORKFLOW_REF     pharmaR/riskreports/.github/workflows/pkgdown.yaml@refs/heads/main
#> GITHUB_WORKFLOW_SHA     fbc96714ffe0f513ec398a6d045b7ec087a7203d
#> GITHUB_WORKSPACE        /home/runner/work/riskreports/riskreports
#> GOROOT_1_22_X64         /opt/hostedtoolcache/go/1.22.12/x64
#> GOROOT_1_23_X64         /opt/hostedtoolcache/go/1.23.12/x64
#> GOROOT_1_24_X64         /opt/hostedtoolcache/go/1.24.10/x64
#> GOROOT_1_25_X64         /opt/hostedtoolcache/go/1.25.4/x64
#> GRADLE_HOME             /usr/share/gradle-9.2.0
#> HOME                    /home/runner
#> HOMEBREW_CLEANUP_PERIODIC_FULL_DAYS
#>                         3650
#> HOMEBREW_NO_AUTO_UPDATE
#>                         1
#> INVOCATION_ID           5f791ba872f845efa0dc7a1734e59c27
#> IN_PKGDOWN              true
#> ImageOS                 ubuntu24
#> ImageVersion            20251112.124.1
#> JAVA_HOME               /usr/lib/jvm/temurin-17-jdk-amd64
#> JAVA_HOME_11_X64        /usr/lib/jvm/temurin-11-jdk-amd64
#> JAVA_HOME_17_X64        /usr/lib/jvm/temurin-17-jdk-amd64
#> JAVA_HOME_21_X64        /usr/lib/jvm/temurin-21-jdk-amd64
#> JAVA_HOME_25_X64        /usr/lib/jvm/temurin-25-jdk-amd64
#> JAVA_HOME_8_X64         /usr/lib/jvm/temurin-8-jdk-amd64
#> JOURNAL_STREAM          9:11235
#> LANG                    C.UTF-8
#> LANGUAGE                en-US
#> LC_COLLATE              C
#> LD_LIBRARY_PATH         /opt/R/4.5.2/lib/R/lib:/usr/local/lib:/usr/lib/x86_64-linux-gnu:/usr/lib/jvm/temurin-17-jdk-amd64/lib/server
#> LN_S                    ln -s
#> LOGNAME                 runner
#> MAKE                    make
#> MEMORY_PRESSURE_WATCH   /sys/fs/cgroup/system.slice/hosted-compute-agent.service/memory.pressure
#> MEMORY_PRESSURE_WRITE   c29tZSAyMDAwMDAgMjAwMDAwMAA=
#> NOT_CRAN                true
#> NVM_DIR                 /home/runner/.nvm
#> PAGER                   /usr/bin/pager
#> PATH                    /opt/hostedtoolcache/pandoc/3.1.11/x64:/snap/bin:/home/runner/.local/bin:/opt/pipx_bin:/home/runner/.cargo/bin:/home/runner/.config/composer/vendor/bin:/usr/local/.ghcup/bin:/home/runner/.dotnet/tools:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
#> PIPX_BIN_DIR            /opt/pipx_bin
#> PIPX_HOME               /opt/pipx
#> PKGCACHE_HTTP_VERSION   2
#> POWERSHELL_DISTRIBUTION_CHANNEL
#>                         GitHub-Actions-ubuntu24
#> PWD                     /home/runner/work/riskreports/riskreports
#> RENV_CONFIG_REPOS_OVERRIDE
#>                         https://packagemanager.posit.co/cran/__linux__/noble/latest
#> RSPM                    https://packagemanager.posit.co/cran/__linux__/noble/latest
#> RUNNER_ARCH             X64
#> RUNNER_ENVIRONMENT      github-hosted
#> RUNNER_NAME             GitHub Actions 1000002091
#> RUNNER_OS               Linux
#> RUNNER_TEMP             /home/runner/work/_temp
#> RUNNER_TOOL_CACHE       /opt/hostedtoolcache
#> RUNNER_TRACKING_ID      github_02f4ff23-c7cb-4994-8ff3-a2688b228fb7
#> RUNNER_WORKSPACE        /home/runner/work/riskreports
#> R_ARCH                  
#> R_BROWSER               xdg-open
#> R_BZIPCMD               /usr/bin/bzip2
#> R_DOC_DIR               /opt/R/4.5.2/lib/R/doc
#> R_GZIPCMD               /usr/bin/gzip
#> R_HOME                  /opt/R/4.5.2/lib/R
#> R_INCLUDE_DIR           /opt/R/4.5.2/lib/R/include
#> R_LIBS_SITE             /opt/R/4.5.2/lib/R/site-library
#> R_LIBS_USER             /home/runner/work/_temp/Library
#> R_LIB_FOR_PAK           /opt/R/4.5.2/lib/R/site-library
#> R_PAPERSIZE             letter
#> R_PDFVIEWER             /usr/bin/xdg-open
#> R_PLATFORM              x86_64-pc-linux-gnu
#> R_PRINTCMD              /usr/bin/lpr
#> R_RD4PDF                times,inconsolata,hyper
#> R_SESSION_TMPDIR        /tmp/RtmpM97538
#> R_SHARE_DIR             /opt/R/4.5.2/lib/R/share
#> R_STRIP_SHARED_LIB      strip --strip-unneeded
#> R_STRIP_STATIC_LIB      strip --strip-debug
#> R_TEXI2DVICMD           /usr/bin/texi2dvi
#> R_UNZIPCMD              /usr/bin/unzip
#> R_ZIPCMD                /usr/bin/zip
#> SED                     /usr/bin/sed
#> SELENIUM_JAR_PATH       /usr/share/java/selenium-server.jar
#> SGX_AESM_ADDR           1
#> SHELL                   /bin/bash
#> SHLVL                   0
#> SWIFT_PATH              /usr/share/swift/usr/bin
#> SYSTEMD_EXEC_PID        1886
#> TAR                     /usr/bin/tar
#> TZ                      UTC
#> USER                    runner
#> VCPKG_INSTALLATION_ROOT
#>                         /usr/local/share/vcpkg
#> XDG_CONFIG_HOME         /home/runner/.config
#> XDG_RUNTIME_DIR         /run/user/1001
#> _R_CHECK_SYSTEM_CLOCK_
#>                         FALSE
```
