#' XCellData: 489 cell type gene signatures
#'
#' @name xCellData
#' @rdname xCellData
#'
#' @return The gene sets as a [`unisets-package`] [`BaseSets`].
#'
#' @export
#' @importFrom unisets import.gmt
#'
#' @examples
#' xCellData()
xCellData <- function() {
    gmtFile <- system.file(package = "xCellData", 'extdata', "xCell.gmt")
    import.gmt(gmtFile)
}
