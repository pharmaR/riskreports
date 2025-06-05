describe("Run test for the report", {
  tmp_folder <- withr::local_tempdir(
      pattern = "report",
      tmpdir = tempdir(),
      fileext = "",
      .local_envir = parent.frame(),
      clean = TRUE
  )
  withr::local_options("riskreports_output_dir" = tmp_folder)

  it("should be generated in all formats", {
    expect_no_error({
        pr <- package_report(
          package_name = "dplyr",
          package_version = "1.1.4",
          params = list(
          assessment_path = system.file("assessments/dplyr.rds", package = "riskreports"),
          source = "pkg_install"),
          quiet = TRUE,
          output_format = "all"
        )
     })
  })

})
