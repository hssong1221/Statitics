library(MASS)
cor.test(Animals$brain, Animals$body)

x <- Nile
y <- sample(x,10)
y
t.test(y, alternative = c("greater"), mu = mean(Nile), conf.level = 0.95)
