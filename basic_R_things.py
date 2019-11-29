import rpy2.robjects
import rpy2.robjects.packages
from rpy2.robjects.vectors import sprintf
from rpy2.robjects.packages import importr

# import R's "base" package
base = importr('base')

# import R's "utils" package
utils = importr('utils')



number = 1
sprintf("I want to print this number: %i", number)
#[1] "I want to print this number: 64"