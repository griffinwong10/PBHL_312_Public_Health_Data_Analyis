#DUID: 14221978
#Last Edit: 11/15/2019 1:30 pm
#Assignment Due: 11/20/2019
#Public Health Data Analysis Homework Four
#Code snippets adapted from Dr. Robinson

#Define Variables
n = 31
pop_mean = 50
pop_std_dev = 10
x_bar = 55

#Calculate Z-Score
z = (x_bar-pop_mean)/(pop_std_dev/sqrt(n))

print(z) # 2.783882


#Calculate P-Value
2*pnorm(-abs(z)) #0.005371254