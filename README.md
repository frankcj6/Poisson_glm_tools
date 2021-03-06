# Poisson_glm_tools
R package for Poisson_glm_tools

# Description:
package name: Poissonglm
This packages contains four functions that are designed to consolidate the process of performing generalized linear model 
using poisson(include negative binomial) distribution. 

All functions are created with the assumption of a possion regression model has already been fitted. 
Parameter, input and output format are identified in the package description. 

# Usage:
Poission_IRR():
This function takes the input of the Poisson regression, calculates the risk ratio/risk ratio interpreation, z-value, p-value, 
and 95% Confidence Interval for the risk ratio coefficients for each variable. 

Predict_Lambda():
This function takes the input of dataset and the Poisson regression, predict the vector space of lambda value under Poisson distribution.

Predict_Prob():
This function takes the input of the expected value and a vector space of lambda value, calculates the probability of outcome equals 
the predicted value under Poisson distribution for each observant. 

Predict_Prob_Negbinom():
This function takes the input of the expected value, a vector space of lambda value, and the scaling parameter of the variance, calculates the probability of outcome equals to the predicted value under the Negative Binomial distribution for each observant.

# Installation:
use the following code to install packages from github

devtools::install_github('frankcj6/Poisson_glm_tools')
