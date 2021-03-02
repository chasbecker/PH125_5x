# HarvardX PH125.5x "Productivity Tools" 1 of 2

library(tidyverse)
library(dslabs)
rm(list=ls())

MyName <-  readline(prompt="Who are you? ")
# this str_c function nicely cleans up the mess that is c()
GreetMe <- str_c("Hello, nice to meet you ", MyName, ".")
print(GreetMe)
str_length(GreetMe)

z_prime <- vector()
z <- integer()
for(z in 1:100){ z_prime <- c( z_prime, z) }
print(z_prime)
z_columns <- 5
z_prime_matrix <- matrix( z_prime, ncol=z_columns, nrow=length(z_prime)/z_columns)
z_prime_matrix
z_prime_matrix[2,]
z_prime_matrix[,2]
# demonstrate the built-in R data editor
edit(z_prime_matrix)

# okay, let's get serious here
print("I am SOOOO serious!")

# practise: generate a random normal distro of m/f heights, plot as kernel density 
# 10,000 seems to be a sweet spot for getting a nice normal distribution
m <- rnorm( n = 10000, mean = 70, sd = 3)
f <- rnorm( n = 10000, mean = 64.5, sd = 2.5)
mfplot <- ggplot() +
  geom_density( aes( m ) ) +
  geom_density( aes( f ) )
mfplot
