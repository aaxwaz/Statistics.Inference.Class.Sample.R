data(father.son)
y<- (father.son$sheight - mean(father.son$sheight)) / sd(father.son$sheight)
x<- (father.son$fheight - mean(father.son$fheight)) / sd(father.son$fheight)
rho <- cor(x,y)

myPlot <- function(x,y) {
  plot(x,y,
       xlab = "Father's height, normalized",
       ylab = "Son's height, normalized", 
       xlim = c(-3,3), ylim = c(-3, 3),
       bg = "lightblue", col = "black", cex = 1.1, pch = 21,
       frame = FALSE)
}

myplot(x,y)
abline(0,1)
abline(0,rho, lwd=2)
abline(0,1/rho)
