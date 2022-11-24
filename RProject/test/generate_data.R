generate_y_array <- function(x_array, epsilon_array, m) {
  n = 40
  teta0 <- -9
  teta_array <- c(-3, -2, 0.02)
  y_array <- vector("numeric", n)
  
  for (k in rep(1:n)) {
    y_array[k] = teta0 + epsilon_array[k]
    
    for (i in rep(1:m)) {
      y_array[k] = y_array[k] + teta_array[i] * x_array[k] ** i
    }
    
  }
  
  return(y_array)
}


generate_x_array <- function() {
  n = 40
  x_array <- vector("numeric", n)
  
  for(k in rep(1:n)) {
    x_array[k] <- -4 + k * 8 / n
  }
  
  return(x_array)
}


generate_epsilon_array_first_case <- function() {
  n = 40
  epsilon_array <- rnorm(n, 0, 2.2)
  
  return(epsilon_array)
}


generate_epsilon_array_second_case <- function() {
  n = 40
  epsilon_array <- runif(n, - 3 * sqrt(2.2), 3 * sqrt(2.2))
  
  return(epsilon_array)
}