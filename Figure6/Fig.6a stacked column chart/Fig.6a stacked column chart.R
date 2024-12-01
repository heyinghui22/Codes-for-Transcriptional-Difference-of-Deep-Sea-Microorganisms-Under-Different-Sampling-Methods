# Read data
setwd("C:\\Users\\user22\\Desktop\\2024EST\\modification\\adddata\\relative_abundance\\Bar Plot Creation")

library(tidyr)
library(ggplot2)

# Import data
data <- read.csv("data.csv")

# Convert data to long format
long_data <- pivot_longer(data, 
                          cols = c("MIS1", "MIS2", "ISMF", "ISMU", "NIS1", "NIS2"), 
                          names_to = "type",
                          values_to = "value")

# Add order column
long_data$order <- seq_len(nrow(long_data))

# Arrange categories based on order column
p1 <- ggplot(long_data, aes(y = classification, x = value, fill = type, order = order)) +
  geom_bar(stat = "identity", position = "dodge") +
  scale_y_discrete(limits = long_data$classification[order(long_data$order)])

p1

ggsave('MAG_relative_abundance_MT.pdf', p1, width = 18, height = 12)