data <- iris [cite: 137]

head(data) [cite: 139]
tail(data) [cite: 143]
str(data) [cite: 148]

min(data$Sepal.Length) [cite: 165]
max(data$Sepal.Length) [cite: 166]
range_val <- range(data$Sepal.Length) [cite: 172]
range_val[1] [cite: 173]
range_val[2] [cite: 174]

sd(data$Sepal.Length) [cite: 178]
var(data$Sepal.Length) [cite: 179]
mean(data$Sepal.Length) [cite: 180, 181]
median(data$Sepal.Length) [cite: 180, 182]

summary(data) [cite: 186]
summary(data$Sepal.Length) [cite: 189]

A <- c(170.2, 181.5, 188.9, 163.9, 166.4, 163.7, 160.4, 175.8, 181.5) [cite: 200, 201]
quantile(A) [cite: 204]
sort(A) [cite: 208]
quantile(A, 0.25) [cite: 216]
quantile(A, 0.75) [cite: 217]
IQR(A) [cite: 221]

nrow(data) [cite: 226]
ncol(data) [cite: 228]
sum(is.na(data$Sepal.Length)) [cite: 231]
sum(data$Sepal.Length < 0) [cite: 233]

hist(iris$Sepal.Length, main = "Histogram of Sepal Length", xlab = "Sepal Length (cm)", ylab = "Frequency", col = "lightblue", border = "black") [cite: 243, 246, 248, 250, 251, 253]
boxplot(Sepal.Length ~ Species, data = iris, main = "Sepal Length by Species", xlab = "Species", ylab = "Sepal Length (cm)", col = c("lightgreen", "lightpink", "lightyellow")) [cite: 272, 274, 278, 279, 280, 281, 282, 283]
plot(iris$Sepal.Length, iris$Petal.Length, main = "Sepal Length vs Petal Length", xlab = "Sepal Length (cm)", ylab = "Petal Length (cm)", col = as.numeric(iris$Species), pch = 19) [cite: 298, 299, 301, 305, 306, 307]
legend("topleft", legend = levels(iris$Species), col = 1:3, pch = 19) [cite: 308, 309, 311, 312, 313, 314]