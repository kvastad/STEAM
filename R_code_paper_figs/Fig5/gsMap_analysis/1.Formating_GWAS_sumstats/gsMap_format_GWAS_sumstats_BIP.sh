#!/bin/bash

gsmap format_sumstats \
  --sumstats 'Visium_data/GWAS/pgc-bip2021-all.vcf.table.tsv' \
  --out 'Visium_data/GWAS/BIP' \
  --snp ID \
  --a1 A1 \
  --a2 A2 \
  --beta BETA \
  --se SE \
  --p PVAL \
  --chr CHROM \
  --pos POS \
  --n 413466 #BIP: 41,917 cases, 371,549 controls
