# STEAM 
<div style="text-align: right;"> 
  <img src="images/STEAM_logo.png" alt="STEAM logo" width="100"/> 
</div>

STEAM is a framework for **S**patial **T**rait **E**nrichment **A**nalysis with per**M**utation testing, a robust computational approach for measuring the enrichment of average gene expression across clusters in a dataset from a given gene list. It calculates a permutation p-value and performs multiple-testing corrections based on the number of clusters. For ranked gene lists, STEAM enables interrogation of the topmost relevant sets of genes based on their combined average enrichment. The STEAM framework also includes an approach using MetaSpots (or MetaCells or MetaBins) within assigned clusters for sparse and high-resolution data. Using permutations to guide the selection of topmost relevant ranked genes and then testing for trait gene set enrichment among differentially expressed genes. 

We applied STEAM to spatially resolved transcriptomics (SRT) datasets to elucidate the genetic basis of complex traits and diseases. We analyzed 31 SRT datasets from humans and mice spanning 8 organs and 32 complex traits. We also applied STEAM to single-cell and single-nuclei RNA-seq datasets from the mouse and human brains, highlighting complementary insights from the two data types and a high-resolution mouse brain dataset.

Here, we provide scripts used for the analysis and figures in our publication. The code for re-creating the manuscript figures is stored in their corresponding folders.

To install the latest STEAM R-package version, visit: https://github.com/kvastad/steamR
or:

```
# install.packages("devtools")
devtools::install_github("kvastad/steamR")

library(STEAM)
```

To install the latest stable STEAM R-package version:

```
devtools::install_github("kvastad/steamR@v0.1.0")
```

For STEAM R-package vignettes, visit: https://kvastad.github.io/STEAM/

For ranked genetically associated gene lists, visit the Open Targets platform: https://platform.opentargets.org/

Link to pre-print: doi: https://doi.org/10.1101/2025.05.02.651876
