#' A plots Function
#' 
#' This function allows you to plot according to chosen plotmethod from various packages
#' @param xts xts Object.
#' @param plotmethod Mention your plotmethod from supported package. At present, only charts.PerformanceSummary is working. Default to plot.xts method.
#' @param methodpar mention your methodpar function
#' @keywords plots
#' @export
#' @examples 
#' plots(xts, plotmethod = "charts.PerformanceSummary", methodpar)

plots <- function(xts, plotmethod = "default", methodpar){
    if(plotmethod == "charts.PerformanceSummary")
    {charts.PerformanceSummary(R = xts, 
                               Rf = as.numeric(methodpar[1]),
                               gap = as.numeric(methodpar[2]),
                               p = as.numeric(methodpar[3])
    )
    }
    else if(plotmethod == "default") {
        plot.xts(xts)
    }
}