
test_that("xCellData() can return unisets BaseSets", {

    out <- xCellData()

    expect_s4_class(out, "BaseSets")
    expect_length(out, 20803L)

})
