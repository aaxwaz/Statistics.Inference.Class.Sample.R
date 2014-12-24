library(ggplot2)
nosim <- 1000
lambda <- 0.2
samplesize <- 40
sim <- matrix(rexp(nosim * samplesize, rate = lambda), nosim, samplesize) # store the results of the simulation
mns <- rowMeans(sim) # and take the mean of every row
hist(mns, breaks=75, prob=TRUE, main="Histogram of sample averages", xlab="") # plot the histogram of the averages
abline(v=1/lambda, col="red") # plot the theoretical average
lines(density(mns)) # plot the distribution
x <- seq(min(mns), max(mns), length=100)
y <- dnorm(x, mean = 1/lambda, sd = 1/lambda/sqrt(samplesize))
lines(x, y, type ="l", lwd=1, col="red") # plot the normal distribution
legend('topright', c("Sim", "Theo"), lty=1, col=c("black", "red"))
