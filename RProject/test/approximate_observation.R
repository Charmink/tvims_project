approximate_observation_first_case <- function(y_array, x_array) {
  func <- nls(y_array ~ p + a * x_array + b * x_array ** 2 + n * x_array ** 3)
  
  return(func)
}

approximate_observation_second_case <- function(y_array, x_array) {
  func <- nls(y_array ~ p + a * x_array + b * x_array ** 2)
  
  return(func)
}