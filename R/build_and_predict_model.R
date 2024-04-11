#' Build a Linear Model and Predict Housing Prices
#'
#' This function builds a linear regression model using the specified formula and dataset.
#' It returns the model and predictions.
#'
#' @param data A dataframe containing the housing data.
#' @param formula A formula specifying the model to be fitted.
#'
#' @return A list containing the linear model and predictions.
#' @export
#' @importFrom stats lm predict
#' @importFrom readr read_csv
#'

build_and_predict_model <- function(data, formula) {
  # Ensure the formula is of class 'formula'
  if (!inherits(formula, "formula")) stop("Formula must be of class 'formula'")

  # Build the model
  model <- lm(formula, data = data)

  # Make predictions
  predicted_prices <- predict(model, newdata = data)

  return(list(model = model, predictions = predicted_prices))
}
