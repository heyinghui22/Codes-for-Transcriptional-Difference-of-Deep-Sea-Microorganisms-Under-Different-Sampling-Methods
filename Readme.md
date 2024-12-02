# Transcriptional Difference of Deep-Sea Microorganisms Under Different Sampling Methods

## Overview

This repository contains the code used in the study titled "Transcriptional Difference of Deep-Sea Microorganisms Under Different Sampling Methods." This study compared differences in microbial composition and metabolism from samples collected with conventional sampling approaches and in situ sampling techniques, and underscores the significance of in situ sampling for precisely elucidating the ecological functions of deep-sea microbes.

## Content

- **“Figures 1 and 2”** contains input datasets and code used for calculating and visualizing pCoA, the box plot of alpha diversity (calculated by QIIME software), and the stacked bar chart for microbial community composition (calculated by QIIME software). The extraction of 18S and 16S sequences can be referenced from [mitag_analysis](https://github.com/heyinghui22/mitag_analysis), which is currently in preparation for publication. Other calculations and parameters used have been detailed in the methods section.

- **“Figures 3 and 5”** contains input datasets and code used for calculating the Pearson correlation coefficient, drawing the coefficient heatmap, as well as the heatmap and box plot of gene expression (calculated by CoverM software). Calculations and parameters used have been detailed in the methods section.

- **“Figure 4”** contains input datasets and code used for visualizing the stacked bar chart (calculated by COG classifier software) and the heatmap of gene expression (calculated by CoverM software). Calculations and parameters used have been detailed in the methods section.

- **“Figure 6”** contains input datasets and code used for visualizing the stacked bar chart (calculated by CoverM software) and the heatmap of gene expression (calculated by CoverM software). Calculations and parameters used have been detailed in the methods section.

## Folder structure


├── Figures 1 and 2/                                
│   &nbsp;&nbsp;&nbsp;&nbsp;├── Fig.1a and Fig.2a Stacked Bar Chart/  
│   &nbsp;&nbsp;&nbsp;&nbsp;│   &nbsp;&nbsp;&nbsp;&nbsp;├── inputdata.csv  
│   &nbsp;&nbsp;&nbsp;&nbsp;│   &nbsp;&nbsp;&nbsp;&nbsp;└── Stacked Bar Chart.R  
│   &nbsp;&nbsp;&nbsp;&nbsp;├── Fig.1b and Fig.2b pCoA/  
│   &nbsp;&nbsp;&nbsp;&nbsp;│   &nbsp;&nbsp;&nbsp;&nbsp;├── feature-table.txt  
│   &nbsp;&nbsp;&nbsp;&nbsp;│   &nbsp;&nbsp;&nbsp;&nbsp;├── Fig.1b and Fig.2b pCoA.R  
│   &nbsp;&nbsp;&nbsp;&nbsp;│   &nbsp;&nbsp;&nbsp;&nbsp;└── group.txt  
│   &nbsp;&nbsp;&nbsp;&nbsp;└── Fig.1c and Fig.2c box Plot/  
│       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├── Fig.1a and Fig.2a box Plot.R  
│       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;└── inputdata.csv  
│  
├── Figures 3 and 5/  
│   &nbsp;&nbsp;&nbsp;&nbsp;├── Fig.3a, 3c and Fig.5b calculate the Pearson correlation coefficient/  
│   &nbsp;&nbsp;&nbsp;&nbsp;│   &nbsp;&nbsp;&nbsp;&nbsp;├── data.csv  
│   &nbsp;&nbsp;&nbsp;&nbsp;│   &nbsp;&nbsp;&nbsp;&nbsp;└── Fig.3a, 3c and Fig.5b calculate the Pearson correlation coefficient.R  
│   &nbsp;&nbsp;&nbsp;&nbsp;├── Fig.3a, 3c and Fig.5b correlation heatmap/  
│   &nbsp;&nbsp;&nbsp;&nbsp;│   &nbsp;&nbsp;&nbsp;&nbsp;├── Fig.3a, 3c and Fig.5b correlation heatmap.R  
│   &nbsp;&nbsp;&nbsp;&nbsp;│   &nbsp;&nbsp;&nbsp;&nbsp;└── input.csv  
│   &nbsp;&nbsp;&nbsp;&nbsp;├── Fig.3b and Fig.5a box plot/  
│   &nbsp;&nbsp;&nbsp;&nbsp;│   &nbsp;&nbsp;&nbsp;&nbsp;├── Fig.3b and Fig.5a box plot.R  
│   &nbsp;&nbsp;&nbsp;&nbsp;│   &nbsp;&nbsp;&nbsp;&nbsp;└── input.txt  
│   &nbsp;&nbsp;&nbsp;&nbsp;└── Fig.3d and Fig.5c heatmap/  
│       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├── Fig.3d and Fig.5c heatmap.R  
│       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;└── heatmapdata.csv  
│  
├── Figure4/  
│   &nbsp;&nbsp;&nbsp;&nbsp;├── Fig.4a heatmap/  
│   &nbsp;&nbsp;&nbsp;&nbsp;│   &nbsp;&nbsp;&nbsp;&nbsp;├── Fig.4a heatmap.R  
│   &nbsp;&nbsp;&nbsp;&nbsp;│   &nbsp;&nbsp;&nbsp;&nbsp;└── heatmapdata.csv  
│   &nbsp;&nbsp;&nbsp;&nbsp;└── Fig.4b Stacked Column Chart/  
│       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├── Fig.4b Stacked Column Chart.R  
│       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;└── input.csv  
│  
└── Figure6/  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├── Fig.6a stacked column chart/  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│   &nbsp;&nbsp;&nbsp;&nbsp;├── data.csv  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;│   &nbsp;&nbsp;&nbsp;&nbsp;└── Fig.6a stacked column chart.R  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;└── Fig.6b heatmap/  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├── Fig.6b heatmap.R  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;└── heatmapdata.csv 




## Contact

For any questions or issues, please contact Yinghui He at heyinghu23@mails.tsinghua.edu.cn


