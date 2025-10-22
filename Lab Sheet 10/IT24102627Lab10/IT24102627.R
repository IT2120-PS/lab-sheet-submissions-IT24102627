setwd("E:\\DEWMI NISANSA\\OneDrive\\Attachments\\Desktop\\IT24102627Lab10")

#Exercise
#Q1(i)
observed <- c(120,95,85,100)
prob <- c(0.25,0.25,0.25,0.25)

#(ii)
chisq.test(x=observed, p=prob)

#(iii)
#Conclution: Since the p value(0.08966) is greater than 0.05,do not  reject null hypothesis at 5%
#level of significance. therefore we can conclude that there is a significant association between
#snack and type

