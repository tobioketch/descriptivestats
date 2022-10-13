#' Creates histogram, box plot and numeric summary statistics
#' @export
#' @param x numeric variable
#' @importFrom graphics hist boxplot par
#' @importFrom grDevices rainbow

ds <- function(x) {
    # 1 row and 2 columns
    par(mfrow = c(1, 2))
    # Histogram
    hist(x, col = rainbow(30))
    # box plot
    boxplot(x, col = 'green')
    par(mfrow = c(1, 1))

    # summary statistics
    data.frame(min = min(x),
               mean = mean(x),
               max = max(x))

}
