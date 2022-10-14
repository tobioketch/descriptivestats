#' Creates histogram, box plot and computes five number summary statistics
#' @export
#' @param x numeric variable
#' @importFrom graphics hist boxplot par
#' @importFrom  stats setNames fivenum

desc <- function(x) {
    # 1 row and 2 columns
    par(mfrow = c(1, 2))
    # Histogram
    hist(x, col = "skyblue", main = "" )
    # box plot
    boxplot(x, col = 'skyblue')
    par(mfrow = c(1, 1))

    # five number summary
    stats::setNames(
        stats::fivenum(x),
        nm =c("min", "Q1", "Q2" , "Q3", "max")
    )
}
