#' @export
scale_color_jg <- function(..., dset="stallion3", cset="solarExtra", discrete=FALSE){
  if(discrete){
    discrete_scale("colour", "jg_pal", jg_dpal(set=dset), ...)
  }else{
    scale_color_gradientn(colours = jg_cpal(set=cset), ...)
  }
}

#' @export
scale_fill_jg <- function(..., dset="stallion3", cset="solarExtra", discrete=FALSE){
  if(discrete){
    discrete_scale("fill", "jg_pal", jg_dpal(set=dset), ...)
  }else{
    scale_fill_gradientn(colours = jg_cpal(set=cset), ...)
  }
}