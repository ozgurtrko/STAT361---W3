# Generating Random Variables

x <- sample(-50:50, size = 20, replace = F) #Take 20 random numbers from -50 to 50 
x

set.seed(361) # for reproducibility
x <- sample(-2:2, size = 50, replace = T,
            prob = c(0.1, 0.2, 0.3, 0.2, 0.2)) #take 50 random numbers from -2 to 2 with replacement by taking probabilities as prob. 
x

prop.table(table(x)) #check the probabilities

z <- sample(-100:100, size = 500, replace = T)
data_z <- as.data.frame(z) # to use ggplot
library(ggplot2)
h <- ggplot(data_z, aes(x=z)) +
  geom_histogram(color = "blue", fill = "red", bins = 30) + labs(title = "Histogram of the sample Z")
data_z
h

b <- ggplot(data_z, aes(x=z)) + geom_density(alpha = 0.4, color = "blue", fill = "blue") +
  labs(title = "Density of the sample Z")

b
library(ggpubr)
ggarrange(h, b)


cat("Mean of sample Z is ", mean(z), "\n")
cat("Variance of the sample Z is ", var(z), "\n")















