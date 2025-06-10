# Developed by Xiao Yang (emilyyangxiao@gmail.com), KU Linguistics
# Free to use and modify
# If you repost or share the code, acknowledgement is highly appreciated!

# Make sure the column layout in your Excel spreadsheets is like the following:
## No column header on the first row
## The first 2 columns contain stimuli numbers and condition names;
## The 3rd column contains the sentence stimuli;
## The rest of the columns contain options with one option per column.

# If you need a different column layout, you'll have to tweak the indices for your own needs, or ask Xiao

# myLists includes all the txt files starting with 'list' in the name
myLists <- list.files(pattern = "list.*.txt")

# nOpt stores the number of options for each question
nOpt <- as.integer(readline(prompt = "How many options do you have for each question? "))

# addMultiChoiceDif takes a vector x as input and spits out a vector y by adding the question tags and the options
addMultiChoiceDif <- function(x, y){
  optio <- paste(c(paste(x[-(1:nOpt)], " \n ", sep = "")), collapse = "")
  write(paste("[[Block:", x[1], x[2], "]] \n [[Question:MC:SingleAnswer:Horizontal]] \n [[ID:", x[1], x[2], "]] \n ", x[3]," \n [[Choices]] \n ", optio, sep = ""), y, append = TRUE)
}

# the for loop goes through all the files in myLists and applies addMultiChoiceDif to each row in the current file
for (k in 1:length(myLists)) {
  i <- paste("list", k, ".txt", sep = "")
  o <- paste("upload", k, ".txt", sep = "")
  f <- read.delim(i, header = FALSE, stringsAsFactors = FALSE)
  write("[[AdvancedFormat]] \n", o)
  apply(f, 1, addMultiChoiceDif, o)
}

rm(list=ls())
