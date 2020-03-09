# Functions for connecting, loading, saving data 

read_mushroom <- function(){
  df <- read_csv("data/F_and_C.csv", col_names = TRUE)
  df
}
