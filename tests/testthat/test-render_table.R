describe("Namespace table is created", {
  example_assessment <- readRDS(system.file("assessments/dplyr.rds", package = "riskreports"))
  it("It is created by without error from existing example package assessment", {
    testthat::expect_no_error(prepare_namespace_table(example_assessment))
    testthat::expect_snapshot(prepare_namespace_table(example_assessment))
  })
})
