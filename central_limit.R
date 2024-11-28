x24 <- c()
x1000 <- c()
k =10000
for ( i in 1:k){
  x24[i] = mean(sample(1:6,24, replace = TRUE))
  x1000[i] = mean(sample(1:6,1000, replace = TRUE))
}
par(mfrow=c(1,2))
hist(x24, col ="blue",main="n=24",xlab ="die roll")
abline(v = mean(x24), col = "blue")




hist(x1000, col ="red",main="n=1000",xlab ="die roll")
abline(v = mean(x1000), col = "red")
