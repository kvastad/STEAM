#!/bin/bash

gsmap format_sumstats \
  --sumstats 'Visium_data/GWAS/PGC3_SCZ_wave3.table.tsv' \
  --out 'Visium_data/GWAS/SCZ' \
  --snp ID \
  --a1 A1 \
  --a2 A2 \
  --beta BETA \
  --se SE \
  --p PVAL \
  --chr CHROM \
  --pos POS \
  --n 127906 #SCZ: 52,017 cases, 75,889 controls
