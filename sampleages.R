# here I am creating a variable with 3 sample ages. You will want to fill in your 20 values, 
#each separated by a comma
sample_ages=c(1, 2, 3)
mean(sample_ages)
sd(sample_ages)


age_guesses = c(54,66,31,31,29,62,16,37,45,24,18,57,23,45,56,70,42,30,4,27)
sd_age_guesses = sd((c(54,66,31,31,29,62,16,37,45,24,18,57,23,45,56,70,42,30,4,27)))
mean_age_mean = mean(c(54,66,31,31,29,62,16,37,45,24,18,57,23,45,56,70,42,30,4,27))



#This is incorrect for Xi - M
#This should be corrected to have the value being subtracted to be the calculated mean of true ages
age_sample_error = c((54-49)^2,(66-67)^2,(31-22)^2,(31-30)^2,(29-30)^2,(62-58)^2,(16-17)^2,(37-38)^2,(45-42)^2,
                     (24-26)^2,(18-19)^2,(57-62)^2,(23-23)^2,(45-38)^2,(56-54)^2,(70-71)^2,(42-54)^2,(30-36)^2,(4-3)^2,(27-27)^2
)

#Question 5 Page Two

sum(age_sample_error) # Equals 401

401/20 # Equals 20.05

sqrt(20.05) # Equals 4.477723


age_sample_error = c((54-49),(66-67),(31-22),(31-30),(29-30),(62-58),(16-17),(37-38),(45-42),
                     (24-26),(18-19),(57-62),(23-23),(45-38),(56-54),(70-71),(42-54),(30-36),(4-3),(27-27)
                     )

#Calculating the sample mean

age_sample_error = c((54-49),(66-67),(31-22),(31-30),(29-30),(62-58),(16-17),(37-38),(45-42),
                     (24-26),(18-19),(57-62),(23-23),(45-38),(56-54),(70-71),(42-54),(30-36),(4-3),(27-27)
                     )

sum(age_sample_error) # Equals 1

1/20 # Equals 0.05




