jg_dependency <- c(
  "ggplot2",
  "patchwork"
)

.onAttach <- function(libname, pkgname){
  
  #Package Startup
  v <- packageVersion("jgplot2")
  packageStartupMessage("jgplot2 : Version ", v)
  
  #Load Packages
  packageStartupMessage("Loading Required Packages...")
  pkgs <- jg_dependency
  for(i in seq_along(pkgs)){
    packageStartupMessage("\tLoading Package : ", pkgs[i], " v", packageVersion(pkgs[i]))
    tryCatch({
      suppressPackageStartupMessages(require(pkgs[i], character.only=TRUE))
    }, error = function(e){
      packageStartupMessage("\tFailed To Load Package : ", pkgs[i], " v", packageVersion(pkgs[i]))
    })
  }

  #Set Default Colors
  options(ggplot2.discrete.colour = function() scale_color_jg(dset = "stallion", discrete = TRUE))
  options(ggplot2.discrete.fill = function() scale_color_jg(dset = "stallion", discrete = TRUE))

  options(ggplot2.continuous.colour = function() scale_color_jg(cset = "solarExtra", discrete = FALSE))
  options(ggplot2.continuous.fill = function() scale_color_jg(cset = "solarExtra", discrete = FALSE))

  #Set Global Ggplot2 Theme
  ggplot2::theme_set(theme_jg())

  #Set Grid
  set_grid_mm()

}
