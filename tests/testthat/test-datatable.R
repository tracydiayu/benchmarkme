test_that("Test datatable", {
  skip_on_cran()
  tmp_env = new.env()
  data(sample_results, envir=tmp_env, package="benchmarkme")
  res = tmp_env$sample_results
  expect_warning({
    data_table = get_datatable(res, test_group = "prog")
    })
  expect_true(is.list(data_table))
}
)
