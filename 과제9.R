library(MASS)

a <- cats$Sex
b <- summary(a)
barplot(b, main="barplot of cats", xlab = "Sex")

x <- summary(cats$Bwt)
maxx<-1
maxy<-1
minx<-100
miny<-100
while(maxx < max(x)){
  maxx <- maxx + 1
}
while(minx > min(x)){
  minx <- minx -1
}
while(maxy < max(y)){
  maxy <- maxy + 1
}
while(miny > min(y)){
  miny <- miny -1
}
y <- summary(cats$Hwt)
plot(cats$Bwt,cats$Hwt , main=("Hearts Weight (g) by Body Weight (kg) of Cats"), xlab = "Body Weight(kg)", ylab = "Heart Weight(g)",xlim = c(minx,maxx),ylim=c(miny,maxy), col="red", pch="#")
