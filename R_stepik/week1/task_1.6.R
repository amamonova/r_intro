df <- mtcars
df$vs = factor(df$vs, labels = c('V', 'S'))
df$am = factor(df$am, labels = c('Auto', 'Manual'))

hist(df$mpg, breaks = 20, xlab='MPG')
boxplot(mpg ~ am, df, ylab = 'MPG')
plot(df$mpg, df$hp)


library(ggplot2)
ggplot(df, aes(x=mpg)) +
  geom_histogram(fill='white', col='black', binwidth = 2)

ggplot(df, aes(x=mpg, fill=am)) +
  geom_dotplot()

ggplot(df, aes(x=mpg)) +
  geom_dotplot()

ggplot(df, aes(x=mpg)) +
  geom_density(fill='red')

ggplot(df, aes(x = mpg, y = hp, col = vs, size = qsec)) +
  geom_point()


df <- airquality
ggplot(df, aes(x = Month, y = Ozone, group=Month)) +
  geom_boxplot()


df <- mtcars
plot1 <- ggplot(df, aes(x = mpg, y = disp, color=hp))+
  geom_point()

ggplot(iris, aes(Sepal.Length)) + geom_histogram(aes(col = Species))
ggplot(iris, aes(Sepal.Length, fill = Species)) + geom_histogram()
ggplot(iris, aes(Sepal.Length)) + geom_histogram(aes(fill = Species))
ggplot(iris, aes(Sepal.Length, col = Species)) + geom_histogram()

