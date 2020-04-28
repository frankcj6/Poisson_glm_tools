#' Predict Probability of outcome variable
#' This function returns the probability of the outcome variable
#' at the value of input under poisson distribution
#' Note that default is a one-tailed function
#' @param value input expected value of outcome variable
#' @param lambda input vector space of predicted lambda
#' @return return a vector space of predicted probability according to
#' @return poisson distribution
#' @export
#' 
Predict_Prob<- function(value,lambda){
  for (i in 1:value){
    if (value==0){
      result<- 1
    } else{
    result<- 1
    result<- result*i
    }
  }
  lambda<- as.matrix(lambda)
  pr<- (lambda^value)*(exp(-lambda)/result)
  pr<- as.data.frame(pr)
  colnames(pr)<- 'Predicted_Probability'
  return(pr)
}

setwd('Poissonglm')
devtools::document()