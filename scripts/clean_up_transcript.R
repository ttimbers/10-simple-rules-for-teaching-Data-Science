# This script reads the lines of a transcript file, removes timestamps,
# and any leading whitespace, from each line of the transcript,
# and saves it as a file.
#
# Example usage
# Rscript scripts/clean_up_transcript.R path/to/your/file.csv
library(readr)
library(stringr)


# command line args ------------------------------------------------------

args <- commandArgs(trailingOnly = TRUE)
if (length(args) == 0) {
  stop("Please provide a file path as a command line argument.")
}
input_file <- args[1]
output_file <- args[2]


# read data --------------------------------------------------------------

lines <- read_lines(input_file)
transcript <- str_replace(lines, "^\\[.*?\\]\\s*", "")


# write data -------------------------------------------------------------

write_lines(transcript, output_file)
