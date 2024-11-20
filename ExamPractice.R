#Normal distribution
pnorm(4, mean = 2.1, sd = sqrt(3)) # P(X_1 < 4)
#P(X1 = −1) = 0 since X1 is continuous)
pnorm(1, mean = 2.1, sd = sqrt(3)) - pnorm(-5, mean = 2.1, sd = sqrt(3)) # P(-5 < X_1 < 1)
1 - pnorm(2.1, mean = 2.1, sd = sqrt(3)) # P(X_1 > 2.1)
std =sqrt(3)

#Poission distribution
ppois(4, lambda = 3.5) # P(X_2 < 5)
dpois(6, lambda = 3.5) # P(X_2 = 6)
ppois(4, lambda = 3.5) - ppois(0, lambda = 3.5) # P(1 < X_2 < 4)
# P(1 ≤ X2 ≤ 4) = P(X2 ≤ 4) − P(X2 < 1) = P(X2 ≤ 4) − P(X2 ≤ 0)
# P(X2​<1) is the same as P(X2≤0) in Poission
1 - ppois(2.5, lambda = 3.5) # P(X_2 = 2.5)

pexp(1, rate = 1) # P(X_3 < 1)
dexp(1, rate = 1) # P(X_3 = 1)
1 - pexp(2, rate = 1) # P(X_3 > 2)
1 / 1 # E[X_3], for an exponential distribution with rate lambda, the expected value is 1/lambda


#plot PDF and CDF of Normal Distribution
x <- seq(-10, 10, length=1000)
y_pdf <- dnorm(x, mean = 2.1, sd = sqrt(3))
y_cdf <- pnorm(x, mean = 2.1, sd = sqrt(3))

# Set up side-by-side plot layout
par(mfrow=c(1,2))

# PDF plot
plot(x, y_pdf, type="l", main="PDF of Normal Distribution", xlab="X1", ylab="Density")

# CDF plot
plot(x, y_cdf, type="l", main="CDF of Normal Distribution", xlab="X1", ylab="Cumulative Probability")

# Reset plot layout
par(mfrow=c(1,1))

####################
# Given values
mean_lifespan <- 10  # Mean of the lifespan
std_dev <- 3         # Standard deviation
current_age <- 11    # Current age of the equipment
target_age <- 13     # Age to consider replacement
cost_a <- 100        # Replace at age 13 (scheduled)
cost_c <- 150        # Replace at age 13 (unscheduled), c > a

# (a) Probability that the equipment will last until age 13
# Calculate Z-scores
z_11 <- (current_age - mean_lifespan) / std_dev
z_13 <- (target_age - mean_lifespan) / std_dev

# Calculate probabilities
p_lifespan_over_11 <- 1 - pnorm(z_11)
p_lifespan_over_13 <- 1 - pnorm(z_13)

# Conditional probability P(Lifespan > 13 | Lifespan > 11)
p_13_given_11 <- p_lifespan_over_13 / p_lifespan_over_11

# (b) Expected cost of replacement if not replaced now
expected_cost <- p_13_given_11 * cost_a + (1 - p_13_given_11) * cost_c

# Output the results
cat("Probability that the equipment will last until age 13:", p_13_given_11, "\n")
cat("Expected cost of replacement if not replaced now:", expected_cost, "\n")

