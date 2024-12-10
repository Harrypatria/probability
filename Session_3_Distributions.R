#Let X1 ∼ N(2.1, 3)
#(a) FX1(4) 
pnorm(4,2.1,sqrt(3))

#P(X1 = −1) 
pnorm(-1,2.1,sqrt(3))

#P(−5 ≤ X1 ≤ 1) =  = P(X1 ≤ 1) − P(X1 < −5)
# since X1 is continuous P(X1 <= −5)=P(X1 < −5) 
# P(X1 ≤ 1) − P(X1 < −5)
pnorm(1,2.1,sqrt(3))-pnorm(-5,2.1,sqrt(3)) 

#P(X1 ≥ 2.1) 
1-pnorm(2.1,2.1,sqrt(3))

#σX1
sqrt(3)

#X2 ∼ Poisson(3.5) 
#P(X2 < 5) as Poisson is integer then 5 --> 4
#P(X2 < 5) = P(X2 ≤ 4)
ppois(4,3.5)

#P(X2 = 6) 
dpois(6,3.5)

# P(1 ≤ X2 ≤ 4)
# P(1 ≤ X2 ≤ 4) = P(X2 ≤ 4) − P(X2 < 1) 
# As X2 is integer
# P(X2 ≤ 4) − P(X2 ≤ 0)
ppois(4,3.5)-ppois(0,3.5)

#P(X2 = 2.5)
dpois(2.5,3.5) #0 since X2 takes only non-negative integers

#X3 ∼ Exp(2).
# FX(1)
pexp(1,2)

#P(X3=1)= 0 since X3 is continuous 

#fX3(1) 
dexp(1,2)

#P(X3 ≥ 2)
1-pexp(2,2)

E[X3]
1/2

#The probability that Mary eats out for lunch is 0.2 on an arbitrary day.
#Assume that the events of eating out on different days are independent.

#What is the probability that Mary will eat out twice next week?
# Let X be the number of days Mary will eat out next week.
# Then X ∼ Bin(7, 0.2). We compute P(X = 2)
dbinom(2,7,0.2)

#What is the probability that she will eat out more than twice next week?
1-pbinom(2,7,0.2)

#What is the probability that Mary eats out for the first time on Thursday next week?
#Let Y be the number of days before the first day Mary will eat out.
#Then Y ∼ Geo(0.2). We compute P(Y = 3) 
dgeom(3,0.2)

#What is the probability that she eats out for the second time on Friday next week?
#On Friday she will eat out.The probability is 0.2
#In the interval from Monday until Thursday she will eat out once.
#The probability is 4 · (0.2 · (0.8)3).

#Hence the requested probability is
4*(0.2*(0.8)**3)*0.2

#