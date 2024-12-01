rm(list=ls()) # Clear Global Environment
setwd("C:\\Users\\user22\\Desktop\\2024EST\\modification\\adddata\\tpm\\240822 Selected Single-Copy Genes and Normalization\\Box Plot Creation")

library(reshape2)
df <- read.table(file="input.txt", sep="\t", header=T, quote=",")

# Convert to long format
df1 <- melt(df, measure.vars = c("MIS1", "MIS2", "MIS3", "MIS4", "MIS5", "MIS6", "ISMF", "ISMU", "NIS1", "NIS2"), variable.name = "Time", value.name = "TPM")

library(ggplot2)

# Create box plot
p = ggplot(df1, aes(x=Time, y=TPM, color = Time)) +
  geom_boxplot()
p1 <- p + geom_jitter(shape=16, position = position_jitter(0.2))
p1

ggsave('rna_METHOD.pdf', p1, width = 5, height = 4)