# Set working directory
setwd("C:\\Users\\user22\\Desktop\\2024EST\\修改\\adddata\\16S\\Community Structure Box Plot")

# Clear the environment
rm(list = ls())

# Read data
data <- read.csv(inputdata.csv", row.names = 1)

#转换长格式
library(reshape2)
data <- melt(data, id.vars = "Name")

library(ggplot2)

colors <- c("#E69F00", "#56B4E9", "#cdb4db", "#F0E442",
            '#fcd5ce', "#2a9d8f", "#ffc8dd", "#f4a261",
            "#7bdff2", "#f07167", "#CC79A7", "#756bb1",
            "#fc9272", "#fec44f", "#31a354", "#b2f7ef",
            "#d6ccc2", "#a2d2ff", "#a3b18a", "#e4c1f9",
            "#fec89a", "#778da9", "#fdf0d5", "#d8e2dc",
            "#f4acb7", "#adc178", "#00afb9")

p <- ggplot(data = data, aes(x = variable, y = value, fill = Name)) +
  geom_bar(stat = "identity", position = "stack") +
  scale_fill_manual(values = colors)

print(p)

ggsave("111.pdf", plot = p,
       width = 30,
       height = 4)