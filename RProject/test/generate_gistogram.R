generate_epsilon_gistogram <- function(epsilon_array, column_count) {
  min_value <- min(epsilon_array)
  max_value <- max(epsilon_array)
  delta = (max_value - min_value) / column_count
  
  
  hist(epsilon_array, breaks = seq(min_value, max_value, delta), freq = FALSE)
  
}
