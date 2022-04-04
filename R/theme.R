#' ggplot2 default theme adapted from ArchR
#'
#' This function returns a ggplot2 theme that is black borded with black font.
#' 
#' @param color The color to be used for text, lines, ticks, etc for the plot.
#' @param textFamily The font default family to be used for the plot.
#' @param baseSize The base font size (in points) to use in the plot.
#' @param baseLineSize The base line width (in points) to be used throughout the plot.
#' @param baseRectSize The base line width (in points) to use for rectangular boxes throughout the plot.
#' @param plotMarginCm The width in centimeters of the whitespace margin around the plot.
#' @param legendPosition The location to put the legend. Valid options are "bottom", "top", "left", and "right.
#' @param legendTextSize The base text size (in points) for the legend text.
#' @param axisTickCm The length in centimeters to be used for the axis ticks.
#' @param xText90 A boolean value indicating whether the x-axis text should be rotated 90 degrees counterclockwise.
#' @param yText90 A boolean value indicating whether the y-axis text should be rotated 90 degrees counterclockwise.
#' @param addGrid A boolean value indicating whether to add grid lines.
#' @export
theme_jg <- function(
  color = "black",
  textFamily = "sans",
  baseSize = 10, 
  baseLineSize = 0.5,
  baseRectSize = 0.5,
  plotMarginCm = 1,
  legendPosition = "bottom",
  legendTextSize = 5,
  axisTickCm = 0.1,
  xText90 = FALSE,
  yText90 = FALSE,
  addGrid = FALSE
  ){

  #Get Grid MM
  grid_mm <- get_grid_mm()

  #Base Theme
  theme <- theme_bw()

  #Add
  theme <- theme %+replace% theme(
      text = element_text(family = textFamily),
      axis.text = element_text(color = color, size = baseSize), 
      axis.title = element_text(color = color, size = baseSize),
      title = element_text(color = color, size = baseSize),
      plot.margin = unit(c(plotMarginCm, plotMarginCm, plotMarginCm, plotMarginCm), "cm"),
      panel.border = element_rect(fill = NA, color = color, size = (3) * baseRectSize * grid_mm),
      axis.ticks.length = unit(axisTickCm, "cm"),
      axis.ticks = element_line(color = color, size = baseLineSize * (1.5) * grid_mm),
      legend.key = element_rect(fill = "transparent", colour = NA),
      legend.text = element_text(color = color, size = legendTextSize),
      legend.box.background = element_rect(color = NA),
      legend.position = legendPosition,
      strip.text = element_text(size = baseSize, color="black")
    )
  
  if(!addGrid){
    theme <- theme %+replace% theme(panel.grid.major = element_blank())
    theme <- theme %+replace% theme(panel.grid.minor = element_blank())
  }

  if(xText90){
    theme <- theme %+replace% theme(axis.text.x = element_text(angle = 90, hjust = 1))
  }

  if(yText90){
    theme <- theme %+replace% theme(axis.text.y = element_text(angle = 90, vjust = 1))
  }

  return(theme)

}
