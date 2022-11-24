source("generate_data.R")
source("generate_gistogram.R")
source("approximate_observation.R")


x_array <- generate_x_array()
epsilon_array <- generate_epsilon_array_first_case()
epsilon_array <- generate_epsilon_array_second_case()
y_array = generate_y_array(x_array, epsilon_array, 3)

generate_epsilon_gistogram(epsilon_array, 5)


func <- approximate_observation_first_case(y_array, x_array)



cor(y_array, predict(func))

plot.default(x_array, y_array)
lines(x_array, predict(func), col="red")