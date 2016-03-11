#' A methopar Function
#' 
#' This function allows you to set parameters for corresponding plotmethod in plots()
#' @param Rf risk free rate, in same period as you returns. Default to 0.
#' @param gap numeric number of periods from start of series to use to train risk calculation. Default to 12.
#' @param p confidence level for calculation. Default to 0.95.
#' @keywords methodpar
#' @export
#' @examples 
#' methodpar(Rf, gap, p)

methodpar <- function(Rf = 0, gap = 12, p = 0.95){
    data.frame(Rf, gap, p)
}