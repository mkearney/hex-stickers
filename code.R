## load ggplot2
library(ggplot2)

## function to make basic hex sticker
make_hexsticker <- function(pkg, pkg_size, pkg_color, pkg_y = -.33,
                            bg, border,
                            icon, icon_color, icon_size, family, face = "plain",
                            url, url_size = 8, url_x = .225, url_y = -.76,
                            url_color = "transparent",
                            url_family = family,
                            fa = "Font Awesome 5 Brands",
                            icon_y = .25, icon_x = 0) {
  x <- c(0, 0.865,  0.865,  0, -0.865, -0.865, 0)
  y <- c(1, 0.5  , -0.5,   -1, -0.5,    0.5,   1)
  h <- data.frame(x, y)
  xx <- .825
  x <- c(0, xx,  xx,  0, -xx, -xx, 0)
  yy <- 0.475
  y <- c(.95, yy  , -yy,   -.95, -yy,    yy,   .95)
  h2 <- data.frame(x, y)

  ggplot(h, aes(x, y)) +
    geom_polygon(fill = border, size = 0) +
    geom_polygon(data = h2, fill = bg, size = 0) +
    geom_text(data = data.frame(x = icon_x, y = icon_y),
      aes(label = icon), family = fa,
      color = icon_color, size = icon_size) +
    theme_void() +
    annotate("text", 0, pkg_y, label = pkg, family = family,
      size = pkg_size, color = pkg_color, fontface = face) +
    annotate("text", url_x, url_y, label = url, family = url_family,
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

  ggplot(h, aes(x, y)) +
    geom_polygon(fill = border, size = 0) +
    geom_polygon(data = h2, fill = bg, size = 0) +
    geom_polygon(data = backspot_data, fill = backspot_fill) +
    geom_text(data = data.frame(x = icon_x, y = icon_y),
      aes(label = icon), family = fa,
      color = icon_color, size = icon_size) +
    theme_void() +
    annotate("text", 0, pkg_y, label = pkg, family = family,
      size = pkg_size, color = pkg_color) +
    annotate("text", .225, -.76, label = url, family = family,
      size = 8, angle = 30, color = url_color)
}

## function to make shaded two-sided hex sticker
make_hexsticker2 <- function(pkg, pkg_size, pkg_y = -.33, bg1, bg2, border1,
                             border2, icon, family,
                             url, icon_color, icon_size, pkg_color,
                             url_color = "transparent",
                             fa = "Font Awesome 5 Brands", icon_y = .25) {
  x1 <- c(0, 0.865,  0.865,  0, 0)
  x2 <- c(0, -0.865, -0.865, 0, 0)
  y1 <- c(1, 0.5  , -0.5,   -1, 1)
  y2 <- c(-1, -0.5,    0.5,   1, -1)
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
  ggplot(h1a, aes(x, y)) +
    geom_polygon(fill = border1, size = 0) +
    geom_polygon(data = h1b, fill = border2, size = 0) +
    geom_polygon(data = h2a, fill = bg1, size = 0) +
    geom_polygon(data = h2b, fill = bg2, size = 0) +
    geom_text(data = data.frame(x = .475, y = icon_y),
      aes(label = icon), family = fa,
      color = icon_color, size = icon_size, angle = -8) +
    geom_text(data = data.frame(x = -.475, y = icon_y),
      aes(label = icon), family = fa,
      color = icon_color, size = icon_size, angle = 8) +
    theme_void() +
    annotate("text", -.25, pkg_y, label = pkg, family = family,
      size = pkg_size, color = pkg_color) +
    annotate("text", .45, -.66, label = url, family = family,
      size = 5, angle = 30, color = url_color)
}


##----------------------------------------------------------------------------##
##                                   rtweet                                   ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(pkg = "rtweet", bg = "#ffffff", border = "#002255", icon = "",
  icon_color = "#003366cc", family = "Avenir Heavy", icon_size = 80, pkg_size = 32,
  url = "rtweet.info", pkg_color = "#003366",
  url_color = "#003366", fa = "Font Awesome 5 Brands")

p + ggsave("PNG/rtweet.png", width = (1.73/2) * 8,
    height = 8, units = "in", bg = "transparent")

p + ggsave("SVG/rtweet.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")


##----------------------------------------------------------------------------##
##                                textfeatures                                ##
##----------------------------------------------------------------------------##


p <- make_hexsticker(pkg = "textfeatures", bg = "#3366ff", border = "#002299",
  icon = "", icon_color = "#ffffff", icon_size = 60,
  pkg_size = 26, pkg_y = -.32, family = "Avenir Heavy",
  url = "", pkg_color = "#ffffff",
  fa = "Font Awesome 5 Free Solid")

p + ggsave("PNG/textfeatures.png", width = (1.73/2) * 8, height = 8,
    units = "in", bg = "transparent")

p + ggsave("SVG/textfeatures.svg", width = (1.73/2) * 8, height = 8,
  units = "in", bg = "transparent")

##----------------------------------------------------------------------------##
##                                  pkgverse                                  ##
##----------------------------------------------------------------------------##


p <- make_hexsticker(pkg = "pkgverse", bg = "#d16cb8", border = "#220022", icon = "",
  icon_color = "#220022", family = "Avenir Heavy", icon_size = 60,
  pkg_size = 28, pkg_y = -.28, icon_y = .275,
  url = "", pkg_color = "#ffffff",
  fa = "Font Awesome 5 Free Solid")

p + ggsave("PNG/pkgverse.png", width = (1.73/2) * 8, height = 8, units = "in",
    bg = "transparent")

p + ggsave("SVG/pkgverse.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")


##----------------------------------------------------------------------------##
##                                    tfse                                    ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#f0f0f0", border = "#00440a", family = "Avenir Heavy",
  pkg = "tfse", pkg_size = 46, pkg_color = "#2d8244",
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#2d8244", icon_size = 50,
  url = "")

p + ggsave("PNG/tfse.png", width = (1.73/2) * 8, height = 8, units = "in",
    bg = "transparent")

p + ggsave("SVG/tfse.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")



##----------------------------------------------------------------------------##
##                                tweetbotornot                               ##
##----------------------------------------------------------------------------##

p <- make_hexsticker2(bg1 = "#111111", bg2 = "#333333",
  border1 = "#000000", border2 = "#222222",
  family = "Avenir Heavy", pkg = "tweetbotornot", pkg_size = 21,
  pkg_color = "transparent", pkg_y = -.315,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#bbbbbb", icon_size = 42, icon_y = .2,
  url = "mikewk.shinyapps.io/botornot", url_color = "#ffffff") +
  geom_line(data = data.frame(x = c(.2, .725), y = c(-.025, .3125)),
    color = "#991111", size = 4) +
  geom_line(data = data.frame(x = c(-.2, -.65), y = c(-.055, -.12)),
    color = "#119911", size = 3)

p + ggsave("PNG/tweetbotornot.png", width = (1.73/2) * 8, height = 8,
  units = "in", bg = "transparent")

p + ggsave("SVG/tweetbotornot.svg", width = (1.73/2) * 8, height = 8,
  units = "in", bg = "transparent")


##----------------------------------------------------------------------------##
##                                 tidyversity                                ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#7D7D7D", border = "#000000", family = "Avenir Heavy",
  pkg = "tidyversity", pkg_size = 28, pkg_color = "#ffffff", pkg_y = -.315,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#F1B82D", icon_size = 64,
  url = "")

p + ggsave("PNG/tidyversity.png", width = (1.73/2) * 8, height = 8,
  units = "in", bg = "transparent")

p + ggsave("SVG/tidyversity.svg", width = (1.73/2) * 8, height = 8,
  units = "in", bg = "transparent")


##----------------------------------------------------------------------------##
##                                   tidyreg                                  ##
##----------------------------------------------------------------------------##


make_hexsticker(bg = "#7D7D7D", border = "#000000", family = "Avenir Heavy",
  pkg = "tidyreg", pkg_size = 28, pkg_color = "#ffffff", pkg_y = -.315,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#F1B82D", icon_size = 64,
  url = "")

p + ggsave("PNG/tidyreg.png", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

p + ggsave("SVG/tidyreg.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")


##----------------------------------------------------------------------------##
##                                   tidysem                                  ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#7D7D7D", border = "#000000", family = "Avenir Heavy",
  pkg = "tidysem", pkg_size = 28, pkg_color = "#ffffff", pkg_y = -.315,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#F1B82D", icon_size = 64,
  url = "")

p + ggsave("PNG/tidysem.png", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

p + ggsave("SVG/tidysem.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")


##----------------------------------------------------------------------------##
##                                   tidymlm                                  ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#7D7D7D", border = "#000000", family = "Avenir Heavy",
  pkg = "tidymlm", pkg_size = 28, pkg_color = "#ffffff", pkg_y = -.315,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#F1B82D", icon_size = 64,
  url = "")

p + ggsave("PNG/tidymlm.png", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

p + ggsave("SVG/tidymlm.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")


##----------------------------------------------------------------------------##
##                                   tidycor                                  ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#7D7D7D", border = "#000000", family = "Avenir Heavy",
  pkg = "tidycor", pkg_size = 28, pkg_color = "#ffffff", pkg_y = -.315,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#F1B82D", icon_size = 64,
  url = "")

p + ggsave("PNG/tidycor.png", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

p + ggsave("SVG/tidycor.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")



##----------------------------------------------------------------------------##
##                                   tidycat                                  ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#7D7D7D", border = "#000000", family = "Avenir Heavy",
  pkg = "tidycat", pkg_size = 28, pkg_color = "#ffffff", pkg_y = -.315,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#F1B82D", icon_size = 64,
  url = "")

p + ggsave("PNG/tidycat.png", width = (1.73/2) * 8, height = 8, units = "in",
    bg = "transparent")

p + ggsave("SVG/tidycat.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

##----------------------------------------------------------------------------##
##                                   funique                                  ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "greenyellow", border = "#003333", family = "Avenir Heavy",
  pkg = "funique", pkg_size = 32, pkg_color = "#003333", pkg_y = -.315,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#003333", icon_size = 64,
  url = "")

p + ggsave("PNG/funique.png", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

p + ggsave("SVG/funique.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")





##----------------------------------------------------------------------------##
##                                  name2sex                                  ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#FFA500", border = "#994500", family = "Avenir Heavy",
  pkg = "name2sex", pkg_size = 28, pkg_color = "#ffffff", pkg_y = -.315,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#ffffff", icon_size = 70,
  url = "")

p + ggsave("PNG/name2sex.png", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

p + ggsave("SVG/name2sex.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

##----------------------------------------------------------------------------##
##                                   nytimes                                  ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#ffffff", border = "#000000", family = "Avenir Heavy",
  pkg = "nytimes", pkg_size = 32, pkg_color = "#000000", pkg_y = -.305,
  icon = "", fa = "Font Awesome 5 Free",
  icon_color = "#000000", icon_size = 70,
  url = "")

p + ggsave("PNG/nytimes.png", width = (1.73/2) * 8, height = 8, units = "in",
    bg = "transparent")

p + ggsave("SVG/nytimes.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

##----------------------------------------------------------------------------##
##                                     nyt                                    ##
##----------------------------------------------------------------------------##


p <- make_hexsticker(bg = "#ffffff", border = "#000000", family = "Avenir Heavy",
  pkg = "nyt", pkg_size = 36, pkg_color = "#000000", pkg_y = -.305,
  icon = "", fa = "Font Awesome 5 Free",
  icon_color = "#000000", icon_size = 70,
  url = "")

p + ggsave("PNG/nyt.png", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

p + ggsave("SVG/nyt.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

##----------------------------------------------------------------------------##
##                                   kaggler                                  ##
##----------------------------------------------------------------------------##


p <- make_hexsticker(bg = "#99aaff", border = "#000000", family = "Avenir Heavy",
  pkg = "kaggler", pkg_size = 34, pkg_color = "#ffffff", pkg_y = -.30,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#000000", icon_size = 60,
  url = "")

p + ggsave("PNG/kaggler.png", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

p + ggsave("SVG/kaggler.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

##----------------------------------------------------------------------------##
##                                     chr                                    ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#d16166", border = "#550000", family = "Avenir Heavy",
  pkg = "chr", pkg_size = 38, pkg_color = "#ffffff", pkg_y = -.33,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#ffffff", icon_size = 54,
  url = "")

p + ggsave("PNG/chr.png", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

p + ggsave("SVG/chr.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

##----------------------------------------------------------------------------##
##                                   useapi                                   ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#ffffff", border = "#444266", family = "Avenir Heavy",
  pkg = "use     pi", pkg_size = 32, pkg_color = "#716e9e", pkg_y = -0.1,
  icon = "", fa = "Font Awesome 5 Free Solid", icon_x = .1125, icon_y = .025,
  icon_color = "#a8a4e8", icon_size = 66,
  url = "")

p + ggsave("PNG/useapi.png", width = (1.73/2) * 8, height = 8, units = "in",
    bg = "transparent")

p + ggsave("SVG/useapi.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

##----------------------------------------------------------------------------##
##                                   hexagon                                  ##
##----------------------------------------------------------------------------##


p <- make_hexsticker(bg = "#ffffff", border = "#003366", family = "Avenir Heavy",
  pkg = "hexagon", pkg_size = 32, pkg_color = "#003366", pkg_y = -.295,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#a8a4e8", icon_size = 74, icon_y = .28,
  url = "")

p + ggsave("PNG/hexagon.png", width = (1.73/2) * 8, height = 8, units = "in",
    bg = "transparent")

p + ggsave("SVG/hexagon.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

##----------------------------------------------------------------------------##
##                                  warcraft                                  ##
##----------------------------------------------------------------------------##


p <- make_hexsticker(bg = "#a55029", border = "#331100", family = "Avenir Heavy",
  pkg = "warcraft", pkg_size = 32, pkg_color = "#ffffff", pkg_y = -.295,
  icon = "", fa = "Font Awesome 5 Brands",
  icon_color = "#ffffff", icon_size = 74, icon_y = .3,
  url = "")

p + ggsave("PNG/warcraft.png", width = (1.73/2) * 8, height = 8, units = "in",
    bg = "transparent")

p + ggsave("SVG/warcraft.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")


##----------------------------------------------------------------------------##
##                                     ig                                     ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#faff00", border = "#8100a8", family = "Avenir Heavy",
  pkg = "ig", pkg_size = 46, pkg_color = "#8100a8", pkg_y = -.295,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#8100a8", icon_size = 64, icon_y = .3,
  url = "")

p + ggsave("PNG/ig.png", width = (1.73/2) * 8, height = 8, units = "in",
    bg = "transparent")

p + ggsave("SVG/ig.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")


##----------------------------------------------------------------------------##
##                                  wordword                                  ##
##----------------------------------------------------------------------------##


p <- make_hexsticker2(bg1 = "#999999", bg2 = "#f0f0f0",
  border1 = "#000000", border2 = "#666666",
  family = "Avenir Heavy", pkg = "", pkg_size = 21,
  pkg_color = "#000066", pkg_y = -.315,
  icon = " word ", fa = "Avenir Heavy",
  icon_color = "#000000", icon_size = 22, icon_y = .2,
  url = "")

p + ggsave("PNG/wordword.png", width = (1.73/2) * 8,
    height = 8, units = "in", bg = "transparent")

p + ggsave("SVG/wordword.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")


##----------------------------------------------------------------------------##
##                                  smartread                                 ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#00a89c", border = "#002211", family = "Avenir Heavy",
  pkg = "smartread", pkg_size = 28, pkg_color = "#ffffff", pkg_y = -.295,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#ffffff", icon_size = 64, icon_y = .25,
  url = "")

p + ggsave("PNG/smartread.png", width = (1.73/2) * 8,
    height = 8, units = "in", bg = "transparent")

p + ggsave("SVG/smartread.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")


##----------------------------------------------------------------------------##
##                                   newsAPI                                  ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#e53941", border = "#000000", family = "Avenir Heavy",
  pkg = "newsAPI", pkg_size = 28, pkg_color = "#ffffff", pkg_y = -.295,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#ffffff", icon_size = 64, icon_y = .25,
  url = "")

p + ggsave("PNG/newsAPI.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggsave("SVG/newsAPI.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")


##----------------------------------------------------------------------------##
##                                   researchgate                                   ##
##----------------------------------------------------------------------------##


p <- make_hexsticker_backspot(bg = "#00CCBB", border = "#004455", family = "Avenir Heavy",
  pkg = "", pkg_size = 24, pkg_color = "#ffffff", pkg_y = -.295,
  icon = "", fa = "Font Awesome 5 Brands",
  icon_color = "#00CCBB", icon_size = 122, icon_y = .05,
  url = "", backspot_data = data.frame(x = c(-.3, .3, .3, -.3), y = c(-.275, -.275, .3, .3)),
  backspot_fill = "white")

p + ggsave("PNG/research-gate.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggsave("SVG/research-gate.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")




##----------------------------------------------------------------------------##
##                                 friendship                                 ##
##----------------------------------------------------------------------------##


p <- make_hexsticker(bg = "#ffffff", border = "#000000", family = "Avenir Heavy",
  pkg = "friendship", pkg_size = 28, pkg_color = "#000000", pkg_y = -.295,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#000000", icon_size = 64, icon_y = .25,
  url = "")

p + ggsave("PNG/friendship.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggsave("SVG/friendship.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

##----------------------------------------------------------------------------##
##                                   scholar                                  ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#ffffff", border = "#db3236", family = "Avenir Heavy",
  pkg = "scholar", pkg_size = 34, pkg_color = "#f4c20d", pkg_y = -.325,
  icon = "", fa = "Font Awesome 5 Brands",
  icon_color = "#4885ed", icon_size = 64, icon_y = .275,
  url = "")

p + ggsave("PNG/google-scholar.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggsave("SVG/google-scholar.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")


##----------------------------------------------------------------------------##
##                                     CV                                     ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#ffffff", border = "#000000", family = "Avenir Heavy",
  pkg = "CV", pkg_size = 78, pkg_color = "#000000", pkg_y = 0,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#ffffff", icon_size = 64, icon_y = .25,
  url = "")

p + ggsave("PNG/cv.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggsave("SVG/cv.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")


##----------------------------------------------------------------------------##
##                                   github                                   ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#000000", border = "#000000", family = "Avenir Heavy",
  pkg = "", pkg_size = 78, pkg_color = "#000000", pkg_y = 0,
  icon = "", fa = "Font Awesome 5 Brands",
  icon_color = "#ffffff", icon_size = 98, icon_y = .05,
  url = "")

p + ggsave("PNG/github.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggsave("SVG/github.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")




##----------------------------------------------------------------------------##
##                                   twitter                                  ##
##----------------------------------------------------------------------------##


p <- make_hexsticker(bg = "#1DA1F2", border = "#1DA1F2", family = "Avenir Heavy",
  pkg = "", pkg_size = 78, pkg_color = "#ffffff", pkg_y = 0,
  icon = "", fa = "Font Awesome 5 Brands",
  icon_color = "#ffffff", icon_size = 88, icon_y = .05,
  url = "")

p + ggsave("PNG/twitter.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggsave("SVG/twitter.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")



##----------------------------------------------------------------------------##
##                                  journ8016                                 ##
##----------------------------------------------------------------------------##


p <- make_hexsticker(bg = "#F1B82D", border = "#000000", family = "Avenir Heavy",
  pkg = "JOURN_8016", pkg_size = 20, pkg_color = "#000000", pkg_y = -.29,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#000000", icon_size = 62, icon_y = .275,
  url = "stat.mikewk.com", url_color = "#000000",
  url_size = 10, url_x = .38, url_y = -.67)

p + ggsave("PNG/journ8016.png", width = (1.73/2) * 8,
           height = 8, units = "in", bg = "transparent")

p + ggsave("SVG/journ8016.svg", width = (1.73/2) * 8,
           height = 8, units = "in", bg = "transparent")




##----------------------------------------------------------------------------##
##                                getwebdata                                  ##
##----------------------------------------------------------------------------##


p <- make_hexsticker(bg = "#ff66aa", border = "#993366", family = "Avenir Heavy",
  pkg = "getwebdata", pkg_size = 20, pkg_color = "#ffffff", pkg_y = -.29,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#993366", icon_size = 62, icon_y = .275,
  url = "getwebdata.mikewk.com", url_color = "#ffffff",
  url_size = 7, url_x = .38, url_y = -.67)

p + ggsave("PNG/getwebdata.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggsave("SVG/getwebdata.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")



##----------------------------------------------------------------------------##
##                              data-scribers                                 ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#303036", border = "#000000", family = "Avenir Heavy",
  pkg = "data-scribers", pkg_size = 22, pkg_color = "#ffffff", pkg_y = -.275,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#dd3399", icon_size = 66, icon_y = .275,
  url = "data-scribers.mikewk.com", url_color = "#dd3399",
  url_size = 7, url_x = .38, url_y = -.67)

p + ggsave("PNG/data-scribers.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggsave("SVG/data-scribers.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")








##----------------------------------------------------------------------------##
##                                mizzourahmd                                 ##
##----------------------------------------------------------------------------##


p <- make_hexsticker(bg = "#F1B82D", border = "#000000", family = "Avenir Heavy",
  pkg = "mizzourahmd", pkg_size = 20, pkg_color = "#000000", pkg_y = -.265,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#000000", icon_size = 62, icon_y = .275,
  url = "mizzourahmd.mikewk.com", url_color = "#000000",
  url_size = 7, url_x = .38, url_y = -.67)

p + ggsave("PNG/mizzourahmd.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggsave("SVG/mizzourahmd.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")




##----------------------------------------------------------------------------##
##                                 reflowdoc                                  ##
##----------------------------------------------------------------------------##


p <- make_hexsticker(bg = "#fff0ff", border = "#6f606f", family = "Avenir Heavy",
  pkg = "reflowdoc", pkg_size = 28, pkg_color = "#6f606f", pkg_y = -.275,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#cc8800", icon_size = 62, icon_y = .295,
  url = "reflowdoc.mikewk.com", url_color = "#cc8800",
  url_size = 8, url_x = .38, url_y = -.67)

p + ggsave("PNG/reflowdoc.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggsave("SVG/reflowdoc.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")






##----------------------------------------------------------------------------##
##                               comissourian                                 ##
##----------------------------------------------------------------------------##
p <- make_hexsticker(bg = "#ffffff", border = "#2f4879",
  family = "Clarendon Cn BT Bold",
  pkg = "MISSOURIAN", pkg_size = 30, pkg_color = "#2f4879", pkg_y = .0,
  icon = "  ", fa = "stateshapes",
  icon_color = "#2f487955", icon_size = 54, icon_y = .24,
  url = "columbiamissourian.com", url_color = "#2f4879",
  url_size = 9, url_x = .38, url_y = -.67)

p + ggsave("PNG/comissourian.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")






##----------------------------------------------------------------------------##
##                                viewtweets                                  ##
##----------------------------------------------------------------------------##


p <- make_hexsticker(bg = "#2244bb", border = "#002266", family = "Avenir Heavy",
  pkg = "viewtweets", pkg_size = 26, pkg_color = "#ffffff", pkg_y = -.25,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#ffffff", icon_size = 62, icon_y = .295,
  url = "viewtweets.mikewk.com", url_color = "#ffffff",
  url_size = 7, url_x = .38, url_y = -.67)

p + ggsave("PNG/viewtweets.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")
p + ggsave("SVG/viewtweets.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")





##----------------------------------------------------------------------------##
##                                qualtricks                                  ##
##----------------------------------------------------------------------------##


p <- make_hexsticker(bg = "#c5050c", border = "#282728", family = "Avenir Heavy",
  pkg = "qualtricks", pkg_size = 30, pkg_color = "#f7f7f7", pkg_y = -.255,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#9b0000", icon_size = 62, icon_y = .295,
  url = "qualtricks.mikewk.com", url_color = "#f7f7f7",
  url_size = 8, url_x = .38, url_y = -.67)

p + ggsave("PNG/qualtricks.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")
p + ggsave("SVG/qualtricks.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")





##----------------------------------------------------------------------------##
##                                   dapr                                     ##
##----------------------------------------------------------------------------##


p <- make_hexsticker(bg = "#c5050c", border = "#282728", family = "Avenir Heavy",
  pkg = "dapr", pkg_size = 30, pkg_color = "#f7f7f7", pkg_y = -.255,
  icon = "", fa = "Font Awesome 5 Brands",
  icon_color = "#9b0000", icon_size = 62, icon_y = .295,
  url = "dapr.mikewk.com", url_color = "#f7f7f7",
  url_size = 8, url_x = .38, url_y = -.67)

p <- make_hexsticker_backspot(
  bg = "#000000", border = "#000000", family = "Avenir Heavy",
  pkg = "dapr", pkg_size = 34, pkg_color = "#ffffff", pkg_y = -.295,
  icon = "", fa = "Font Awesome 5 Brands",
  icon_color = "#000000", icon_size = 72, icon_y = .25,
  url = "dapr.mikewk.com",
  backspot_data = data.frame(x = c(-.2, .2, .2, -.2), y = c(-.1, -.1, .55, .55)),
  backspot_fill = "#ffffff")


p + ggsave("PNG/dapr.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggsave("SVG/dapr.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")







##----------------------------------------------------------------------------##
##                               DATA SCIENCE\nANALYTICS                      ##
##----------------------------------------------------------------------------##
p <- make_hexsticker(bg = "#F1B82D", border = "#000000",
  family = "Clarendon Cn BT Bold",
  pkg = "Data Science &", pkg_size = 22, pkg_color = "#000000", pkg_y = -.1,
  icon = "MU", fa = "Clarendon LT Std",
  icon_color = "#000000", icon_size = 54, icon_y = .295,
  url = "dsa.missouri.edu", url_color = "#000000",
  url_family = "Avenir Heavy",
  url_size = 8, url_x = .38, url_y = -.67)

p <- p +
  geom_text(data = data.frame(x = 0, y = -.35),
    aes(label = "Analytics"), family = "Clarendon LT Std",
    color = "#000000", size = 21)

p + ggsave("PNG/mudsa.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")



##----------------------------------------------------------------------------##
##                                   DOWHEN                                   ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#600060", border = "#300030", family = "Avenir Heavy",
  pkg = "dowhen", pkg_size = 30, pkg_color = "#ffffff", pkg_y = -.255,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#f060f0", icon_size = 62, icon_y = .295,
  url = "dowhen.mikewk.com", url_color = "#f060f0",
  url_size = 8, url_x = .38, url_y = -.67)

p + ggsave("PNG/dowhen.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")
p + ggsave("SVG/dowhen.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")
