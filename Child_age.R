#Child conditional probability

# Define the number of families to simulate
n <- 10^5

# Simulate the ages of the three children in each family
child_a <- sample(2, n, replace=TRUE)
child_b <- sample(2, n, replace=TRUE)
#child_c <- sample(3, n, replace=TRUE)

n.b <- sum(child_a==1)
n.ab <- sum(child_a==1 & child_b==1)
n.ab/n.b

# Simulate the ages of the three children in each family
child_a <- sample(2, n, replace=TRUE)
child_b <- sample(2, n, replace=TRUE)
#child_c <- sample(3, n, replace=TRUE)

n.b <- sum(child_a==1 | child_b==1)
n.ab <- sum(child_a==1 & child_b==1)
n.ab/n.b

# Count the number of families where child b is older than child c (event B)
n_b <- sum(child_b > child_c)

# Count the number of families where child a is older than child b (event A) and child b is older than child c (event B)
n_a_and_b <- sum(child_a > child_b & child_b > child_c)

# Calculate P(A|B)
p_A_given_B <- n_a_and_b / n_b
p_A_given_B