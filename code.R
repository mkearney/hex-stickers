source("funs.R")
##----------------------------------------------------------------------------##
##                                   rtweet                                   ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(pkg = "rtweet", bg = "#ffffff", border = "#002255", icon = "",
  icon_color = "#003366cc", family = "Avenir Heavy", icon_size = 80, pkg_size = 32,
  url = "rtweet.info", pkg_color = "#003366",
  url_color = "#003366", fa = "Font Awesome 5 Brands")

p + ggplot2::ggsave("PNG/rtweet.png", width = (1.73/2) * 8,
    height = 8, units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/rtweet.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")


##----------------------------------------------------------------------------##
##                                textfeatures                                ##
##----------------------------------------------------------------------------##


p <- make_hexsticker(pkg = "textfeatures", bg = "#3366ff", border = "#002299",
  icon = "", icon_color = "#ffffff", icon_size = 60,
  pkg_size = 26, pkg_y = -.32, family = "Avenir Heavy",
  url = "", pkg_color = "#ffffff",
  fa = "Font Awesome 5 Free Solid")

p + ggplot2::ggsave("PNG/textfeatures.png", width = (1.73/2) * 8, height = 8,
    units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/textfeatures.svg", width = (1.73/2) * 8, height = 8,
  units = "in", bg = "transparent")

##----------------------------------------------------------------------------##
##                                  pkgverse                                  ##
##----------------------------------------------------------------------------##


p <- make_hexsticker(pkg = "pkgverse", bg = "#d16cb8", border = "#220022", icon = "",
  icon_color = "#220022", family = "Avenir Heavy", icon_size = 60,
  pkg_size = 28, pkg_y = -.28, icon_y = .275,
  url = "", pkg_color = "#ffffff",
  fa = "Font Awesome 5 Free Solid")

p + ggplot2::ggsave("PNG/pkgverse.png", width = (1.73/2) * 8, height = 8, units = "in",
    bg = "transparent")

p + ggplot2::ggsave("SVG/pkgverse.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")


##----------------------------------------------------------------------------##
##                                    tfse                                    ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#f0f0f0", border = "#00440a", family = "Avenir Heavy",
  pkg = "tfse", pkg_size = 46, pkg_color = "#2d8244",
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#2d8244", icon_size = 50,
  url = "")

p + ggplot2::ggsave("PNG/tfse.png", width = (1.73/2) * 8, height = 8, units = "in",
    bg = "transparent")

p + ggplot2::ggsave("SVG/tfse.svg", width = (1.73/2) * 8, height = 8, units = "in",
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
  ggplot2::geom_line(data = data.frame(x = c(.2, .725), y = c(-.025, .3125)),
    color = "#991111", size = 4) +
  ggplot2::geom_line(data = data.frame(x = c(-.2, -.65), y = c(-.055, -.12)),
    color = "#119911", size = 3)

p + ggplot2::ggsave("PNG/tweetbotornot.png", width = (1.73/2) * 8, height = 8,
  units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/tweetbotornot.svg", width = (1.73/2) * 8, height = 8,
  units = "in", bg = "transparent")


##----------------------------------------------------------------------------##
##                                 tidyversity                                ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#7D7D7D", border = "#000000", family = "Avenir Heavy",
  pkg = "tidyversity", pkg_size = 28, pkg_color = "#ffffff", pkg_y = -.315,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#F1B82D", icon_size = 64,
  url = "")

p + ggplot2::ggsave("PNG/tidyversity.png", width = (1.73/2) * 8, height = 8,
  units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/tidyversity.svg", width = (1.73/2) * 8, height = 8,
  units = "in", bg = "transparent")


##----------------------------------------------------------------------------##
##                                   tidyreg                                  ##
##----------------------------------------------------------------------------##


make_hexsticker(bg = "#7D7D7D", border = "#000000", family = "Avenir Heavy",
  pkg = "tidyreg", pkg_size = 28, pkg_color = "#ffffff", pkg_y = -.315,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#F1B82D", icon_size = 64,
  url = "")

p + ggplot2::ggsave("PNG/tidyreg.png", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

p + ggplot2::ggsave("SVG/tidyreg.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")


##----------------------------------------------------------------------------##
##                                   tidysem                                  ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#7D7D7D", border = "#000000", family = "Avenir Heavy",
  pkg = "tidysem", pkg_size = 28, pkg_color = "#ffffff", pkg_y = -.315,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#F1B82D", icon_size = 64,
  url = "")

p + ggplot2::ggsave("PNG/tidysem.png", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

p + ggplot2::ggsave("SVG/tidysem.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")


##----------------------------------------------------------------------------##
##                                   tidymlm                                  ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#7D7D7D", border = "#000000", family = "Avenir Heavy",
  pkg = "tidymlm", pkg_size = 28, pkg_color = "#ffffff", pkg_y = -.315,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#F1B82D", icon_size = 64,
  url = "")

p + ggplot2::ggsave("PNG/tidymlm.png", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

p + ggplot2::ggsave("SVG/tidymlm.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")


##----------------------------------------------------------------------------##
##                                   tidycor                                  ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#7D7D7D", border = "#000000", family = "Avenir Heavy",
  pkg = "tidycor", pkg_size = 28, pkg_color = "#ffffff", pkg_y = -.315,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#F1B82D", icon_size = 64,
  url = "")

p + ggplot2::ggsave("PNG/tidycor.png", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

p + ggplot2::ggsave("SVG/tidycor.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")



##----------------------------------------------------------------------------##
##                                   tidycat                                  ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#7D7D7D", border = "#000000", family = "Avenir Heavy",
  pkg = "tidycat", pkg_size = 28, pkg_color = "#ffffff", pkg_y = -.315,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#F1B82D", icon_size = 64,
  url = "")

p + ggplot2::ggsave("PNG/tidycat.png", width = (1.73/2) * 8, height = 8, units = "in",
    bg = "transparent")

p + ggplot2::ggsave("SVG/tidycat.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

##----------------------------------------------------------------------------##
##                                   funique                                  ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "greenyellow", border = "#003333", family = "Avenir Heavy",
  pkg = "funique", pkg_size = 32, pkg_color = "#003333", pkg_y = -.315,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#003333", icon_size = 64,
  url = "")

p + ggplot2::ggsave("PNG/funique.png", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

p + ggplot2::ggsave("SVG/funique.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")





##----------------------------------------------------------------------------##
##                                  name2sex                                  ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#FFA500", border = "#994500", family = "Avenir Heavy",
  pkg = "name2sex", pkg_size = 28, pkg_color = "#ffffff", pkg_y = -.315,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#ffffff", icon_size = 70,
  url = "")

p + ggplot2::ggsave("PNG/name2sex.png", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

p + ggplot2::ggsave("SVG/name2sex.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

##----------------------------------------------------------------------------##
##                                   nytimes                                  ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#ffffff", border = "#000000", family = "Avenir Heavy",
  pkg = "nytimes", pkg_size = 32, pkg_color = "#000000", pkg_y = -.305,
  icon = "", fa = "Font Awesome 5 Free",
  icon_color = "#000000", icon_size = 70,
  url = "")

p + ggplot2::ggsave("PNG/nytimes.png", width = (1.73/2) * 8, height = 8, units = "in",
    bg = "transparent")

p + ggplot2::ggsave("SVG/nytimes.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

##----------------------------------------------------------------------------##
##                                     nyt                                    ##
##----------------------------------------------------------------------------##


p <- make_hexsticker(bg = "#ffffff", border = "#000000", family = "Avenir Heavy",
  pkg = "nyt", pkg_size = 36, pkg_color = "#000000", pkg_y = -.305,
  icon = "", fa = "Font Awesome 5 Free",
  icon_color = "#000000", icon_size = 70,
  url = "")

p + ggplot2::ggsave("PNG/nyt.png", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

p + ggplot2::ggsave("SVG/nyt.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

##----------------------------------------------------------------------------##
##                                   kaggler                                  ##
##----------------------------------------------------------------------------##


p <- make_hexsticker(bg = "#99aaff", border = "#000000", family = "Avenir Heavy",
  pkg = "kaggler", pkg_size = 34, pkg_color = "#ffffff", pkg_y = -.30,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#000000", icon_size = 60,
  url = "")

p + ggplot2::ggsave("PNG/kaggler.png", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

p + ggplot2::ggsave("SVG/kaggler.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

##----------------------------------------------------------------------------##
##                                     chr                                    ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#d16166", border = "#550000", family = "Avenir Heavy",
  pkg = "chr", pkg_size = 38, pkg_color = "#ffffff", pkg_y = -.33,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#ffffff", icon_size = 54,
  url = "")

p + ggplot2::ggsave("PNG/chr.png", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

p + ggplot2::ggsave("SVG/chr.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

##----------------------------------------------------------------------------##
##                                   useapi                                   ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#ffffff", border = "#444266", family = "Avenir Heavy",
  pkg = "use     pi", pkg_size = 32, pkg_color = "#716e9e", pkg_y = -0.1,
  icon = "", fa = "Font Awesome 5 Free Solid", icon_x = .1125, icon_y = .025,
  icon_color = "#a8a4e8", icon_size = 66,
  url = "")

p + ggplot2::ggsave("PNG/useapi.png", width = (1.73/2) * 8, height = 8, units = "in",
    bg = "transparent")

p + ggplot2::ggsave("SVG/useapi.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

##----------------------------------------------------------------------------##
##                                   hexagon                                  ##
##----------------------------------------------------------------------------##


p <- make_hexsticker(bg = "#ffffff", border = "#003366", family = "Avenir Heavy",
  pkg = "hexagon", pkg_size = 32, pkg_color = "#003366", pkg_y = -.295,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#a8a4e8", icon_size = 74, icon_y = .28,
  url = "")

p + ggplot2::ggsave("PNG/hexagon.png", width = (1.73/2) * 8, height = 8, units = "in",
    bg = "transparent")

p + ggplot2::ggsave("SVG/hexagon.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")

##----------------------------------------------------------------------------##
##                                  warcraft                                  ##
##----------------------------------------------------------------------------##


p <- make_hexsticker(bg = "#a55029", border = "#331100", family = "Avenir Heavy",
  pkg = "warcraft", pkg_size = 32, pkg_color = "#ffffff", pkg_y = -.295,
  icon = "", fa = "Font Awesome 5 Brands",
  icon_color = "#ffffff", icon_size = 74, icon_y = .3,
  url = "")

p + ggplot2::ggsave("PNG/warcraft.png", width = (1.73/2) * 8, height = 8, units = "in",
    bg = "transparent")

p + ggplot2::ggsave("SVG/warcraft.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")


##----------------------------------------------------------------------------##
##                                     ig                                     ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#faff00", border = "#8100a8", family = "Avenir Heavy",
  pkg = "ig", pkg_size = 46, pkg_color = "#8100a8", pkg_y = -.295,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#8100a8", icon_size = 64, icon_y = .3,
  url = "")

p + ggplot2::ggsave("PNG/ig.png", width = (1.73/2) * 8, height = 8, units = "in",
    bg = "transparent")

p + ggplot2::ggsave("SVG/ig.svg", width = (1.73/2) * 8, height = 8, units = "in",
  bg = "transparent")


##----------------------------------------------------------------------------##
##                                  wordword                                  ##
##----------------------------------------------------------------------------##


p <- make_hexsticker2(bg1 = "#555555", bg2 = "#dddddd",
  border1 = "#555555", border2 = "#dddddd",
  family = "Avenir Next LT Pro Heavy", pkg = "", pkg_size = 21,
  pkg_color = "transparent", pkg_y = -.315,
  icon = " word ", fa = "Avenir Next LT Pro Heavy",
  icon_color = "#999999", icon_size = 22, icon_y = .2,
  url = "wordword.mikewk.com", url_color = "#999999",
  url_family = "Avenir Next LT Pro Bold")

p + ggplot2::ggsave("PNG/wordword.png", width = (1.73/2) * 8,
    height = 8, units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/wordword.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")


##----------------------------------------------------------------------------##
##                                  smartread                                 ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#00a89c", border = "#002211", family = "Avenir Heavy",
  pkg = "smartread", pkg_size = 28, pkg_color = "#ffffff", pkg_y = -.295,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#ffffff", icon_size = 64, icon_y = .25,
  url = "")

p + ggplot2::ggsave("PNG/smartread.png", width = (1.73/2) * 8,
    height = 8, units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/smartread.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")


##----------------------------------------------------------------------------##
##                                   newsAPI                                  ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#e53941", border = "#000000", family = "Avenir Heavy",
  pkg = "newsAPI", pkg_size = 28, pkg_color = "#ffffff", pkg_y = -.295,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#ffffff", icon_size = 64, icon_y = .25,
  url = "")

p + ggplot2::ggsave("PNG/newsAPI.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/newsAPI.svg", width = (1.73/2) * 8,
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

p + ggplot2::ggsave("PNG/research-gate.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/research-gate.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")




##----------------------------------------------------------------------------##
##                                 friendship                                 ##
##----------------------------------------------------------------------------##


p <- make_hexsticker(bg = "#ffffff", border = "#000000", family = "Avenir Heavy",
  pkg = "friendship", pkg_size = 28, pkg_color = "#000000", pkg_y = -.295,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#000000", icon_size = 64, icon_y = .25,
  url = "")

p + ggplot2::ggsave("PNG/friendship.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/friendship.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

##----------------------------------------------------------------------------##
##                                   scholar                                  ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#ffffff", border = "#db3236", family = "Avenir Heavy",
  pkg = "scholar", pkg_size = 34, pkg_color = "#f4c20d", pkg_y = -.325,
  icon = "", fa = "Font Awesome 5 Brands",
  icon_color = "#4885ed", icon_size = 64, icon_y = .275,
  url = "")

p + ggplot2::ggsave("PNG/google-scholar.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/google-scholar.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")


##----------------------------------------------------------------------------##
##                                     CV                                     ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#ffffff", border = "#000000", family = "Avenir Heavy",
  pkg = "CV", pkg_size = 78, pkg_color = "#000000", pkg_y = 0,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#ffffff", icon_size = 64, icon_y = .25,
  url = "")

p + ggplot2::ggsave("PNG/cv.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/cv.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")


##----------------------------------------------------------------------------##
##                                   github                                   ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#000000", border = "#000000", family = "Avenir Heavy",
  pkg = "", pkg_size = 78, pkg_color = "#000000", pkg_y = 0,
  icon = "", fa = "Font Awesome 5 Brands",
  icon_color = "#ffffff", icon_size = 98, icon_y = .05,
  url = "")

p + ggplot2::ggsave("PNG/github.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/github.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")




##----------------------------------------------------------------------------##
##                                   twitter                                  ##
##----------------------------------------------------------------------------##


p <- make_hexsticker(bg = "#1DA1F2", border = "#1DA1F2", family = "Avenir Heavy",
  pkg = "", pkg_size = 78, pkg_color = "#ffffff", pkg_y = 0,
  icon = "", fa = "Font Awesome 5 Brands",
  icon_color = "#ffffff", icon_size = 88, icon_y = .05,
  url = "")

p + ggplot2::ggsave("PNG/twitter.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/twitter.svg", width = (1.73/2) * 8,
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

p + ggplot2::ggsave("PNG/journ8016.png", width = (1.73/2) * 8,
           height = 8, units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/journ8016.svg", width = (1.73/2) * 8,
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

p + ggplot2::ggsave("PNG/getwebdata.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/getwebdata.svg", width = (1.73/2) * 8,
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

p + ggplot2::ggsave("PNG/data-scribers.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/data-scribers.svg", width = (1.73/2) * 8,
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

p + ggplot2::ggsave("PNG/mizzourahmd.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/mizzourahmd.svg", width = (1.73/2) * 8,
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

p + ggplot2::ggsave("PNG/reflowdoc.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/reflowdoc.svg", width = (1.73/2) * 8,
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

p + ggplot2::ggsave("PNG/comissourian.png", width = (1.73/2) * 8,
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

p + ggplot2::ggsave("PNG/viewtweets.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")
p + ggplot2::ggsave("SVG/viewtweets.svg", width = (1.73/2) * 8,
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

p + ggplot2::ggsave("PNG/qualtricks.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")
p + ggplot2::ggsave("SVG/qualtricks.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")





##----------------------------------------------------------------------------##
##                                   dapr                                     ##
##----------------------------------------------------------------------------##

p <- make_hexsticker_backspot(
  bg = "#000000", border = "#000000", family = "Apple Chancery",
  pkg = "dapr", pkg_size = 36, pkg_color = "#ffffff", pkg_y = -.295,
  icon = "", fa = "Font Awesome 5 Brands",
  icon_color = "#000000", icon_size = 72, icon_y = .25,
  url = "dapr.mikewk.com",
  backspot_data = data.frame(x = c(-.2, .2, .2, -.2), y = c(-.1, -.1, .55, .55)),
  backspot_fill = "#ffffff")

p + ggplot2::ggsave("PNG/dapr.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/dapr.svg", width = (1.73/2) * 8,
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
  ggplot2::geom_text(data = data.frame(x = 0, y = -.35),
    ggplot2::aes(label = "Analytics"), family = "Clarendon LT Std",
    color = "#000000", size = 21)

p + ggplot2::ggsave("PNG/mudsa.png", width = (1.73/2) * 8,
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

p + ggplot2::ggsave("PNG/dowhen.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")
p + ggplot2::ggsave("SVG/dowhen.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")





##----------------------------------------------------------------------------##
##                              SHOULDBEVERIFIED                              ##
##----------------------------------------------------------------------------##


p <- make_hexsticker2(bg1 = "#111111", bg2 = "#333333",
  border1 = "#000000", border2 = "#222222",
  family = "Avenir Heavy", pkg = "shouldbeverified", pkg_size = 21,
  pkg_color = "transparent", pkg_y = -.315,
  icon = " ", fa = "Font Awesome 5 Free Solid",
  icon_color = "#bbbbbb", icon_size = 42, icon_y = .2,
  url = "shouldbeverified.mikewk.com", url_color = "#ffffff") +
  ggplot2::geom_line(data = data.frame(x = c(.2, .725), y = c(-.025, .3125)),
    color = "#991111", size = 4) +
  ggplot2::geom_line(data = data.frame(x = c(-.2, -.65), y = c(-.055, -.12)),
    color = "#119911", size = 3)

p + ggplot2::ggsave("PNG/shouldbeverified.png", width = (1.73/2) * 8, height = 8,
  units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/shouldbeverified.svg", width = (1.73/2) * 8, height = 8,
  units = "in", bg = "transparent")



##----------------------------------------------------------------------------##
##                                  h.rtweet                                  ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(pkg = "h.rtweet", bg = "#aa0066cc", border = "#440022", icon = "",
  icon_color = "#ffffff", family = "Avenir Heavy", icon_size = 78, pkg_size = 30,
  icon_y = .30, pkg_y = -.29,
  url = "github.com/mkearney/h.rtweet", pkg_color = "#ffffff", url_size = 5,
  url_color = "#ffffff", fa = "Font Awesome 5 Brands", url_x = .4, url_y = -.665)

p + ggplot2::ggsave("PNG/h.rtweet.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/h.rtweet.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")





##----------------------------------------------------------------------------##
##                                   mmmm                                     ##
##----------------------------------------------------------------------------##


p <- make_hexsticker(bg = "#3B528BFF", border = "#22013cFF", family = "Comfortaa Bold",
  pkg = "mmmm", pkg_size = 36, pkg_color = "#AADC32FF", pkg_y = .05,
  icon = "", fa = "Font Awesome 5 Brands",
  icon_color = "#AADC32FF", icon_size = 28, icon_y = .295,
  url = "mmmm.mikewk.com", url_color = "#AADC32FF",
  url_size = 6, url_x = .38, url_y = -.67)

p + ggplot2::ggsave("PNG/mmmm.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/mmmm.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")


##----------------------------------------------------------------------------##
##                                  tbltools                                  ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#3B528BFF", border = "#22013cFF", family = "Avenir Heavy",
  pkg = "tbltools", pkg_size = 36, pkg_color = "#AADC32FF", pkg_y = -.255,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#AADC32FF", icon_size = 62, icon_y = .300,
  url = "tbltools.mikewk.com", url_color = "#AADC32FF",
  url_size = 8, url_x = .38, url_y = -.67)

p + ggplot2::ggsave("PNG/tbltools.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/tbltools.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")




##----------------------------------------------------------------------------##
##                                 datasci7637                                ##
##----------------------------------------------------------------------------##


p <- make_hexsticker(bg = "#F1B82D", border = "#000000", family = "Avenir Heavy",
  pkg = "DATA_SCI", pkg_size = 28, pkg_color = "#000000", pkg_y = -.23,
  icon = "",
  fa = "Font Awesome 5 Brands",
  icon_color = "#000000", icon_size = 30, icon_y = .45,
  url = "social-media.mikewk.com", url_color = "#000000",
  url_size = 6, url_x = .38, url_y = -.67)

p <- p +
  ggplot2::geom_text(data = data.frame(x = 0, y = -.51),
    ggplot2::aes(label = "7637"), family = "Avenir Heavy",
    size = 28) +
  ggplot2::geom_text(data = data.frame(x = 0, y = .14),
    ggplot2::aes(label = ""), family = "Font Awesome 5 Brands",
    color = "#000000", size = 30)

p + ggplot2::ggsave("PNG/datasci7637.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/datasci7637.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")



##----------------------------------------------------------------------------##
##                            rstudioconf19::ml                               ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#3B528BFF", border = "#22013cFF", family = "Inconsolata Bold",
  pkg = "rstudio::conf_19(", pkg_size = 16, pkg_color = "#AADC32FF", pkg_y = .23,
  icon = "", fa = "Inconsolata Bold",  #icon#"",
  icon_color = "#AADC32FF", icon_size = 42, icon_y = .580,
  url = "rstd.io/conf", url_color = "#AADC32FF",
  url_size = 8, url_x = .38, url_y = -.67)
p <- p +
  ggplot2::geom_text(data = data.frame(x = 0, y = -.045),
    ggplot2::aes(x = x, y = y, label = "  \"machine-learning\""),
    family = "Inconsolata Bold", size = 14, color = "#DDA500") +
  ggplot2::geom_text(data = data.frame(x = 0, y = -.25),
    ggplot2::aes(x = x, y = y, label = ")                "),
    family = "Inconsolata Bold", size = 16, color = "#AADC32FF")
p + ggplot2::ggsave("PNG/rstudioconf19-machine-learning.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/rstudioconf19-machine-learning.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

##----------------------------------------------------------------------------##
##                                  dataviz                                   ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#3B528BFF", border = "#22013cFF", family = "Avenir Heavy",
  pkg = "dataviz", pkg_size = 36, pkg_color = "#AADC32FF", pkg_y = -.255,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#AADC32FF", icon_size = 62, icon_y = .300,
  url = "dataviz.mikewk.com", url_color = "#AADC32FF",
  url_size = 8, url_x = .38, url_y = -.67)

p + ggplot2::ggsave("PNG/dataviz.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/dataviz.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")



##----------------------------------------------------------------------------##
##                                    fml                                     ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#3B528BFF", border = "#22013cFF", family = "Avenir Heavy",
  pkg = "fml", pkg_size = 58, pkg_color = "#AADC32FF", pkg_y = -.2,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#AADC32FF", icon_size = 46, icon_y = .395,
  url = "fml.mikewk.com", url_color = "#AADC32FF",
  url_size = 8, url_x = .38, url_y = -.67)

p + ggplot2::ggsave("PNG/fml.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/fml.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")





##----------------------------------------------------------------------------##
##                                   R CoMo                                   ##
##----------------------------------------------------------------------------##


p <- make_hexsticker(bg = "#F1B82D", border = "#000000", family = "Avenir Heavy",
  pkg = "R-CoMo", pkg_size = 30, pkg_color = "#000000", pkg_y = -.3,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#000000", icon_size = 64, icon_y = .285,
  url = "r-como.xyz             ", url_color = "#000000",
  url_size = 8, url_x = .38, url_y = -.67)

p + ggplot2::ggsave("PNG/r-como.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/r-como.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")



##----------------------------------------------------------------------------##
##                                cngtweets                                   ##
##----------------------------------------------------------------------------##


p <- make_hexsticker(bg = "#F1B82D", border = "#000000", family = "Avenir Heavy",
  pkg = "cngtweets", pkg_size = 30, pkg_color = "#000000", pkg_y = -.3,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#000000", icon_size = 64, icon_y = .285,
  url = "r-como.xyz             ", url_color = "#000000",
  url_size = 8, url_x = .38, url_y = -.67)

p + ggplot2::ggsave("PNG/r-como.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/r-como.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")


##----------------------------------------------------------------------------##
##                                 cngtweets                                  ##
##----------------------------------------------------------------------------##

p <- make_hexsticker2(bg1 = "#bb0a0a", bg2 = "#1000bb",
  border1 = "#990000", border2 = "#0a0099",
  family = "Avenir Heavy", pkg = "cngtweets", pkg_size = 21,
  pkg_color = "transparent", pkg_y = -.315,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#bbbbbb", icon_size = 42, icon_y = .2,
  url = "cngtweets.mikewk.com", url_color = "#ffffff")

p + ggplot2::ggsave("PNG/cngtweets.png", width = (1.73/2) * 8, height = 8,
  units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/cngtweets.svg", width = (1.73/2) * 8, height = 8,
  units = "in", bg = "transparent")


##----------------------------------------------------------------------------##
##                                  wibble                                    ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#ff66aa", border = "#882266", family = "Avenir Heavy",
  pkg = "", pkg_size = 28, pkg_color = "#ffffff", pkg_y = -.325,
  icon = "", fa = "Font Awesome 5 Brands",
  icon_color = "#882266", icon_size = 82, icon_y = .025,
  url = "wibble.mikewk.com", url_color = "#882266",
  url_size = 8, url_x = .38, url_y = -.67)

p + ggplot2::ggsave("PNG/wibble.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/wibble.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")



##----------------------------------------------------------------------------##
##                                 googler                                    ##
##----------------------------------------------------------------------------##

p <- make_hexsticker(bg = "#ffffff", border = "#0033dd", family = "Avenir Heavy",
  pkg = "googler", pkg_size = 28, pkg_color = "#00aa00", pkg_y = -.25,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#dd2222", icon_size = 52, icon_y = .275,
  url = "", url_color = "#00aa00",
  url_size = 8, url_x = .38, url_y = -.67)

p + ggplot2::ggsave("PNG/googler.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

p + ggplot2::ggsave("SVG/googler.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")




##----------------------------------------------------------------------------##
##                               patientinfo                                  ##
##----------------------------------------------------------------------------##
source("funs.R")
p <- make_hexsticker(bg = "#ee3333", border = "#660000", family = "Avenir Next LT Pro", face = "bold",
  pkg = "patientinfo", pkg_size = 26, pkg_color = "#ffffff", pkg_y = -.25,
  icon = "", fa = "Font Awesome 5 Free Solid",
  icon_color = "#ffffff", icon_size = 54, icon_y = .28,
  url = "", url_color = "#00aa00",
  url_size = 8, url_x = .38, url_y = -.67)

p + ggplot2::ggsave("PNG/patientinfo.png", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")

browseURL("PNG/patientinfo.png")
p + ggplot2::ggsave("SVG/patientinfo.svg", width = (1.73/2) * 8,
  height = 8, units = "in", bg = "transparent")
