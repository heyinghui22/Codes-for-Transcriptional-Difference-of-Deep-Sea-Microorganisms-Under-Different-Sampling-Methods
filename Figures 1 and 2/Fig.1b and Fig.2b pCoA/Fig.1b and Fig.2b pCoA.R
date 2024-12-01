# Install required packages
# install.packages(c("ggplot2", "vegan", "ape", "RColorBrewer"))

# Load required packages
library(ggplot2)
library(vegan)
library(ape)
library(RColorBrewer)

# Read data
setwd("C:\\Users\\user22\\Desktop\\2024EST\\modification\\adddata\\18S\\PCoA Creation")
otu <- read.table("feature-table.txt", header = TRUE, sep = "\t", row.names = 1, check.names = FALSE)
design <- read.table("group.txt", header = TRUE, sep = "\t", row.names = 1, check.names = FALSE)

# Calculate distance matrix
distance <- vegdist(t(otu), method = 'bray')

# Perform PCoA analysis
PCOA <- pcoa(distance, correction = "none", rn = NULL)
result <- PCOA$values[, "Relative_eig"]
pro1 <- as.numeric(sprintf("%.3f", result[1])) * 100
pro2 <- as.numeric(sprintf("%.3f", result[2])) * 100
x <- PCOA$vectors
sample_names <- rownames(x)
pc <- as.data.frame(PCOA$vectors[, 1:2])
pc$names <- sample_names

# Merge grouping information into the data frame
pc <- merge(pc, design, by = "row.names", all.x = TRUE)

# Plot PCoA
xlab <- paste("PCoA1 (", pro1, "%)", sep = "")
ylab <- paste("PCoA2 (", pro2, "%)", sep = "")

my_colors <- c("#1F78B4", "#33A02C", "#E31A1C", "#FF7F00", "#6A3D9A",
               "#179BAE", "#FF8C9E", "#96CEB4", "#B99470", "#FFDA76")

pca <- ggplot(pc, aes(x = Axis.1, y = Axis.2)) +
  geom_point(aes(color = group), size = 10, alpha = 0.6) +
  labs(x = xlab, y = ylab, title = "PCoA using Eukaryotic Community Structures") +
  geom_hline(yintercept = 0, linetype = 4, color = "grey") +
  geom_vline(xintercept = 0, linetype = 4, color = "grey") +
  scale_color_manual(values = my_colors) +
  theme(legend.position = "right",
        axis.title.x = element_text(size = 16),
        axis.title.y = element_text(size = 16),
        axis.text.x = element_text(size = 14, face = "bold"),
        axis.text.y = element_text(size = 14, face = "bold")) +
  guides(color = guide_legend(override.aes = list(size = 10, alpha = 0.6))) +
  geom_path(data = pc, aes(group = group), color = "black", linetype = "dashed", fill = NA, size = 1)

pca
ggsave('PCoA using eukaryotic community structures_rna2.pdf', pca, width = 7, height = 5)