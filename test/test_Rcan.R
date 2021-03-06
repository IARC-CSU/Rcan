
test_folder <- "c:/Projects/Rcan/test"


test_that("Test csu_asr: 1",{
  
  #input data
  data_test <-  read.csv(paste0(test_folder,"/data_cervix.csv"), sep=",")
  
  #output result
  output_test <- csu_asr(data_test,missing_age = 19,
                    group_by  = c("country", "country_label", "year", "sex","type"),
                    var_age_group =  c("country", "country_label","type"))
  
  #expect result
  expect_test <- readRDS(paste0(test_folder, "/csu_asr_test1.rds"))
  
  #test
  expect_identical(output_test, expect_test)
})




