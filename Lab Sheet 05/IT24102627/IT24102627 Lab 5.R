 setwd("C:\\Users\\IT24102627\\Desktop\\IT24102627")

# 1. Import the dataset and store it in a data frame called "Delivery_Times"
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)

# View the data structure
head(Delivery_Times)
str(Delivery_Times)

# Rename the column for easier access
names(Delivery_Times) <- "Delivery_Time"

# Attach the data frame to access variables directly
attach(Delivery_Times)

# 2. Draw a histogram with nine class intervals (lower=20, upper=70, right open intervals)
histogram <- hist(Delivery_Time, 
                  main = "Histogram of Delivery Times", 
                  xlab = "Delivery Time (minutes)",
                  breaks = seq(20, 70, length = 10), 
                  right = FALSE,
                  col = "lightblue")

# 3. Comment on the shape of the distribution
# The distribution appears to be approximately symmetric with a slight right skew.
# Most delivery times are clustered between 35-55 minutes.

# 4. Draw a cumulative frequency polygon (ogive) in a separate plot

# Calculate cumulative frequencies
breaks <- round(histogram$breaks)
freq <- histogram$counts
cum_freq <- cumsum(freq)

# Create cumulative frequency data for ogive
new <- c(0, cum_freq)  # Start with 0 cumulative frequency

# Plot the ogive
plot(breaks, new, 
     type = "l", 
     main = "Cumulative Frequency Polygon (Ogive) for Delivery Times",
     xlab = "Delivery Time (minutes)", 
     ylab = "Cumulative Frequency",
     ylim = c(0, max(new)),
     col = "blue", 
     lwd = 2)

# Add points at each breakpoint
points(breaks, new, pch = 16, col = "blue")

# Add grid for better readability
grid()

# Display the cumulative frequency table
cumulative_table <- cbind(Upper_Limit = breaks, Cumulative_Frequency = new)
print("Cumulative Frequency Table:")
print(cumulative_table)

# Detach the data frame
detach(Delivery_Times)
