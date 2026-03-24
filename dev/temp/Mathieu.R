library(Rcan)



data("csu_CI5XII_data")
#get the id_code asssociate to id_label
#print(unique(csu_CI5XII_data[,c("id_label", "id_code")]),nrows = 1000)
#get the cancer code asssociate to cancer_label
#print(unique(csu_CI5XII_data[,c("cancer_label", "cancer_code")]),nrows = 1000)
#remove all cancers:
df_data <- subset(csu_CI5XII_data ,cancer_code < 62)
df_data$sex <- factor(df_data$sex, levels=c(1,2), labels=c("Male", "Female"))
#select Thailand changmai
df_data_1 <- subset(df_data, id_code==476400199)
# plot for Thailand Changmai
dt_result_1 <-
        csu_ageSpecific_top(df_data_1,
                var_age="age",
                var_cases="cases",
                var_py="py",
                var_top="cancer_label",
                group_by="sex",
                plot_title= "Thailand, Chiangmai",
                plot_subtitle = "Top 5 cancer",
                missing_age = 19)
## No test: 
##D 
##D 	#select USAm NPCR
##D 	df_data_2 <- subset(df_data,id_code== 384008099)
##D 
##D 
##D 	# plot for USA NPCR
##D 	dt_result_2 <- 
##D 		csu_ageSpecific_top(
##D 			df_data_2,
##D 			var_age="age", 
##D 			var_cases="cases", 
##D 			var_py="py",
##D 			var_top="cancer_label", 
##D 			group_by="sex", 
##D 			plot_title= "USA",
##D 			plot_subtitle = "Top 5 cancer",
##D 			missing_age = 19
##D 			)
## End(No test)
