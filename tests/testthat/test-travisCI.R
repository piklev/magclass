library(testthat)

skip_if_not(identical(Sys.getenv("TRAVIS"), "true"))
context("Version validation on Travis-CI")

test_that("Validation Key is correct (for Travis CI)", {
  folder <- ifelse(file.exists("DESCRIPTION"),".","../../")
  expect_true(lucode2:::validkey(folder)$valid)
})