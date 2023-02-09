#q1
A <- read.table("auto2004_original.txt",sep="\t", header = TRUE)
View(A)
#q2
colnames(A)
names(A)
#q3
class(A)
str(A) #structure of the object
#q4
dim(A)
#q5
head(A)
tail(A)
#q6
summary(A)
#q7
