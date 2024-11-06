test_that("include_exclude_from works", {
  from <- c("a", "b")
  expect_equal(include_exclude_from(from = from), from)
  expect_equal(include_exclude_from(from = from, exclude = "a"), "b")
  expect_equal(include_exclude_from(from = from, include = "c"), "c")
})
