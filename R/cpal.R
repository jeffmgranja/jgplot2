#' @export
jg_cpal <- function(set="solarExtra"){
  pal <- jg_palettes()[[set]]
  colorRampPalette(pal)(256)
}
