
iris
help(iris)
data("iris")
#q1
head(iris,5)
iris[1:5,]
#q2
dim(iris)
nrow(iris)
ncol(iris)
#q3
iris[iris$Petal.Length < 1.5, ]

install.packages("dplyr")
library('dplyr')
filter(iris, Petal.Length < 1.5)
#q4
species12 <- subset(iris, Species != 'virginica')
species12

filter(iris, Species %in% c("setosa", "versicolor"))
#q5
sum(iris$Petal.Length == 3.5)
nrow(iris[iris$Petal.Length==3.5, ])
#q6

sum(iris$Petal.Length<1.5|iris$Petal.Length>5)
#q7
iris[c(1,3),]
#q8
plot(iris$Sepal.Length, iris$Petal.Length, xlab = "Sepal Length", ylab = "Petal Length")
abline(lm(iris$Petal.Length ~ iris$Sepal.Length))
#q9
table(iris$Species)

dplyr::count(iris, Species, sort = TRUE)
#q10
pie(table(iris$Species))
barplot(table(iris$Species))
#q11
boxplot(iris[,1:4])
#q12
boxplot(iris[, c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")],
        main = "First Boxplot of iris TP",
        outline = FALSE)
#q13
par(mfrow=c(1,2))
pie(table(iris$Species))
boxplot(iris[,1:4])
#q14
pdf("plotIris.pdf")
par(mfrow=c(1,2))
boxplot(iris[,1:4], main="Iris Boxplot", outline=FALSE)
pie(table(iris$Species))
dev.off()