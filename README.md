# Comparative transcriptomic analysis of SIRS and Septic Shock

RNA-seq analysis comparing patients with **Systemic Inflammatory Response Syndrome (SIRS)** and **Septic Shock**, with the aim of identifying transcriptional differences and biological pathways associated with the two clinical conditions.

This project was developed as part of an academic Next Generation Sequencing (NGS) analysis and is based on the public RNA-seq dataset **SRP050000**.

## Project overview

SIRS and Septic Shock can present with similar systemic inflammatory responses, making their molecular distinction particularly relevant.

The analysis focuses on **56 RNA-seq samples**, including:

- **23 SIRS samples**
- **33 Septic Shock samples**

The workflow includes quality assessment, normalization, differential expression analysis, correction for unwanted variation, clustering, functional enrichment, and comparison between two differential expression approaches.

## Analysis workflow

The main steps of the analysis are:

1. **Data preprocessing**
   - Sample selection
   - Filtering of lowly expressed genes

2. **Exploratory data analysis**
   - Count distribution
   - Sample variability
   - PCA
   - RLE analysis
   - GC-content bias assessment

3. **Normalization**
   - Within-sample GC-content correction
   - Comparison of between-sample normalization methods
   - TMM normalization

4. **Differential expression analysis**
   - edgeR
   - RUV correction for unwanted variation
   - Identification of differentially expressed genes

5. **Cluster analysis**
   - Exploration of expression patterns among differentially expressed genes

6. **Functional enrichment**
   - KEGG
   - Reactome
   - Gene Ontology
   - Directional enrichment analysis

7. **Method comparison**
   - Comparison between edgeR and limma-voom results

## Main results

After correction for unwanted variation and differential expression analysis with edgeR, **538 genes** were identified as differentially expressed between SIRS and Septic Shock at **FDR < 0.05**.

Functional enrichment analyses identified biological pathways associated with the transcriptional differences between the two conditions.

A complementary analysis using **limma-voom** identified **340 differentially expressed genes**, with **197 genes shared** between the two differential expression approaches.

## Repository structure

```text
sepsis-rnaseq-analysis/
├── analysis/
│   ├── 00_setup.R
│   ├── 01_data_preprocessing.Rmd
│   ├── 02_exploratory_analysis.Rmd
│   ├── 03_normalization.Rmd
│   ├── 04_differential_expression.Rmd
│   ├── 05_cluster_analysis.Rmd
│   ├── 06_gene_set_analysis.Rmd
│   ├── 07_limma_voom_comparison.Rmd
│   └── run_full_analysis.Rmd
│
├── data/
│   └── SRP050000.rds
│
├── report/
│   ├── Report_NGS_Saccon_Bellandi.Rmd
│   └── Report_NGS_Saccon_Bellandi.html
│
└── README.md
```

## Running the analysis

The analysis was originally performed in the **NEXUS computational environment** using R and Bioconductor.

The required packages and global options are listed in:

`analysis/00_setup.R`

The complete workflow can be executed sequentially using:

`analysis/run_full_analysis.Rmd`

The individual R Markdown files contain both the analysis code and methodological explanations.

## Final report

The complete report is available in the `report/` directory.

The `.Rmd` file contains the original analysis, code, results, biological interpretation, and discussion, while the rendered `.html` file provides the complete formatted report.

## Original study
This project is based on RNA-seq data originally published in:

Tsalik EL, Langley RJ, Dinwiddie DL, et al.  
**An integrated transcriptome and expressed variant analysis of sepsis survival and death.**  
*Genome Medicine*. 2014;6:111.  
DOI: 10.1186/s13073-014-0111-5

The RNA-seq data from the original study are available through the Gene Expression Omnibus (GEO) under accession **GSE63042**.

## Authors

**Tommaso Saccon**  
**Luisa Bellandi**

University project – Next Generation Sequencing
