test_that("include_exclude_from works", {
  from <- c("a", "b")
  expect_equal(include_exclude_from(from = from), from)
  expect_equal(include_exclude_from(from = from, exclude = "a"), "b")
  expect_equal(include_exclude_from(from = from, include = "c"), "c")
})

test_that("All riskmetric:::pkg_ref_class_hierarchy have value to display in our report", {
  allowed_names <- unlist(riskmetric:::pkg_ref_class_hierarchy)

  expect_true(all(!is.na(sapply(allowed_names, get_pkg_origin))))
})

test_that("is_empty returns TRUE if the argument is withint the expected empty categories", {
  expect_true(is_empty(NULL))
  expect_true(is_empty(NA))
  expect_true(is_empty(""))
  expect_false(is_empty(letters[1]))
})

test_that("replace_zero_or_false_by_no returns 'No' if value is zero ir FALSE", {
  value_1 <- FALSE
  value_2 <- 0

  expect_identical("No", replace_zero_or_false_by_no(value_1))
  expect_identical("No", replace_zero_or_false_by_no(value_2))
  expect_identical(TRUE, replace_zero_or_false_by_no(TRUE))
})
