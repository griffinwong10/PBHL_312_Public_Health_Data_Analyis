# Griffin Wong
# 12/04/2019
# Drexel University Dornsife School of Public Health
# Department of Epidemiology and Biostatistics
# PBHL 312-001: Public Health Data Analysis


# Question 3

new_drug <- c(123,113,114,102,106,109,101,104,116,124)

best_standard_care <- c(134,129,128,123,127,134,124,121,131,137)

t.test(new_drug, best_standard_care, paired = TRUE, alternative = "two.sided")


              #	Paired t-test

# data:  new_drug and best_standard_care

# t = -11.975, df = 9, p-value = 7.836e-07
# alternative hypothesis: true difference in means is not equal to 0

# 95 percent confidence interval:  -20.92468    -14.27532

# sample estimates:
# mean of the differences: -17.6 



# Question 5

#Part A

Risk = c(38, 23, 41, 18, 37, 36, 23, 62, 31, 34, 24,
         14, 21, 17, 16, 20, 15, 10, 45, 39, 22, 35,
         49, 48, 44, 35, 43, 39, 34, 13, 73, 25, 27)

Ctrl = c(16, 18, 18, 24, 19, 11, 10, 15, 16, 18, 18,
         13, 19, 10, 16, 16, 24, 13, 9, 14, 21, 19,
         7, 18, 19, 12, 11, 22, 25, 16, 13, 11, 13)


hist(Risk)

summary(Risk)

hist(Ctrl)

summary(Ctrl)

boxplot (Risk, Ctrl)



# Part B:  A blood lead level of more than 45 requires medical treatment. Test the

# hypotheses:
  #H0: μrisk = 45
  #vs
  #H0: μrisk ≠ 45

#where μrisk is the true mean of the at-risk children, using the command

t.test(Risk, mu=45, alternative= "two.sided")


# Part f:

#Perform a t-test of the null hypothesis of no difference in mean with a twosided
#alternative using the following command

t.test(Risk, Ctrl, paired=TRUE, alternative="two.sided")





















