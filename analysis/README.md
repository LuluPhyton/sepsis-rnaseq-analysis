# Analysis workflow

This folder contains the R Markdown files used for the computational analysis of SIRS and Septic Shock RNA-seq samples.

The workflow is divided into seven main steps:

1. **Data preprocessing** – sample selection and filtering of lowly expressed genes.
2. **Exploratory analysis** – assessment of count distributions, sample variability, PCA, RLE and GC-content bias.
3. **Normalization** – within-sample GC correction and comparison of between-sample normalization methods.
4. **Differential expression analysis** – edgeR analysis followed by RUV correction and identification of differentially expressed genes.
5. **Cluster analysis** – exploration of expression patterns among differentially expressed genes.
6. **Gene set analysis** – functional enrichment analysis using KEGG, Reactome and Gene Ontology.
7. **edgeR and limma-voom comparison** – comparison of differential expression results and enriched pathways obtained with the two approaches.

## Running the analysis

`00_setup.R` loads the R packages and global options required for the analysis.

`run_full_analysis.Rmd` runs the seven analysis files sequentially within the same R session. This allows objects created during one step of the workflow to be reused in subsequent steps.

The individual `.Rmd` files contain both the R code and the corresponding methodological explanations from the final report. They are intended to be executed in order rather than independently from a clean R session.

The original analysis was performed in the NEXUS environment. The required R and Bioconductor packages are listed in `00_setup.R`.

The complete project report contains the biological background, detailed interpretation of the results, discussion, and comparison with the original study.
