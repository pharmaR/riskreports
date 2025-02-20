test_that("multiplication works", {
  var <- "R_ARCH"
  env <- environ_report(exclude = var)
  expect_true(is.na(env[var]))
})
