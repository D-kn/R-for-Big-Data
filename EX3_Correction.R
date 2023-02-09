MyExample<-function(A,B){
  
  out<-(A+B)^2
  out<-out + A
  return (out)
  #paste("the value is", out)
  
}

MyExample(4,9)

CV = function(x){
  out = sd(x)/mean(x)
  return(out)
}
CV(iris$Sepal.Length)
x=c(2,5,7,9,11,13)
CV(x)

#method1
PO <- function(x, y) {
  model <- lm(y ~ x)
  a <- coef(model)[2]
  b <- coef(model)[1]
  return (c(a, b))
}
attach(iris)

#method2
PO2 <- function(x, y) {
  a <- cov(x,y)/var(x)
  b <- mean(y)-a*mean(x)
  return (c(a, b))
}

PO(iris$Sepal.Length,iris$Petal.Length)
PO2(iris$Sepal.Length,iris$Petal.Length)
