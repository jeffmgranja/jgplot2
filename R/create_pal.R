#' @export
create_pal_d <- function(values, set = "stallion3"){
  values <- sort(unique(values))
  n <- length(unique(values))
  if(set %in% c("stallion3", "default")){
    if(n <= 20){
      pal <- .stallion3[[n]]
    }else{
      pal <- .stallion3[[length(.stallion3)]]
    }
  }else{
    pal <- jg_palettes()[[set]]
  }
  if (n > length(pal)) {
      message("Length of unique values greater than palette, interpolating..")
      pal <- colorRampPalette(pal)(n)
  }
  pal <- pal[seq_len(n)]
  names(pal) <- unique(values)
  pal
}

#' @export
create_pal_c <- function(set = "solarExtra"){
  pal <- jg_palettes()[[set]]
  colorRampPalette(pal)(256)
}
