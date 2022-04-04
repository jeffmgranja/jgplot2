#' @export
jg_dpal <- function(set="stallion"){
  function(n){
    pal <- jg_palettes[[set]]
    if(!is.null(names(pal))){
      pal <- pal[gtools::mixedsort(names(pal))]
    }
    if(n > length(pal)){
      pal <- colorRampPalette(pal)(n)
    }
    pal
  }
}

#' @export
jg_cpal <- function(set="colors"){
  pal <- jg_palettes[[set]]
    colorRampPalette(pal)(256)
}

#' @export
scale_color_jg <- function(..., dset="stallion", cset="solarExtra", discrete=FALSE){
  if(discrete){
    discrete_scale("colour", "jg_pal", jg_dpal(set=dset), ...)
  }else{
    scale_color_gradientn(colours = jg_cpal(set=cset), ...)
  }
}

#' @export
scale_fill_jg <- function(..., dset="stallion", cset="solarExtra", discrete=FALSE){
  if(discrete){
    discrete_scale("fill", "jg_pal", jg_dpal(set=dset), ...)
  }else{
    scale_fill_gradientn(colours = jg_cpal(set=cset), ...)
  }
}