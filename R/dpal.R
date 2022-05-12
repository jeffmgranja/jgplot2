#' @include palettes.R

#' @export
jg_dpal <- function(set="stallion3"){
  function(n){
    if(set %in% c("stallion3", "default")){
      if(n <= 20){
        pal <- .stallion3[[n]]
      }else{
        pal <- .stallion3[[length(.stallion3)]]
      }
    }else{
      pal <- jg_palettes()[[set]]
      if(!is.null(names(pal))){
        pal <- pal[gtools::mixedsort(names(pal))]
      }
    }
    if(n > length(pal)){
      pal <- colorRampPalette(pal)(n)
    }
    pal
  }
}
