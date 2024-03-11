u <- runif(100, min = 2, max = 5)
data_u <- data.frame(u)
ggplot(data_u, aes(x=u)) + geom_histogram(color = "purple", fill = "yellow", bins = 30, alpha = 0.4) +
  labs(title = "Histogram of the sample U")

# Let generate numbers from p~Binom(n=100, p=0.3) sample of size 1000.

p <- rbinom(n = 1000, size = 100, prob = 0.3)
data_p <- as.data.frame(p)

ggplot(data_p, aes(x=p)) + geom_histogram(color = "blue", fill = "blue", bins = 40, alpha = 0.4) + 
  labs(title = "Histogram of the sample P")

