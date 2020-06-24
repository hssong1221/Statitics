data <- read.csv(file = "C:/Users/Song/Desktop/cool.csv", header = TRUE)

options(max.print = 1000)
print("교통사고 1번 일어날 떄 마다 나오는 사상사 수")

summary(data)
sd(data$사상자수)

x1 <- (data$사상자수)

x2 <- dnorm(x1, mean = 5.018, sd = 2.275687)
plot(x1,x2, xlim=c(-1,30), xlab = "사상자수", ylab = "확률")

