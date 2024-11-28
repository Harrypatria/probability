help(pexp)

### Exponential Distribution
# Let X be a random variable having an exponential distribution with parameter 0.4.
#(a) Compute the probability that X will be less than or equal to 1.5.
pexp(1.5, rate = 0.4, lower.tail = TRUE, log.p = FALSE)

#(b)  Compute the value of the (probability density function) PDF of X in 1.
dexp(1, rate = 0.4, log = FALSE)

#(c) Generate 5 random values of X
rexp(5, rate = 0.4)

#(d)  Determine the value such that the probability that X is less than or equal to this value equals 0.70
qexp(0.7, rate = 0.4, lower.tail = TRUE, log.p = FALSE)

### Binomial Distribution
#Let X be a random variable having a binomial distribution with parameters 5 and 0.8.
#(a) Compute the probability that X will be less than or equal to 3.
pbinom(3, size=5, prob=0.8, lower.tail = TRUE, log.p = FALSE)

#(b) Compute the value of the probability of mass function (PMF) of X in 2.
dbinom(2, size=5, prob=0.8, log = FALSE)
#PMF does represent the probability

#(c) Generate 5 random values of X.
rbinom(5, 5, 0.8)

#(d) Determine the smallest value such that the probability that X is less than or equal to this value is at least 0.70.
qbinom(0.70, size=5, prob=0.8, lower.tail = TRUE, log.p = FALSE)

require(graphics)
# Compute P(45 < X < 55) for X Binomial(100,0.5)
sum(dbinom(46:54, 100, 0.5))

### Statistics
sample <- c(12.6, 8.7, 11.3, 6.2, 9.8, 13.4, 8.3, 7.1, 8.8)
summary(sample)
#(a) Compute the mean and the 3rd quartile of the weekly revenue.
mean=mean(sample)
mean # in thousands of GBP

#3rd quartile = 11.300 # in thousands of GBP

#(b) What is the standard deviation of the weekly revenue?
sd(sample)
var(sample)

#(c) Compute a 90% confidence interval for the expected weekly revenue.
t.test(sample, conf.level = 0.90)
  
#(d) What is the p-value for the hypothesis test H0 : µ = 8 and H1 : µ ~= 8
t.test(sample, alternative = "two.sided", mu=8, conf.level = 0.90)
hist(sample)

#(e) Plot the observations in a histogram.
utils::str(hist(sample, col = "gray", labels = TRUE))


### Linear Algebra
v <- c(2,0)
w <- c(1,2)
u <- c(-1,1)
#(a) Compute w + u.
w + u
#(b) Compute 4w.
4*w
#(c) Compute 3u − v + 2w.
3*u-v+2*w




#A <- matrix(c(3,-1, -2, 2), nrow = 2, ncol = 2, byrow = TRUE,
 #              dimnames = list(c("row1", "row2"),
  #                             c("C.1", "C.2")))

A = rbind(c(3,-1), c(-2,2))
A

B = rbind(c(0, -2, 3), c(-1, 2, 1))
B

C = rbind(c(-1, -1), c(0, 3))
C

#(a) Compute AB, AC, and BC.
A%*%B
A%*%C
B%*%C

#(b) Compare AC and CA. What do you observe?
# the number of rows of the 1st matrix should equal the number of column of the 2nd matrix  
A%*%C
C%*%A

#(c) What is the result of the instruction t(A)?
t(A) # transposed matrix

#(d) Compute Av, Au and Aw. What do you observe?
A%*%v
A%*%u
A%*%w
A  

######################## End ###########################
eigen(A, symmetric=FALSE, only.values = FALSE, EISPACK = FALSE)
B
C
eigen(C, symmetric=FALSE, only.values = FALSE, EISPACK = FALSE)
