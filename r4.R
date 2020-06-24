simulation <- function(n)
{
    dongdata <- list()
    dongdata$countsame <- 0
    for(rep in 1:n)
    {
      dongdata$students<-1:30
      dongdata <- choosestudent(dongdata,10)
      dongdata <- choosestudent(dongdata,7)
      dongdata <- choosestudent(dongdata,5)
    }
    print(dongdata$countsame/n)
}

choosestudent <- function(dongdata,num)
{
    dong <- sample(dongdata$students,num)
    
    dongdata$countab <- length(intersect(1:2,dong))
    
    if(dongdata$countab == 2){
      dongdata$countsame<-dongdata$countsame+1
    }
    
    dongdata$students <- dongdata$student[-dong]
    return(dongdata)
}

simulation(100000)
