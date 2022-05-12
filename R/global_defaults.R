jg_logo <- "
    _             _       _   ____  
   (_) __ _ _ __ | | ___ | |_|___ \\ 
   | |/ _` | '_ \\| |/ _ \\| __| __) |
   | | (_| | |_) | | (_) | |_ / __/ 
  _/ |\\__, | .__/|_|\\___/ \\__|_____|
 |__/ |___/|_|                      
"

jg_dependency <- c(
  "grDevices",
  "MASS",
  "plyr",
  "ggplot2",
  "dplyr",
  "patchwork",
  "ggh4x",
  "ggrepel",
  "ggprism",
  "colorBlindness"
)

jg_github <- c(
  "zeehio/facetscales",
  "caleblareau/BuenColors"
)

.onAttach <- function(libname, pkgname){
  
  cat(jg_logo)
  packageStartupMessage("Logo created from patorjk.com")

  #Package Startup
  v <- packageVersion("jgplot2")
  packageStartupMessage("jgplot2 : Version ", v)
  packageStartupMessage("jgplot2 website : https://github.com/jeffmgranja/jgplot2")
  
  #Load Packages
  packageStartupMessage("Loading Required Packages...")
  pkgs <- jg_dependency
  for(i in seq_along(pkgs)){
    tryCatch({
      packageStartupMessage("\tLoading Package : ", pkgs[i], " v", packageVersion(pkgs[i]))
      suppressPackageStartupMessages(require(pkgs[i], character.only=TRUE))
    }, error = function(e){
      packageStartupMessage("\tFailed To Load Package : ", pkgs[i])
    })
  }

  #Load Custom Packages
  pkgs <- basename(jg_github)
  for(i in seq_along(pkgs)){
    tryCatch({
      packageStartupMessage("\tLoading Package : ", pkgs[i], " v", packageVersion(pkgs[i]))
      suppressPackageStartupMessages(require(pkgs[i], character.only=TRUE))
    }, error = function(e){
      packageStartupMessage("\tFailed To Load Github Package : devtools::install_github('", jg_github[i], "')")
      packageStartupMessage("\t\tAttempting to install...")
      devtools::install_github(jg_github)
    })
  }

  #Set Defaults
  jgplot2()

  #Set Grid
  set_grid_mm()

}

#' @export
jgplot2 <- function(
    revert = FALSE,
    dset = "stallion3",
    cset = "solarExtra",
    ...
  ){

  if(!revert){

    message("Setting jgplot2 presets for color and theme!")
    
    #Set Options
    options(ggplot2.discrete.colour = function() scale_color_jg(dset = dset, discrete = TRUE))
    options(ggplot2.discrete.fill = function() scale_fill_jg(dset = dset, discrete = TRUE))

    options(ggplot2.continuous.colour = function() scale_color_jg(cset = cset, discrete = FALSE))
    options(ggplot2.continuous.fill = function() scale_fill_jg(cset = cset, discrete = FALSE))
  
    #Set Global Ggplot2 Theme
    ggplot2::theme_set(theme_jg(...))

  }else{
    
    message("Reverting ggplot2 presets for color and theme!")

    #Set Options
    options(ggplot2.discrete.colour = NULL)
    options(ggplot2.discrete.fill = NULL)

    options(ggplot2.continuous.colour = NULL)
    options(ggplot2.continuous.fill = NULL)
  
    #Set Global Ggplot2 Theme
    ggplot2::theme_set(theme_grey())

  }

}

