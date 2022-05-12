library(ggplot2)

set.seed(8329)

coordinates = seq(from = -pi, to = pi, by = 0.01)
data_frame <- dplyr::mutate(
  expand.grid(x_in = coordinates, y_in = coordinates),
  x_out = runif(1, -1, 1) * x_in^4 - sin(y_in^2 + runif(1, -0.1, 0.1)),
  y_out = runif(1, -1, 1) * y_in^3 - cos(x_in^2.5 + runif(1, -0.1, 0.1))
)

background_color <- "#18606E" # rgb(24, 96, 110)
size <- 10

ggplot2::ggsave(
  ggplot2::ggplot(data_frame, ggplot2::aes(x = x_out, y = y_out)) +
  ggplot2::geom_point(
    alpha = 0.1,
    color = "#D94730", # rgb(217, 71, 48)
    shape = "bullet",
    size = 0,
    # The album art was originally created using a size of 6:
    #   https://github.com/cutterkom/generativeart/blob/66e7b27356a5098f45efc62278e1df60388ba007/R/generate_plot.R#L43
    # To make the album art look the same at other sizes, scale the default
    # stroke size by the new size divided by 6. The stroke size (0.5) is from:
    #   https://github.com/tidyverse/ggplot2/blob/f191c1dadb428cc5b116bee121781613ca8488ec/R/geom-point.r#L116
    stroke = 0.5 * size / 6
  ) +
  ggplot2::theme_void() +
  ggplot2::coord_fixed() +
  ggplot2::coord_polar() +
  ggplot2::theme(
    panel.background = element_rect(fill = background_color),
    plot.background = element_rect(fill = background_color)
  ),

  filename = "Maybe You Should.png",
  width = size,
  height = size,
  device = "png"
)
