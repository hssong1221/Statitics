ex1 <- function(){
  answer <- c("PLOT","HEIGHT","WEIGHT","WIDTH","OVERLAY")
  return(answer)
}


ex2 <- function(){
  answer <- 1
  return(answer)
}


ex3 <- function(){
  answer <- 3
  return(answer)
}


ex4 <- function() {
  library(MASS)
  data <- painters
  data <- data[ ,1:4]
 
  
  answer <- data
  return(answer)
}

ex5 <- function() {
  n <- 0
  k <- 1
  while(n < 100){
    KOR <- 2 + n
    ENG <- KOR / 10 + 85
    MAT <- ENG / 2
    if(KOR > MAT){
      SCI2 <- KOR
    }else{
      SCI2 <- MAT
    }
    SCI <- SCI2
    TOT <- KOR+ENG+MAT+SCI
    AVG <- TOT/4
    n <- n + 2
    k <- k + 1
    answer <- data.frame(KOR,ENG,MAT,SCI,TOT,AVG) 
  }
  return(answer)
}

ex6_1 <- function() {
  answer <- pt(0.95, 24, lower.tail = FALSE)
  return(round(answer, 4))
}
ex6_2 <- function() {
  answer <- pbinom(6, 10, 0.52)
  return(round(answer, 4))
}
ex6_3 <- function() {
  areaA <- dexp(3, 3/5)
  areaB <- dexp(3, 5/7)
  answer <- ifelse(areaA >= areaB, areaA, areaB) 
  return(round(answer, 4))
}


