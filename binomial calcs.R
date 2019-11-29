# read the help file for the dbinom function
?dbinom



#compute the binomial probabilities for P(X=7), P(X=8), p(X=9) and P(X=10) with n=10 and p=.25

dbinom(7, 10, .25)

dbinom(8, 10, .25)

dbinom(9, 10, .25)

dbinom(10, 10, .25)

#computing them all at once

2+2

dbinom(7:10, 10, .25)

# P(X= 7 or 8 or 9 o5 10) 
sum(dbinom(7:10, 10, .25))

# or use the pbinom function to get the probability of >6 successes
pbinom(6, 10, .25, lower.tail=F)


# calculating the binomial coefficients "10 choose 7"
choose(10, 7)

# plotting the probabilities of all the possible values for X 
x=0:10
px=dbinom(x, 10, .25)

plot(x, px)
lines(x, px)

#what if the test had 100 questions?

x=0:100
px=dbinom(x, 100, .25)

plot(x, px, pch=16)
lines(x, px)

# probability of at least 3 births with CHD with n=75 and p=.008 
# P(at least 3 CHD) = 1-P(0 or 1 or 2 CHD)
x=0:2
x
# anotherway to do the same thing
x=c(0, 1, 2)

x
prob012= dbinom(x, 75, .008)
prob012 
prob3ormore=1-sum(prob012)


blues=0:18
pblues=dbinom(blues, 18, .24)
 plot(blues, pblues, pch=16, ylab="probability", cex.lab=1.5, main="probability of X blues", cex.main=1.5, xlab="X")
 lines(blues, pblues)
 
 
 correct=0:52
 pcorrect=dbinom(correct, 52, .25)
 
plabs=rep(NA, 53)
inds=1:26*2
plabs[inds]=phat[inds]

plabs=rep(NA, 53)

cols=rep("gray", 53)
 cols[26:53]="red"
 barplot(pcorrect, names=plabs, las=2, cex.names=2, col=cols)
 title("sampling distribution of phat", cex.main=2)
 
 lines(correct, dnorm(phat, 13, sqrt(.25*.75*52)))
 
