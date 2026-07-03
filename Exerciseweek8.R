library(dplyr)

task1_dplyr <- student_data %>% filter(final_exam_mark > 80)
task1_base <- student_data[student_data$final_exam_mark > 80, ]

task2_dplyr <- student_data %>% arrange(coursework_mark)
task2_base <- student_data[order(student_data$coursework_mark), ]

task3_dplyr <- student_data %>% select(student_names, final_exam_mark)
task3_base <- student_data[ , c('student_names', 'final_exam_mark')]

row_count <- nrow(student_data)
col_count <- ncol(student_data)

str(student_data)
glimpse(student_data)
summary(student_data)
head(student_data)

boxplot(student_data$final_exam_mark, main = "Final Exam Mark Boxplot")

q1 <- quantile(student_data$final_exam_mark, 0.25, na.rm = TRUE)
q3 <- quantile(student_data$final_exam_mark, 0.75, na.rm = TRUE)
iqr_val <- IQR(student_data$final_exam_mark, na.rm = TRUE)
le <- q1 - 1.5 * iqr_val
ue <- q3 + 1.5 * iqr_val

outliers <- student_data %>% filter(final_exam_mark < le | final_exam_mark > ue)