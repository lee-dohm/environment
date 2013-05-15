#
# Copyright (c) 2012-2013 by Lifted Studios.  All Rights Reserved.
#

LoadStandardLibraries <- function()
{
  # Loads the standard libraries.
  library(stats)
  library(ggplot2)
  library(plyr)
  library(stringr)
}

format.percentiles <- function(...)
{
  # Formats a number or list of numbers into percentile labels.
  #
  # Args:
  #   ...: Variable number of numbers to format as percentages.
  #
  # Returns:
  #   List of percentages.
  f <- function(...)
  {
    return(... * 100)
  }

  return(paste("P", f(...), sep = ""))
}

path.join <- function(...)
{
  # Joins path segments together.
  #
  # Args:
  #   ...: Variable numer of path segments.
  #
  # Returns:
  #   Single joined path string.
  return(paste(..., sep = "/"))
}

read.standard <- function(filename)
{
  # Reads data in the KICSPERF team standard data format.
  #
  # Args:
  #   filename: Name of the file to read.
  #
  # Returns:
  #   Data from the file in a data frame.
  return(read.delim(filename, blank.lines.skip = TRUE, comment.char = "#"))
}

source.standard <- function(filename)
{
  # Sources a file from the standard source path.
  #
  # Args:
  #   filename: Name of the file in the standard source path.
  source(path.join(Sys.getenv("R_LIB_PATH"), filename))
}

write.standard <- function(x, file = "")
{
  # Writes data in x to the file in the KICSPERF standard data format.
  #
  # Args:
  #   x: The object to be written.
  #   file: Either a character string naming a file or a connection open for writing.
  #         "" indicates output to the console.
  write.table(x, file = file, sep = "\t", fileEncoding = "UTF-8")
}

format.standard <- function(x)
{
  formatC(x, digits = 1, format = "f")
}

source.standard("graphics.R")
