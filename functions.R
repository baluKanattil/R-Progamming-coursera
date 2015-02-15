add2 <- function(x,y){
  x+y
}

above10 <- function(x) {
  use <- x>10
  x[use]
}

above <- function(x,n=10){
  use <- x>n
  x[use]
}


columnMean <- function(y) {
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in 1:nc){
    means[i] <- mean(y[,i],na.rm=T)
  }
  means

}

f <- function(a,b){
  print(a)    
  #print(b)
}

tr <- function(){
  print(z)
  try2<- function(){
    print(z)
  }
  try2()
}
