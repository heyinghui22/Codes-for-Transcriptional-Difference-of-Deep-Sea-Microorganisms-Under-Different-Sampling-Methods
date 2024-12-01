setwd("C:\\Users\\user22\\Desktop\\2024EST\\code_upload\\figure3 and 5\\Fig.3a, 3c and Fig.5b correlation heatmap")
rm(list = ls())

library(pheatmap) 
library(ggplot2) 

data <- read.table("input.csv", header=TRUE, sep=",")

data <- data[, -1]

data_clean <- na.omit(data)
p <- pheatmap(data_clean, display_numbers = T,fontsize_number = 16,
              fontsize_col = 18,
              fontsize_row = 18)

ggsave("output.pdf",p, width = 8.5, height = 8, dpi = 300)


