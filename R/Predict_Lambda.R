#' Poisson lambda value prediction
#' This function returns the predicted lamda value of each variable given
#' a dataframe and the possion regression model
#' @param df input dataframe of the original dataset
#' @param poisson_model poisson_model input fitted poisson regression model using glm
#' @return a vector space of predicted value lambda
#' @export
#'
Preidct_Lambda<- function(df,poisson_model){
  Results<- summary(poisson_model)
  Coef<- Results$coefficients[,1]
  Variable_list<- rownames(as.data.frame(Coef))
  Variable_list<- as.data.frame(Variable_list[2:length(Variable_list)])
  variable_name<- as.character(Variable_list[,1])
  df_matrix<- as.matrix(df %>% select(variable_name))
  result_matrix<- df_matrix %*% Coef[2:nrow(as.data.frame(Coef))]
  result_df<- as.data.frame(result_matrix)
  result_df$Intercept<- as.matrix(Coef)[1]
  output<- rowSums(result_df)
  output<- exp(output)
  output<- as.data.frame(output)
  colnames(output)<- 'Predicted_Lambda'
  return(output)
}

