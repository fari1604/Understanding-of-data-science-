
library(ggplot2)


data(iris)


mean_value <- mean(iris$Sepal.Length)
median_value <- median(iris$Sepal.Length)
variance_value <- var(iris$Sepal.Length)


print(paste("Mean of Sepal.Length:", mean_value))
print(paste("Median of Sepal.Length:", median_value))
print(paste("Variance of Sepal.Length:", variance_value))


ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) +
  stat_summary(fun = mean, geom = "bar") +
  labs(title = "Average Sepal.Length per Species",
       x = "Species",
       y = "Mean Sepal.Length")

