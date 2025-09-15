setwd("E:\\DEWMI NISANSA\\OneDrive\\Attachments\\Desktop\]IT24102627")
#Question 01
n <- 50
p <- 0.85
# part i
# Binomial Distribution
# In here , random variable x has binomial distribution with n = 50 and p = 0.85

#part ii
prob <- pbinom(46,50,0.85,lower.tail = FALSE)
print(prob)

#Question 02
#Part i
# Number of customer calls per hour on a given day that receives by a call center

#Part ii
#Poisson Distribution 
# here, random variable x has poisson distribution with lambda = 12
lambda <- 12
k <- 15
prob1 <- dpois (k,lambda)
print(prob1)