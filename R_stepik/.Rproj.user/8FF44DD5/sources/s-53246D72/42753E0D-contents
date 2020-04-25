result = mean(mtcars$qsec[mtcars$cyl != 3 & mtcars$mpg > 20])

aggregate(x = mtcars$hp, by = list(mtcars$vs), FUN = mean)
aggregate(hp ~ vs, mtcars, mean)

descriptions_stat <- aggregate(x = mtcars[, c(4, 3)], 
                               by = list(mtcars$am), FUN=sd)
#right answer
descriptions_stat <- aggregate(cbind(hp,disp) ~ am, mtcars, sd)

library(psych)
describe(x=mtcars)
describeBy(mtcars[, -c(8, 9)], group = mtcars$vs,
           mat = T, digits = 1)
desc <- describeBy(mtcars$qsec, group = list(mtcars$vs, mtcars$am), mat=T)


df <-  airquality
sub <- subset(df, df$Month %in% c(7, 8, 9))
aggregate(Ozone ~ Month, sub, length)
desc <- describeBy(df$Wind, group = df$Month, mat = T)


df <- iris
desc <- describe(df[df$Species == 'virginica', ])


my_vector <- rnorm(30)
my_vector[sample(1:30, 10)] <- NA 
replace(my_vector, which(is.na(my_vector)), mean(my_vector, na.rm = T))
