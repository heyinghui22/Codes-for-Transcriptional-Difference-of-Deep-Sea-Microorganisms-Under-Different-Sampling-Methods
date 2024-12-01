# Read data
setwd("C:\\Users\\user22\\Desktop\\2024EST\\modification\\adddata\\tpm\\240823 COG Annotation Bar Plot\\allMAG\\Bar Plot Creation")

library(tidyr)
library(ggplot2)

# Import data
data <- read.csv("input.csv")

# Convert data to long format
long_data <- pivot_longer(data, 
                          cols = c("MIS1", "MIS2", "MIS3", "MIS4", "MIS5", "MIS6", "ISMF", "ISMU", "NIS1", "NIS2"), 
                          names_to = "type",
                          values_to = "value")

# Add order column
long_data$order <- seq_len(nrow(long_data))

# Arrange categories based on order column
p1 <- ggplot(long_data, aes(y = classification, x = value, fill = type, order = order)) +
  geom_bar(stat = "identity", position = "dodge") +
  scale_y_discrete(limits = long_data$classification[order(long_data$order)]) +
  scale_fill_manual(values = c("#3AA6B9", "#c08497", "#FDE4CF", "#f7af9d", "#FF9EAA", "#f7e3af", "#e2cfea", "#8EECF5", "#ECB159", "#739072"))

# "#f6bd60", "#a8dadc", "#f7ede2", "#f5cac3", "#84a59d", "#f28482"
p1

ggsave('output.pdf', p1, width = 8, height = 8)