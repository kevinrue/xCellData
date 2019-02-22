[![Travis build status](https://travis-ci.org/kevinrue/xCellData.svg?branch=master)](https://travis-ci.org/kevinrue/xCellData)
[![Coverage status](https://codecov.io/gh/kevinrue/xCellData/branch/master/graph/badge.svg)](https://codecov.io/github/kevinrue/xCellData?branch=master)

# xCellData

The goal of xCellData is to provide a _R_ /
_Bioconductor_ resource for obtaining and representing 489 cell type gene signatures from [Aran et al., 2017][genomebiology_aran_add3].

## Installation

You can install the released version of _xCellData_ from [GitHub](https://github.com/kevinrue/xCellData) with:

``` r
install.packages("devtools")
devtools::install_github("kevinrue/xCellData")
```

## Example

This is a basic example which shows you how to load the signatures into your _R_ session.

``` r
library(xCellData)
object <- xCellData()
object
```

```
BaseSets with 20803 relations between 5079 elements and 489 sets
     element          set relationData elementData                                   setData
  <IdVector>   <IdVector>  <DataFrame> <DataFrame>                               <DataFrame>
1       C1QA   aDC_HPCA_1                          https://doi.org/10.1186/s13059-017-1349-1
2       C1QB   aDC_HPCA_1                          https://doi.org/10.1186/s13059-017-1349-1
3      CCL13   aDC_HPCA_1                          https://doi.org/10.1186/s13059-017-1349-1
4      CCL17   aDC_HPCA_1                          https://doi.org/10.1186/s13059-017-1349-1
5      CCL19   aDC_HPCA_1                          https://doi.org/10.1186/s13059-017-1349-1
         ...          ...          ...         ...                                       ...
1      IL2RA Tregs_HPCA_3                          https://doi.org/10.1186/s13059-017-1349-1
2      KCNA2 Tregs_HPCA_3                          https://doi.org/10.1186/s13059-017-1349-1
3      LAIR2 Tregs_HPCA_3                          https://doi.org/10.1186/s13059-017-1349-1
4     MCF2L2 Tregs_HPCA_3                          https://doi.org/10.1186/s13059-017-1349-1
5       RGS1 Tregs_HPCA_3                          https://doi.org/10.1186/s13059-017-1349-1
```

[genomebiology_aran_add3]: https://genomebiology.biomedcentral.com/articles/10.1186/s13059-017-1349-1
