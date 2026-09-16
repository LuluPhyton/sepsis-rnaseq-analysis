# Packages and global R Markdown options used in the final report

knitr::opts_chunk$set(
  echo = TRUE,
  fig.align = "center",
  message = FALSE,
  warning = FALSE
)

library(knitr)
library(kableExtra)
library(EDASeq)
library(tidyr)
library(dplyr)
library(plyr)
library(edgeR)
library(DESeq2)
library(limma)
library(clusterProfiler)
library(pathview)
library(AnnotationDbi)
library(org.Hs.eg.db)
library(ReactomePA)
library(enrichplot)
library(ggnewscale)
library(ggupset)
library(ggridges)
library(ggplot2)
library(corrplot)
library(ggrepel)
library(pheatmap)
library(cluster)
library(RUVSeq)
library(patchwork)
