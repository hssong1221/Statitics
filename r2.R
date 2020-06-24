library(MASS)
x <- Insurance[1:2]
y <- Insurance[4]
ins <- cbind(y, x)
Check <- sapply(ins$Holders, function(x){x<500})
ins2 <- cbind(ins, Check)
mins <- merge(Insurance, ins2)
mins
head(mins,10)
tapply(mins$Claims, mins$Age, sum)
