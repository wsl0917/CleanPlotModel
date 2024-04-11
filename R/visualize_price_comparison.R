#' Visualize Actual vs Predicted Prices
#'
#' Generates a scatter plot comparing actual and predicted housing prices.
#'
#' @param data Data frame containing actual and predicted prices.
#' @param actual_col Name of the column containing actual prices.
#' @param predicted_col Name of the column containing predicted prices.
#' @param plot_path Path where the plot image will be saved.
#' @importFrom ggplot2 ggplot aes geom_point geom_abline labs theme_minimal
#' @export
visualize_price_comparison <- function(data, actual_col, predicted_col, plot_path) {
  p <- ggplot2::ggplot(data, ggplot2::aes_string(x = actual_col, y = predicted_col)) +
    ggplot2::geom_point(alpha = 0.5) +
    ggplot2::geom_abline(color = "red") +
    ggplot2::labs(title = "Actual vs. Predicted Total Price",
                  x = "Actual Total Price",
                  y = "Predicted Total Price") +
    ggplot2::theme_minimal()

  ggplot2::ggsave(plot_path, plot = p, width = 10, height = 8, bg = "white")
}
