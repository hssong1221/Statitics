library(MASS)
x <- Cars93$Price
x
length(x)
summary(x)
length(x[x > 15.0]) 

mc <- c(25,17,15,23)
m <- matrix(mc, nrow = 2, byrow = TRUE)
colnames(m) <- c("drink", "non-drink")
rownames(m) <- c("smoke", "non-smoke")
m

m2 <- m
m2

m2 <- cbind(m2, c(sum(m2[1,]), sum(m2[2,])))
colnames(m2) <- c("drink", "non-drink","sum")
m2

m2 <- rbind(m2, c(sum(m2[,1]),sum(m2[,2]),sum(m2[,3])))
rownames(m2) <- c("smoke", "non-smoke", "sum")
m2

