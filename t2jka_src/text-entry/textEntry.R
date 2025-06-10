# Developed by Xiao Yang (emilyyangxiao@gmail.com), KU Linguistics
# Free to use and modify
# If you repost or share the code, acknowledgement is highly appreciated!

# Make sure the column layout in your Excel spreadsheets is like the following:
## No column header on the first row
## The first 2 columns contain stimuli numbers and condition names;
## The 3rd column contains the sentence stimuli.

# If you need a different column layout, you'll have to tweak the indices for your own needs, or ask Xiao

myLists <- list.files(pattern = "list.*.txt")

# addTextEntry takes a row x as input and spits out a row y by adding the 'TextEntry' question tags
addTextEntry <- function(x, y){
  write(paste("[[Block:", x[1], x[2], "]] \n [[Question:TE:SingleLine]] \n [[ID:", x[1], x[2], "]] \n ", x[3],"\n \n", sep = ""), y, append = TRUE)
}

# for loop goes through all the 'list' files and applies addTextEntry to each row in the file
for (k in 1:length(myLists)) {
  i <- paste("list", k, ".txt", sep = "")
  o <- paste("upload", k, ".txt", sep = "")
  f <- read.delim(i, header = FALSE, stringsAsFactors = FALSE)
  write("[[AdvancedFormat]]", o)
  apply(f, 1, addTextEntry, o)
}

rm(list=ls())
