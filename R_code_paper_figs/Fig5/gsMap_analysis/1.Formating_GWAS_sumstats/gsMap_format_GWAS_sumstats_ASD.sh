#!/bin/bash

gsmap format_sumstats \
  --sumstats 'Visium_data/GWAS/iPSYCH-PGC_ASD_Nov2017' \
  --out 'Visium_data/GWAS/ASD' \
  --snp SNP \
  --a1 A1 \
  --a2 A2 \
  --OR OR \
  --se_OR SE \
  --p P \
  --chr CHR \
  --pos BP \
  --n 46350 #ASD: 18,381 cases, 27,969 controls
