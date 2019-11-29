# Griffin Wong
# DUID 14221978
# Last Edit: 11/18/2019
# Code Adapted from Dr. Robinson, PBHL 312
# Purpose: to understand t-test functions and calculate p-values


# method one
sats = read.table("File path")
attach(sats)

# method two
sats = scan()

# method three
sats <- read.csv(file="IStillNeedTheData.csv", header=TRUE, sep=",")

# perform analysis
hist(sats)
qqnorm(sats)
boxplot(sats)

mean(sats)
sd(sats)


# create new variable for population mean
# is there evidence that the poplation mean is not 1000

mu0 = 1000

# one sided alternative mu>1000

t.test(sats, mu=mu0, alternative = "greater") # p-value = 0.001282

# two sided alternative mu not equal to 1000
t.test(sats, mu=mu0, alternative = "two.sided") # p-value = 0.002564



#EXAMPLE ONE: PAIRED T-TEST

n = 12
df = n-1

#one-sided p-value
pval = 1-pt(3.043, df)

#two-sided p-value
two_sided_pval = 2*pval



#EXAMPLE TWO: PAIRED T-TEST for SAT Test Preparation Test

sample_n = 17
degrees_freedom = sample_n - 1
pval = 1-pt(3.043, df)

attach(satpairs)

hist(satposttest)
summary(satposttest)
boxplot(satpretest,satposttest)

t.test(satposttest, satpretest, paired=TRUE, alternative = "two.sided") # p-value = 0.2238
# Fail to reject the null hypothesis that no difference exists between pre and post test scores

summary(chol_typeA)
summary(chol_typeB)