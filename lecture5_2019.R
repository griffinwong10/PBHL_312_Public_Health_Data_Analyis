# Griffin Wong
# DUID: 14221978
# Public Health Data Analysis: PBHL 312
# Last Edit: 10.07.2019
# Purpose: Script for Lecture Five Week Three
# Source Code: Dr. Robinson

# This is a file of R code. It contains command you can use to analyze data in R. 
# You can copy and paste into the command line, 
#or highlight the code you want and use "command +enter"
# test written after the "#" symbol are comments that won't be run by R

2+2
2/0

# An inefficient way to get a small datset into R

Risk = c(38, 23, 41, 18, 37, 36, 23, 62, 31, 34, 24,
         14, 21, 17, 16, 20, 15, 10, 45, 39, 22, 35,
         49, 48, 44, 35, 43, 39, 34, 13, 73, 25, 27)
Ctrl = c(16, 18, 18, 24, 19, 11, 10, 15, 16, 18, 18,
         13, 19, 10, 16, 16, 24, 13,  9, 14, 21, 19,
         7, 18, 19, 12, 11, 22, 25, 16, 13, 11, 13)

#rm(Risk, Ctrl)
# A more efficient way: load the data in from an external file called "lead.txt" in the folder "rcode" 
leaddata = read.table("~/Dropbox/PBHL312_2019/rcode/lead.txt", header=T)

#or

setwd("~/Dropbox/PBHL312_2019/rcode")
# try going to Misc-> change working directory, then find the folder your file is in

leaddata = read.table("lead.txt", header=T)
#This creates a data table  called "leaddata" with two columns (variables). Find out what the variables are using  

leaddata

names(leaddata)
# Create those variables outside of the data table
attach(leaddata)

# OK, the hard part is done! Now we can compute some summaries of the variables

mean(Risk)
mean(Ctrl)

var(Risk)
var(Ctrl)

sd(Risk)
sd(Ctrl)

IQR(Risk)
IQR(Ctrl)

# the summary function gives the 5-number summary plus the mean
 
summary(Risk)
summary(Ctrl)

# histograms
hist(Risk)

hist(Ctrl)

boxplot(Risk, Ctrl, names=c("risk group", "control group"))