## install ggplot2
if (!requireNamespace("ggplot2", quietly = TRUE)) {
  install.packages("ggplot2")
}

## function to make basic hex sticker
make_hexsticker <- function(pkg, pkg_size, pkg_color, pkg_y = -.33,
  bg, border,
  icon, icon_color, icon_size, family, face = "plain",
  url, url_size = 8, url_x = .225, url_y = -.76,
  url_color = "transparent",
  url_family = family,
  fa = "Font Awesome 5 Brands",
  icon_y = .25, icon_x = 0) {
  ## hexagon(s) data (two data frames; one for better border effect)
  x <- c(0, 0.865,  0.865,  0, -0.865, -0.865, 0)
  y <- c(1, 0.5  , -0.5,   -1, -0.5,    0.5,   1)
  h <- data.frame(x, y)
  xx <- .825
  x <- c(0, xx,  xx,  0, -xx, -xx, 0)
  yy <- 0.475
  y <- c(.95, yy  , -yy,   -.95, -yy,    yy,   .95)
  h2 <- data.frame(x, y)
  ## construct plot
  ggplot2::ggplot(h, ggplot2::aes(x, y)) +
    ggplot2::geom_polygon(fill = border, size = 0) +
    ggplot2::geom_polygon(data = h2, fill = bg, size = 0) +
    ggplot2::geom_text(data = data.frame(x = icon_x, y = icon_y),
      ggplot2::aes(label = icon), family = fa,
      color = icon_color, size = icon_size) +
    ggplot2::theme_void() +
    ggplot2::annotate("text", 0, pkg_y, label = pkg, family = family,
      size = pkg_size, color = pkg_color, fontface = face) +
    ggplot2::annotate("text", url_x, url_y, label = url, family = url_family,
      size = url_size, angle = 30, color = url_color, fontface = face)
}

## function to make basic hex sticker
make_hexsticker_backspot <- function(pkg, pkg_size, pkg_color, pkg_y = -.33, bg,
  border, icon, family,
  url, icon_color,icon_size,
  url_color = "transparent",
  fa = "Font Awesome 5 Brands",
  icon_y = .25, icon_x = 0,
  backspot_data, backspot_fill) {
  x <- c(0, 0.865,  0.865,  0, -0.865, -0.865, 0)
  y <- c(1, 0.5  , -0.5,   -1, -0.5,    0.5,   1)
  h <- data.frame(x, y)
  xx <- .825
  x <- c(0, xx,  xx,  0, -xx, -xx, 0)
  yy <- 0.475
  y <- c(.95, yy  , -yy,   -.95, -yy,    yy,   .95)
  h2 <- data.frame(x, y)

  ggplot2::ggplot(h, ggplot2::aes(x, y)) +
    ggplot2::geom_polygon(fill = border, size = 0) +
    ggplot2::geom_polygon(data = h2, fill = bg, size = 0) +
    ggplot2::geom_polygon(data = backspot_data, fill = backspot_fill) +
    ggplot2::geom_text(data = data.frame(x = icon_x, y = icon_y),
      ggplot2::aes(label = icon), family = fa,
      color = icon_color, size = icon_size) +
    ggplot2::theme_void() +
    ggplot2::annotate("text", 0, pkg_y, label = pkg, family = family,
      size = pkg_size, color = pkg_color) +
    ggplot2::annotate("text", .225, -.76, label = url, family = family,
      size = 8, angle = 30, color = url_color)
}

## function to make shaded two-sided hex sticker
make_hexsticker2 <- function(pkg, pkg_size, pkg_y = -.33, bg1, bg2, border1,
  border2, icon, family,
  url, icon_color, icon_size, pkg_color,
  url_color = "transparent",
  url_family = family,
  fa = "Font Awesome 5 Brands", icon_y = .25) {
  x1 <- c(0, 0.865,  0.865,  0,  0)
  x2 <- c(0, -0.865, -0.865, 0,  0)
  y1 <- c(1, 0.5  , -0.5,   -1,  1)
  y2 <- c(-1, -0.5,    0.5,  1, -1)
  h1a <- data.frame(x = x1, y = y1)
  h1b <- data.frame(x = x2, y = y2)
  xx <- .825
  x1 <- c(0, xx,  xx,  0, 0)
  x2 <- c(0, -xx, -xx, 0, 0)
  yy <- 0.475
  y1 <- c(.95, yy  , -yy,   -.95,  .95)
  y2 <- c(-.95, -yy,  yy,    .95, -.95)
  h2a <- data.frame(x = x1, y = y1)
  h2b <- data.frame(x = x2, y = y2)
  ggplot2::ggplot(h1a, ggplot2::aes(x, y)) +
    ggplot2::geom_polygon(fill = border1, size = 0) +
    ggplot2::geom_polygon(data = h1b, fill = border2, size = 0) +
    ggplot2::geom_polygon(data = h2a, fill = bg1, size = 0) +
    ggplot2::geom_polygon(data = h2b, fill = bg2, size = 0) +
    ggplot2::geom_text(data = data.frame(x = .475, y = icon_y),
      ggplot2::aes(label = icon), family = fa,
      color = icon_color, size = icon_size, angle = -8) +
    ggplot2::geom_text(data = data.frame(x = -.475, y = icon_y),
      ggplot2::aes(label = icon), family = fa,
      color = icon_color, size = icon_size, angle = 8) +
    ggplot2::theme_void() +
    ggplot2::annotate("text", -.25, pkg_y, label = pkg, family = family,
      size = pkg_size, color = pkg_color) +
    ggplot2::annotate("text", .45, -.66, label = url, family = url_family,
      size = 5, angle = 30, color = url_color)
}

