
test_that("xCellData() can return unisets Sets", {

    out <- xCellData()

    expect_s4_class(out, "Sets")
    expect_length(out, 20803L)

})
