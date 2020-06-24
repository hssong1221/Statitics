pbinom(q = 2, size = 10, prob = 0.4, lower.tail = FALSE)

x <- 0.0
result = 1


while(result > 0.2)
{
    x <- x + 0.0001
    result <- pbinom(15, 100, x, lower.tail = TRUE)
    
}

x

dpois(x=3, lambda = 1.5)

