data = mtcars

mtcars$even_gear = as.numeric(mtcars$gear %% 2 == 1)

subset(mtcars, mtcars$cyl == 4)[,1]
mtcars$mpg[mtcars$cyl == 4]


mini_mtcars <- mtcars[c(3, 7, 10, 12, 32),]
mini_mtcars <- mtcars[c(3, 7, 10, 12, nrow(mtcars)), ]


mtcars$new_var = ifelse(mtcars$carb >= 4 | mtcars$cyl > 6, 1, 0)


if (mean(my_vector)  > 20) {
  result <- "My mean is great"
} else {
  result <- "My mean is not so great"
}


good_months <-  c()
for (i in 2:(length(AirPassengers)-1)) {
  if (AirPassengers[i] < AirPassengers[i+1]) {
    good_months <- c(good_months, AirPassengers[i])
  }
}
good_months <- c()    
index <- 1    
for (i in 2:length(AirPassengers)) {    
  if (AirPassengers[i]>AirPassengers[i-1]){    
    good_months[index] <- AirPassengers[i]    
    index <- index + 1    
  }    
}
good_months <- AirPassengers[-1][AirPassengers[-1] > AirPassengers[-144]] 


moving_average <- numeric(135)
index <- 1
for (i in 1:(length(AirPassengers)-9)) {
  moving_average[index] <- mean(AirPassengers[i:(i+9)])
  index <- index+1
}
