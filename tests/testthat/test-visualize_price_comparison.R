test_that("Visualization of actual vs predicted prices works correctly", {
  temp_plot <- tempfile(fileext = ".png")
  test_data <- data.frame(
    actualPrice = c(100, 200, 300),
    predictedPrice = c(90, 205, 295)
  )

  expect_silent(visualize_price_comparison(test_data, "actualPrice", "predictedPrice", temp_plot))
  expect_true(file.exists(temp_plot))
  unlink(temp_plot)
})
