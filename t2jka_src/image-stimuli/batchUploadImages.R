# Define the working folder
path <- "C:\\your project folder" # Make sure you change this line!
setwd(path)

# Define the file that contains images and their URLs
imageURL_filename <- "imageURL"
# Define the output filename
imageURL_output <- paste(imageURL_filename, "-upload.txt", sep="")

# Define text components for questions and choices
# These can be changed if you need to
TE <- "How old is this animal?"
MC <- "Where does this animal live?"
choices <- c("Water","Sky","No idea")
rating_prompt <- "Please rate how much you agree with the following statements."
rating_statements <- c("This animal is suitable for a house pet.","I would not want this animal to be in my home.")

# Pre-tag the 'choice' texts 
choices_formatted <- paste(paste(choices,"\n"),collapse=" ")
rating_statements_formatted <- paste(paste("[[Choice]] \n",rating_statements,"\n"),collapse=" ")

# A function that reads in one line in the csv file, add tags and texts around it, and write the output line into an output file
add_tags <- function(l,o){
  image_no <- strsplit(as.character(l[1]),"\\.")[[1]][1]
  image_URL <- paste("<img src='", as.character(l[2]),"'>",sep="")
  write(paste("[[Block:", image_no, "]] \n
              [[Question:DB]] \n [[ID:", image_no, "-image]] \n", image_URL, " \n
              [[Question:TE:SingleLine]] \n [[ID:", image_no, "-TE]] \n", TE, " \n
              [[Question:MC:SingleAnswer:Vertical]] \n [[ID:", image_no, "-MC]] \n", MC, " \n [[Choices]] \n", choices_formatted, "\n
              [[Question:Matrix]] \n [[ID:", image_no, "-ratings]] \n ",rating_prompt," \n [[AdvancedChoices]] \n ", rating_statements_formatted, 
              "\n [[AdvancedAnswers]] \n [[Answer]] \n","1 - Strongly Disagree", "\n [[Answer]] \n 2 \n [[Answer]] \n 3 \n [[Answer]] \n 4 \n [[Answer]] \n 5 \n [[Answer]] \n 6 \n [[Answer]] \n", "7 - Strongly Agree"," \n [[PageBreak]] \n", sep = ""), o, append = TRUE)
}

# Apply the function to the csv file
file_to_read <- read.csv(paste(imageURL_filename, ".csv",sep=""), header=TRUE, stringsAsFactors = FALSE)
write("[[AdvancedFormat]] \n", imageURL_output)
apply(file_to_read, 1, add_tags, imageURL_output)

