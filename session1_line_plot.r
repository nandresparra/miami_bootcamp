a <- -1
b <- 2
n <- 40
sigSq = 0.5

x <- runif(n)
avgX <- mean(x)
write(avgX, "avgX.txt")
y <- a + b * x + rnorm(n, sd= sqrt(sigSq))
avgX <- mean(x)
plot(x,y)
abline(a, b, col="orange", lwd=3)
dev.print(pdf, "line.pdf")
