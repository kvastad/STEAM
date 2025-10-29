#!/bin/bash

gsmap format_sumstats \
  --sumstats 'Visium_data/GWAS/ADHD2022_iPSYCH_deCODE_PGC.meta' \
  --out 'Visium_data/GWAS/ADHD' \
  --snp SNP \
  --a1 A1 \
  --a2 A2 \
  --OR OR \
  --se_OR SE \
  --p P \
  --frq FRQ_A_38691 \
  --chr CHR \
  --pos BP \
  --n 225534 #ADHD: 38,691 cases, 186,843 controls
