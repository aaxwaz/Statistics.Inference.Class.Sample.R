library(UsingR)
library(ggplot)
data(father.son)
x <- father.son$sheight
n <- length(x)
B <- 10000

resamples <- matrix(sample(x, n * B, replace = T), B, n)
medians <- apply(resamples, 1, median)
sd(medians)
quantile(medians, c(0.025, 0.975))

g = ggplot(data.frame(medians = medians), aes(x=medians))
g = g + geom_histogram(color = "black", fill="lightblue", binwidth=0.05)
g
