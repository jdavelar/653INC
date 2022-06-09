###########  CLEANING & PREP FUNCTIONS   ###########

# centering continuous variables
center <- function(x){
  x - mean(x)
}

# removing prefixes
# need to figure out a way to loop through this for all prefixes c(b_, c_, d_, e_)
# code used in cleaning doc to modify:
rename_at(vars(starts_with("b_")), function(x) str_remove(x, "^b_"))

# add NAs to a vector for matching in DF
empty_pad <- function(x, n){
  n <- is.integer
  x <- rep(NA, times = n)
  print(x)
}

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
prefix <- function(x, y..) {
  paste0(x, y)
}
#test function
pre <- "score"
suff <- c("region1", "region2")
prefix(pre, suff)

# create percentage scores
pct_score <- function(x){
  
}

###########   FUNCTIONS FOR PLOTTING AND STYLING   ###########