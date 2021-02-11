# HarvardX PH125.5x "Productivity Tools"

library(tidyverse)
library(dslabs)

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
