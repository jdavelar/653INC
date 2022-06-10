###########  CLEANING & PREP FUNCTIONS   ###########

# centering continuous variables
center <- function(x){
  x - mean(x)
}

# removing prefixes
# need to figure out a way to loop through this for all prefixes c(b_, c_, d_, e_)
# code used in cleaning doc to modify:
# rename_at(vars(starts_with("b_")), function(x) str_remove(x, "^b_"))

# add NAs to a vector for matching in DF
# empty_pad <- function(x, n){
#   n <- is.integer
#   x <- rep(NA, times = n)
#   print(x)
# }

###########   FUNCTIONS FOR ANALYSIS   ###########
# replace yes/no with numeric values
numeric_dichot <- function(x){
  x[] <- ifelse(x == "yes", 1, 0)
x}
#test function
# test <- c(rep("yes", 5), rep("no", 4))
# numeric_dichot(test)

# raw difference scores
raw_diff <- function(x, y){
abs(round(100*(x - y), 2))
}

#add prefix
# prefix <- function(x, y..) {
#   paste0(x, y)
# }
# #test function
# pre <- "score"
# suff <- c("region1", "region2")
# prefix(pre, suff)

# create percentage scores
# pct_score <- function(x, y){
# 
# }

###########   FUNCTIONS FOR PLOTTING AND STYLING   ###########
library(systemfonts)
if(!all(c("Dosis", "Barlow") %in% system_fonts()$family)) {
  ## Fonts used for plots:
  ## Dosis: https://fonts.google.com/specimen/Dosis
  ## Barlow : https://fonts.google.com/specimen/Barlow
  warning(
    "The following fonts need to be installed:
    See functions.R file for more information."
  )
}
#colors to use in plots
custom_cols = c("#276065","#d5d1c6","#cf9457","#c05750","#9da2a5", "#610629")
#teal, tan, brown, copper, gray, burnt orange

#custom theme for mean difference plots
library(ggthemes)
theme_final <- function(){
  font <- "Dosis"
  theme_minimal() %+replace%
    theme(
  plot.title = element_text(
    family = "Barlow",
    size = 18,
    color = "black",
    hjust = 0.5),
  plot.subtitle = element_text(
    family = "Barlow",
    size = 14,
    color = "black",
    hjust = 0.5),
  plot.background = element_blank(),
  axis.text = element_text(
    colour = "black",
    family = "Barlow",
    size = 12),
  axis.text.x = element_text(
    angle = -55, hjust = 0
  ),
  axis.title = element_text(
    colour = "black",
    size = 12)
    )
}

#theme_set(theme_final)
