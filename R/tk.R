theme_tk <- function(base_size = 12, base_family = "Roboto Mono") {
  colors <- deframe(ggthemes::ggthemes_data[["fivethirtyeight"]])
  (theme_foundation(base_size = base_size, base_family = base_family)
   + theme(
     line = element_line(colour = "black"),
     rect = element_rect(fill = colors["Light Gray"],
                         linetype = 0, colour = NA),
     text = element_text(colour = colors["Dark Gray"]),
     axis.title = element_blank(),
     axis.text = element_text(),
     axis.ticks = element_blank(),
     axis.line = element_blank(),
     legend.background = element_rect(),
     legend.position = "bottom",
     legend.direction = "horizontal",
     legend.box = "vertical",
     panel.grid = element_line(colour = NULL),
     panel.grid.major =
       element_line(colour = colors["Medium Gray"]),
     panel.grid.minor = element_blank(),
     plot.margin = unit(c(1, 1, 1, 1), "lines"),
     strip.background = element_rect(),

     plot.background = element_rect(fill="#F3F6F7",
                                    colour = "#F3F6F7"),
     panel.background = element_rect(fill="#F3F6F7",
                                     colour = "#F3F6F7"),
     plot.title = element_text(hjust = 0, size = rel(1.5),
                               family="Oswald"),
     plot.caption = element_text(size=14,
                                 family="Roboto Mono"),
     legend.title = element_text(family="Roboto Mono"),
     legend.text = element_text(family="Roboto Mono"),
     legend.position="bottom",
     plot.margin = unit(c(1,0,1,0), units = "cm")
     ))
}

#' fivethirtyeight.com color palette
#'
#' The standard three-color fivethirtyeight.com palette for line plots comprises
#' blue, red, and green.
#'
#' @family colour fivethirtyeight
#' @export
#' @example inst/examples/ex-fivethirtyeight_pal.R
fivethirtyeight_pal <- function() {
  colors <- deframe(ggthemes::ggthemes_data[["fivethirtyeight"]])
  values <- unname(colors[c("Blue", "Red", "Green")])
  max_n <- length(values)
  f <- manual_pal(values)
  attr(f, "max_n") <- max_n
  f
}

#' fivethirtyeight.com color scales
#'
#' Color scales using the colors in the fivethirtyeight graphics.
#'
#' @inheritParams ggplot2::scale_colour_hue
#' @family colour fivethirtyeight
#' @rdname scale_fivethirtyeight
#' @seealso \code{\link{theme_fivethirtyeight}()} for examples.
#' @export
scale_colour_fivethirtyeight <- function(...) {
  discrete_scale("colour", "economist", fivethirtyeight_pal(), ...)
}

#' @rdname scale_fivethirtyeight
#' @export
scale_color_fivethirtyeight <- scale_colour_fivethirtyeight

#' @rdname scale_fivethirtyeight
#' @export
scale_fill_fivethirtyeight <- function(...) {
  discrete_scale("fill", "economist", fivethirtyeight_pal(), ...)
}
