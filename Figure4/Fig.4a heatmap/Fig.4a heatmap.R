library(ggplot2)
library(pheatmap)

setwd("C:\\Users\\user22\\Desktop\\2024EST\\modification\\adddata\\tpm\\240822 Selected CN Metabolic Genes\\Heatmap Creation")
df <- read.csv("heatmapdata.csv", header = TRUE, row.names = 1)

# df <- t(data[,0:30])
# R language to transpose rows and columns: t()
df
df2 <- pheatmap(df,
                cluster_rows = FALSE,
                cluster_cols = FALSE,
                # gaps_row = 14, gap in rows
                show_rownames = TRUE,
                border_color = 'Black',
                cellwidth = 10, cellheight = 10,
                fontsize_col = 8, fontsize_row = 8,
                color = c("white", "#caf0f8", "#90e0ef", "#48cae4", "#0096c7", "#0077b6", "#023e8a", "#03045e"),
                breaks = c(-3, -2, -1, 0, 1, 2, 3, 4, 5), 
                # distances 0 to 3 are red, 3 to 9 black
                main = 'Heatmap')

df2

# Transpose rows and columns in the data matrix
df_trans = t(df) 

# Draw heatmap, row and column order changes according to data
df1 <- pheatmap(df_trans,
                cluster_rows = FALSE,
                cluster_cols = FALSE,
                
                row_names_side = "left",  # Row names on the left
                col_names_side = "top",   # Column names on the top
                
                fontsize_row = 8,
                fontsize_col = 10,
                
                gaps_col = c(2, 5, 7, 11, 13, 18, 22)
)

df1

ggsave('picked_CN_gene_heatmap_MT.pdf', df1, width = 14, height = 2.75)
