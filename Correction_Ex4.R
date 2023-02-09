VAR = function(x){
  N = length(x)
  variance = (sum((x-mean(x))^2))/ (N-1)
  return(variance)
}


VAR(iris$Petal.Length)
var(iris$Petal.Length)
