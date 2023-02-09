#q1
M = matrix(c(2, 4, 8, 
             2, 5, 9,
             2, 3, 8,
             1, 4, 7,
             1, 5, 1,
             1, 2, 3),
           nrow = 6, 
           ncol = 3, 
           byrow = TRUE)

print(M)
class(M)
#q2
M2 = cbind(M,c(8,7,1,2,1,2))
M2
#q3
M2<-data.frame(M2)
class(M2)
#q4
colnames(M2) = c("case","month","week","value")
rownames(M2) = c("A","B","C","D","E","F")
View(M2)

rownames(df) <- LETTERS[1:6]
#q5
M2[c(2, 4, 6), ]
#q6
print(M2[order(M2$value, decreasing = TRUE), ]   )

library(dplyr)
M2_sorted <- arrange(M2, desc(value))
M2_sorted


