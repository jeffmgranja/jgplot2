#' @export
jg_cpal <- function(set="colors"){
  pal <- jg_palettes[[set]]
    colorRampPalette(pal)(256)
}
