# Prior probabilities
P_Guilty <- 1/10
P_Innocent <- 9/10

# Probabilities of the polygraph test results
P_TestGuiltyGivenGuilty <- 0.80
P_TestGuiltyGivenInnocent <- 0.05

# Calculate the probability that a suspect is innocent given the polygraph indicates guilt
P_InnocentGivenTestGuilty <- (P_Innocent * P_TestGuiltyGivenInnocent) / 
  (P_Guilty * P_TestGuiltyGivenGuilty + P_Innocent * P_TestGuiltyGivenInnocent)
P_InnocentGivenTestGuilty


# Print the result
#cat("Probability that a suspect is innocent given the polygraph says guilty:", P_InnocentGivenTestGuilty, "\n")
