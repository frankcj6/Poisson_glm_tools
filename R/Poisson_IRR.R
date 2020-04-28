#' Variable Effect IRR risk ratio/risk ration Interpretation
#' This function returns risk ratio coefficient for variable
#' with 95 percent confidence interval and Pr>|z|
#' @param possion_model A fitted possion regression model using glm
#' @return A dataframe that contains the IRR, z value, p-value, and 95 percent confidence interval for the IRR.
#' @export
#'

Possion_IRR<- function(possion_model){
  Results<- summary(possion_model)
  IRR_list<- exp(Results$coefficients[,1])
  lower<- Results$coefficients[,1]-2*Results$coefficients[,2]
  upper<- Results$coefficients[,1]+2*Results$coefficients[,2]
  lower_bound<- exp(lower)
  upper_bound<- exp(upper)
  z_value<- Results$coefficient[,3]
  Pr<- Results$coefficients[,4]
  output<- as.data.frame(cbind(IRR_list,z_value,Pr,lower_bound,upper_bound))
  names(output)<- c('IRR','z value','Pr(>|z|)','lower_bound(95% CI)','upper_bound(95% CI)')
  return(output)
}

