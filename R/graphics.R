#
# Copyright (c) 2012-2013 by Lifted Studios.  All Rights Reserved.
#

plot.image <- function(format, plot, filename, width, height)
{
  # Generic function for plotting to an image.
  #
  # Args:
  #   format:   Name of the image format function.
  #   plot:     Plot expression.
  #   filename: Name of the file to which to write the image.
  assign("graphic.format", format)
  graphic.format(filename, width, height)
  print(plot)
  dev.off()
}

plot.png <- function(plot, filename = "Rplots.png", width = 480, height = 480)
{
  # Plots to a PNG file.
  #
  # Args:
  #   plot:     Plot expression.
  #   filename: Name of the file to which to write the image.
  plot.image(png, plot, filename, width, height)
}

plot.svg <- function(plot, filename = "Rplots.svg", width = 7, height = 7)
{
  # Plots to an SVG file.
  #
  # Args:
  #   plot:     Plot expression.
  #   filename: Name of the file to which to write the image.
  plot.image(svg, plot, filename, width, height)
}
