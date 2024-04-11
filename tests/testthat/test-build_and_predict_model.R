test_that("Model training is successful", {
  # Make sure this path points correctly to where you've placed Beijinghouse_small.csv
  data <- readr::read_csv(test_path("smaller_dataset.csv"))
  formula <- as.formula("totalPrice ~ . - constructionTime - buildingType")
  results <- CleanPlotModel::build_and_predict_model(data, formula)

  expect_s3_class(results$model, "lm")
  expect_true(is.numeric(results$predictions))

})
