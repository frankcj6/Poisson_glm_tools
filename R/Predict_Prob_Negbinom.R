#' Predict Probability of outcome variable
#' This function returns the probability of the outcome variable
#' at the value of input under negative binomial distribution
#' Note that default is a one-tailed function
#' @param value input expected value of outcome variable
#' @param lambda input vector space of predicted lambda
#' @param theta input the scaling parameter of the std error.
#' @return return a vector space of predicted probability according to
#' @return negative binomial distribution
#' @export
#'
Predict_Prob_Negbinom<- function(value,theta,lambda){
  for (i in 1:value){
    if (value==0){
      result<- 1
    } else{
      result<- 1
      result<- result*i
    }
  }
  lambda<- as.matrix(lambda)
  pr_1<- gamma(value+theta)/(result*gamma(theta))
  pr_2<- (theta/(theta+lambda))^theta
  pr_3<- (lambda/(lambda+theta))^value
  pr<- pr_1*pr_2*pr_3
  pr<- as.data.frame(pr)
  colnames(pr)<- 'Predicted_Probability_nbinom'
  return(pr)
}
