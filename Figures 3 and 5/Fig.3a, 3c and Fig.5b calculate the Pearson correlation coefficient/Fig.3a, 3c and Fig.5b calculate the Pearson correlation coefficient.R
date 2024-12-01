setwd("C:\\Users\\user22\\Desktop\\2024EST\\modification\\adddata\\tpm\\240822 Multiple Genes Correlation Between and Within Groups")
rm(list = ls())

# Read data
data <- read.csv("data.csv")   # Please replace "data.csv" with your data file name

# Column names
column_names <- colnames(data)

# Create an empty data frame to store correlation results
cor_table <- data.frame(
  Variable1 = character(length(column_names)),
  Variable2 = character(length(column_names)),
  R = numeric(length(column_names)),
  R2 = numeric(length(column_names)),
  P = numeric(length(column_names))
)

# Loop through each pair of columns
for (i in 1:length(column_names)) {
  for (j in 1:length(column_names)) {
    # Calculate Pearson correlation coefficient, R2 value, and P value
    correlation <- cor.test(data[, i], data[, j])
    correlation_r <- correlation$estimate
    correlation_r2 <- correlation_r^2
    correlation_p <- correlation$p.value
    
    # Store correlation coefficients and statistics in the table
    cor_table[(i-1)*length(column_names) + j, "Variable1"] <- column_names[i]
    cor_table[(i-1)*length(column_names) + j, "Variable2"] <- column_names[j]
    cor_table[(i-1)*length(column_names) + j, "R"] <- correlation_r
    cor_table[(i-1)*length(column_names) + j, "R2"] <- correlation_r2
    cor_table[(i-1)*length(column_names) + j, "P"] <- correlation_p
  }
}

# Output the table
write.csv(cor_table, "correlation_table.csv", row.names = FALSE)