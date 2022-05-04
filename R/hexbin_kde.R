#' Function that first determines the kernel density of points and then colors hexbin with those values.
#'
#' This is a function that first determines the kernel density of points and then colors hexbin with those values.
#'
#' @param mapping Set of aesthetic mappings created by ‘aes()’ or ‘aes_()’. If specified and ‘inherit.aes = TRUE’ (the default), it is
#' combined with the default mapping at the top level of the plot. You must supply ‘mapping’ if there is no plot mapping.
#' @param data The data to be displayed in this layer. There are three
#'          options:
#'
#'          If ‘NULL’, the default, the data is inherited from the plot
#'          data as specified in the call to ‘ggplot()’.
#'
#'          A ‘data.frame’, or other object, will override the plot data.
#'          All objects will be fortified to produce a data frame. See
#'          ‘fortify()’ for which variables will be created.
#'
#'          A ‘function’ will be called with a single argument, the plot
#'          data. The return value must be a ‘data.frame’, and will be
#'          used as the layer data. A ‘function’ can be created from a
#'          ‘formula’ (e.g. ‘~ head(.x, 10)’).
#' @param geom Override the default connection between ‘geom_hex’ and ‘stat_binhex.’
#' @param position Position adjustment, either as a string, or the result of a call to a position adjustment function.
#' @param ... Other arguments passed on to ‘layer()’. These are often
#'          aesthetics, used to set an aesthetic to a fixed value, like
#'          ‘colour = "red"’ or ‘size = 3’. They may also be parameters
#'          to the paired geom/stat.
#' @param show.legend show legend with geom.
#' @param inherit.aes inherit aes from geom.
#'
#' New Params
#'
#' @param bins numeric vector giving number of bins in both vertical and horizontal directions. Set to 175 by default.
#' @param densityMax max density quantile allowed. Values above will be trimmed to the max density quantile.
#' @param kdeGrid number of grids to use kernel density from grDevices/MASS. Default is set to 175.
#' @param binwidth numeric vector giving bin width in both vertical and horizontal directions. Overrides `bins` if both set.
#' @param na.rm remove NA values from summarizing.
#' @param fun function to apply for hexbin summary of kde. Default is set to 'median'.
#' @param fun.args arguments to supply to function for summary of hexbins.
#' @param nPlot number of points to use for plot. Can be useful to use sampling. Set to 100000 by default.
#' @param xlim x-limits to summarize over. values not in these limits will be discarded for hexbin kernel density estimation.
#' @param ylim y-limits to summarize over. values not in these limits will be discarded for hexbin kernel density estimation.
#' @param kdeMethod kernel density method to use "grDevices" or "Mass"
#' @export
stat_hex_kde <- function(
  mapping = NULL, 
  data = NULL,
  geom = "hex", 
  position = "identity",
  ...,
  show.legend = NA,
  inherit.aes = TRUE,
  #New Params
  bins = 175,
  densityMax = 0.98,
  kdeGrid = 175,
  binwidth = NULL,
  na.rm = TRUE,
  fun = "median",
  fun.args = list(),
  nPlot = 100000,
  xlim = NULL,
  ylim = NULL,
  kdeMethod = "grDevices"
  ){

  #Adapted From https://github.com/tidyverse/ggplot2/blob/351eb41623397dea20ed0059df62a4a5974d88cb/R/stat-summary-hex.r
  stat_summary_hex_kde <- ggproto("stat_summary_hex_kde", Stat,
    default_aes = aes(fill = after_stat(value)),
    required_aes = c("x", "y"),
    compute_group = function(
      data, 
      scales, 
      binwidth = NULL, 
      bins = 175, 
      na.rm = TRUE,
      fun = "median", 
      fun.args = list(), 
      densityMax = 0.98, 
      kdeGrid = 175, 
      nPlot = 100000, 
      xlim = NULL, 
      ylim = NULL, 
      kdeMethod = "grDevices"
      ){
      
      if(is.null(binwidth)){
        binwidth <- c(diff(scales$x$dimension())/bins, diff(scales$y$dimension())/bins)
      }
      fun <- rlang::as_function(fun)

      #Filter NA's
      idx <- !is.na(data$x) & !is.na(data$y)
      x <- data$x[idx]
      y <- data$y[idx]

      #Sample
      if(is.null(nPlot)) nPlot <- nrow(data)
      idx2 <- sort(sample(seq_len(nrow(data)), min(nrow(data), nPlot)))
      x <- x[idx2]
      y <- y[idx2]

      #Determine Points in Limits
      if(!is.null(xlim)){
        ix <- which(x > min(xlim) & x < max(xlim))
      }else{
        ix <- seq_along(x)
      }
      if(!is.null(ylim)){
        iy <- which(y > min(ylim) & y < max(ylim))
      }else{
        iy <- seq_along(y)
      }
      x <- x[intersect(ix,iy)]
      y <- y[intersect(ix,iy)]

      #Determine Density from KDE from either grdevices or mass
      if(tolower(kdeMethod)=="grdevices"){
        message("Using grDevices for KDE estimation!")
        z <- .grDevices.getDensity(x, y, densityMax = densityMax, kdeGrid = kdeGrid)$density
      }else if(tolower(kdeMethod)=="mass"){
        message("Using MASS for KDE estimation!")
        z <- .MASS.getDensity(x, y, densityMax = densityMax, kdeGrid = kdeGrid)$density
      }else{
        stop("kdeMethod not recognized!")
      }

      #Normalize to 1 density
      z <- z / max(z) #divide by max val

      #Plot
      o <- .ggplot2.hex_bin_kde(x=x, y=y, z=z, binwidth=binwidth, fun=fun, fun.args=fun.args, na.rm=na.rm)

      #Return
      o
    
    }

  )

  layer(
    data = data,
    mapping = mapping,
    stat = stat_summary_hex_kde,
    geom = geom,
    position = position,
    show.legend = show.legend,
    inherit.aes = inherit.aes,
    params = list(
      bins = bins,
      densityMax = densityMax,
      kdeGrid = kdeGrid,
      binwidth = binwidth,
      nPlot = nPlot,
      xlim = xlim,
      ylim = ylim,
      kdeMethod = kdeMethod,
      na.rm = na.rm,
      fun = fun,
      fun.args = fun.args,
      ...
    )
  )

}

#Adapted From https://github.com/tidyverse/ggplot2/blob/351eb41623397dea20ed0059df62a4a5974d88cb/R/stat-summary-hex.r
.ggplot2.hex_bin_kde <- function (x, y, z, binwidth, fun = mean, fun.args = list(), na.rm = TRUE){
    if (length(binwidth) == 1) {
        binwidth <- rep(binwidth, 2)
    }
    xbnds <- .ggplot2.hex_bounds(x, binwidth[1])
    xbins <- diff(xbnds)/binwidth[1]
    ybnds <- .ggplot2.hex_bounds(y, binwidth[2])
    ybins <- diff(ybnds)/binwidth[2]
    hb <- hexbin::hexbin(x, xbnds = xbnds, xbins = xbins, y, 
        ybnds = ybnds, shape = ybins/xbins, IDs = TRUE)
    value <- do.call(tapply, c(list(quote(z), quote(hb@cID), quote(fun)), fun.args))
    out <- .ggplot2.new_data_frame(hexbin::hcell2xy(hb))
    out$value <- as.vector(value)
    if (na.rm) 
        out <- stats::na.omit(out)
    out
}

.ggplot2.hex_bounds <- function (x, binwidth){
    c(
      plyr::round_any(min(x), binwidth, floor) - 1e-06, 
      plyr::round_any(max(x), binwidth, ceiling) + 1e-06
    )
}

.ggplot2.new_data_frame <- function (x = list(), n = NULL){
    if (length(x) != 0 && is.null(names(x))){
        abort("Elements must be named")
    }
    lengths <- vapply(x, length, integer(1))
    if (is.null(n)) {
        n <- if (length(x) == 0 || min(lengths) == 0) 
            0
        else max(lengths)
    }
    for (i in seq_along(x)) {
        if (lengths[i] == n) 
            next
        if (lengths[i] != 1) {
            abort("Elements must equal the number of rows or 1")
        }
        x[[i]] <- rep(x[[i]], n)
    }
    class(x) <- "data.frame"
    attr(x, "row.names") <- .set_row_names(n)
    x
}

#Adapted from MASS KDE
.MASS.bandwidth.nrd <- function (x){
    r <- quantile(x, c(0.25, 0.75))
    h <- (r[2L] - r[1L])/1.34
    4 * 1.06 * min(sqrt(var(x)), h) * length(x)^(-1/5)
}

.MASS.getDensity <- function (x = NULL, y = NULL, kdeGrid = 175, densityMax = 0.98){

    #From MASS::kde2d to get density
    lims <- c(range(x), range(y))
    nx <- length(x)
    n <- rep(kdeGrid, length.out = 2L)
    gx <- seq.int(lims[1L], lims[2L], length.out = n[1L])
    gy <- seq.int(lims[3L], lims[4L], length.out = n[2L])
    h <- c(.MASS.bandwidth.nrd(x), .MASS.bandwidth.nrd(y)) / 4
    ax <- outer(gx, x, "-")/h[1L]
    ay <- outer(gy, y, "-")/h[2L]
    z <- tcrossprod(
      (matrix(exp(-ax^2/2)/sqrt(2*pi), , nx)),
      (matrix(exp(-ay^2/2)/sqrt(2*pi), , nx))
    )/(nx * h[1L] * h[2L])
    ix <- findInterval(x, gx)
    iy <- findInterval(y, gy)
    ii <- cbind(ix, iy)
    density <- z[ii]
    
    #Clip density
    density[density > quantile(unique(density), densityMax)] <- quantile(unique(density), densityMax)

    #Create data.frame
    df <- data.frame(x = x, y = y, density = density)
    
    return(df)
    
}

#Adapted from grDevices smooth density calculations
.grDevices.smoothDensity <- function(x, nbin, bandwidth, range.x){
  
  if (length(nbin) == 1) 
    nbin <- c(nbin, nbin)
  if (!is.numeric(nbin) || length(nbin) != 2) 
    stop("'nbin' must be numeric of length 1 or 2")
  if (missing(bandwidth)) {
    bandwidth <- diff(apply(x, 2, stats::quantile, probs = c(0.05, 0.95), na.rm = TRUE, names = FALSE))/25
    bandwidth[bandwidth == 0] <- 1
  }
  else {
    if (!is.numeric(bandwidth)) 
      stop("'bandwidth' must be numeric")
    if (any(bandwidth <= 0)) 
      stop("'bandwidth' must be positive")
  }
  rv <- suppressWarnings(KernSmooth::bkde2D(
    x, 
    bandwidth = bandwidth, 
    gridsize = nbin, 
    range.x = range.x
  ))
  rv$bandwidth <- bandwidth
  rv

}

.grDevices.getDensity <- function(x = NULL, y = NULL, kdeGrid = 175, densityMax = 0.98){
  
  xy <- xy.coords(x, y, setLab = FALSE)
  select <- is.finite(xy$x) & is.finite(xy$y)
  x <- cbind(xy$x, xy$y)[select, ]
  map <- .grDevices.smoothDensity(x=x, nbin=kdeGrid)
  mkBreaks <- function(u) u - diff(range(u))/(length(u) - 1)/2
  xbin <- cut(x[, 1], mkBreaks(map$x1), labels = FALSE)
  ybin <- cut(x[, 2], mkBreaks(map$x2), labels = FALSE)
  dens <- map$fhat[cbind(xbin, ybin)]
  dens[is.na(dens)] <- 0

  #Clip density
  dens[dens > quantile(unique(dens), densityMax)] <- quantile(unique(dens), densityMax)
  df <- data.frame(x = x[,1], y = x[,2], density = dens)

  return(df)

}
