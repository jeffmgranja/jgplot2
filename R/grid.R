#' @export
get_grid_mm <- function(){
  opt <- getOption("jgplot2.mm")
  if(is.null(opt)){
    message("Setting Global MM Option")
    set_grid_mm()
    opt <- getOption("jgplot2.mm")
  }
  opt
}

#' @export
set_grid_mm <- function(){
  grid_mm <- grid::convertX(grid::unit(1, "points"), "mm", valueOnly = TRUE)
  options(jgplot2.mm = grid_mm)
}