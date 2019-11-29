
'''
H0: mu1-mu2 = 0
HA: mu1-mu2 NOT= 0
'''

#Question One B

Risk = c(38, 23, 41, 18, 37, 36, 23, 62, 31, 34, 24,
         14, 21, 17, 16, 20, 15, 10, 45, 39, 22, 35,
         49, 48, 44, 35, 43, 39, 34, 13, 73, 25, 27)

Ctrl = c(16, 18, 18, 24, 19, 11, 10, 15, 16, 18, 18,
         13, 19, 10, 16, 16, 24, 13,  9, 14, 21, 19,
         7, 18, 19, 12, 11, 22, 25, 16, 13, 11, 13)

sample_mean_risk = mean(Risk)
sample_mean_ctrl = mean(Ctrl)

sample_sd_risk = sd(Risk)
sample_sd_ctrl = sd(Ctrl)


print(sample_mean_risk) # 31.84848
print(sample_mean_ctrl) # 15.87879

print(sample_sd_risk) # 14.40729
print(sample_sd_ctrl) # 4.539807


#Question One C

t.test(Risk,Ctrl,paried=TRUE,alternative="two.sided")

# Very low p-value means that we should reject the null hypothesis

'''
data:  Risk and Ctrl
t = 6.0732, df = 38.293, p-value = 4.39e-07
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 10.64778 21.29161
sample estimates:
mean of x mean of y 
 31.84848  15.87879 

'''


#Part D

#We are 95% confident that the true mean difference lies within the interval of 10.64778 and 21.29161

#Question 2


t.test(Risk,Ctrl,paried=FALSE,alternative="two.sided")







