#' XCellData: 489 cell type gene signatures
#'
#' @name xCellData
#' @rdname xCellData
#'
#' @return The gene sets as a [`unisets-package`] [`Sets`].
#'
#' @export
#' @importFrom unisets import.gmt
#'
#' @examples
#' xCellData()
xCellData <- function() {
    gmtFile <- system.file(package = "xCellData", 'extdata', "xCell.gmt")
    unisets::import.gmt(gmtFile)
}
