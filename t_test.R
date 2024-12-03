# Sample data
passengers <- c(110, 90, 85, 105, 120)

# Perform a two-sample t-test
t.test(passengers, mu = 110, alternative = "two.sided", conf.level = 0.95)
# Sample data
passengers <- c(110, 90, 85, 105, 120)

# Perform a two-sample t-test
t.test(passengers, mu = 110, alternative = "two.sided", conf.level = 0.95)

# Sample data for Exercise 2
data <- c(110, 90, 85, 105, 120)
sample_mean <- mean(data)
sample_std <- sd(data)
n <- length(data)
hypothesized_mean <- 110

# Calculate the t-statistic
t_statistic <- (sample_mean - hypothesized_mean) / (sample_std / sqrt(n))

# Calculate the two-tailed p-value
p_value <- 2 * (1 - pt(abs(t_statistic), df=n-1))

# Output the t-statistic and p-value
cat("t-statistic:", t_statistic, "\n")
cat("p-value:", p_value, "\n")
