## Exercises 
# Write a function to generate random variables from exponential distribution (λ = 5) by using inverse transform method, apply it for n=10000 and validate that they come from exponential distribution.

lambda <- 5
set.seed(361)
u <- runif(n = 1000)
x <- -log(u)/lambda
head(x, 20)

data_x <- as.data.frame(x)
library(ggplot2)

H <- ggplot(data_x, aes(x=x)) + geom_histogram(color = "violet", fill = "pink", bins = 30) +
  labs(title = "Histogram of the sample X")

B <- ggplot(data_x, aes(x=x)) + geom_density(color = "blue", fill = "yellow", alpha = 0.4) +
  labs(title = "Density of the sample X")

ggarrange(H,B)

# Now, calculate the sample mean to compare with the expectation of exponential distribution.

cat("Mean of sample X:", mean(x), "\n")
cat("Variance of sample X:", var(x), "\n")

exp_mean <- 1/lambda
exp_var <- 1/(lambda)^2
exp_mean
exp_var

#The length of time T is a random variable, which is needed by students in a particular course to complete a 1 hour exam. It has a pdf

#f(t)=kt^2,0≤t≤1

#For the random variable T,
#a) Find the value k that makes f(t) a probability density function (PDF).

f <- function(k, t){
  return(k*t^2)
}

a <- 0
b <- 1

pdf_int <- function(k){
  return(integrate(f, lower = a, upper = b, k = k)$value)
}

k_value <- uniroot(pdf_int, c(0,10))$root
print(k_value)

k_value




