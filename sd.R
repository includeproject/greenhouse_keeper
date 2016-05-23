

temp = scan("temperature.data")
# Create 1000 random numbers 
# Use mean and standard deviation
#temp <- rnorm(100, mean=50, sd=10)
#time <- 1:100

# This function computes the standard deviation of the values in x. If na.rm is
# TRUE then missing values are removed before computation proceeds.
temp_sd <- sd(temp, na.rm = FALSE)


print("Standard Deviation: ")
print(temp_sd)

plot(temp, main="Scatterplot Example", 
    xlab="Time", ylab="Temperature")

temp_data <- as.data.frame(temp)
abline(lm(temp ~ ., data = temp_data), col="red")

