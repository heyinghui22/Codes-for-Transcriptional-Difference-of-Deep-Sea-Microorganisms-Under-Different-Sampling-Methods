# Set working directory
setwd("C:\\Users\\user22\\Desktop\\2024EST\\modification\\adddata\\16S\\alpha-rarefaction\\Box Plot Creation")

# Read data
df <- read.csv("inputdata.csv") 

# Specify class as a factor, with levels in original order  
df$class <- factor(df$class, levels=unique(df$class))

ggplot(df, aes(x=class, y=Chao1, fill=class)) +
  geom_col() 

# Set fixed colors  
cols <- c("deepskyblue4", "deepskyblue4", 
          "deepskyblue4", "deepskyblue4",
          "deepskyblue4", "deepskyblue4",
          "orange", "orange", 
          "green4", "green4")

# Colors in fixed order
p <- ggplot(df, aes(x=class, y=Chao1, fill=class)) +
  geom_col() +
  scale_fill_manual(values=cols)

labs(title="CHAO1 Index Bar Plot",  
     x="Sample Category", y="CHAO1 Index")

p

# Save the image as a PDF
ggsave("CHAO1.pdf", 
       p,
       width = 5, 
       height = 6)