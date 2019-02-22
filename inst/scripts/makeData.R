
tempFile <- tempfile()

download.file(
  url = "https://static-content.springer.com/esm/art%3A10.1186%2Fs13059-017-1349-1/MediaObjects/13059_2017_1349_MOESM3_ESM.xlsx",
  destfile = tempFile
  )

library(readxl)
xCell_raw <- read_excel(tempFile)

xCell_list <- list()
xCell_ncol <- ncol(xCell_raw)
for (i in seq_len(nrow(xCell_raw))) {
  set_name <- as.character(xCell_raw[i, 1])
  set_symbols <- setdiff(as.character(xCell_raw[i, seq(3, xCell_ncol)]), NA)
  xCell_list[[set_name]] <- set_symbols
}

library(unisets)
basesets <- as(xCell_list, "BaseSets")
mcols(setData(basesets))[["source"]] <- "https://doi.org/10.1186/s13059-017-1349-1"

export(basesets, "inst/extdata/xCell.gmt")
