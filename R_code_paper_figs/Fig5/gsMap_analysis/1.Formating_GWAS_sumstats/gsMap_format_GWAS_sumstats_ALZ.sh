#!/bin/bash

gsmap format_sumstats \
  --sumstats 'Visium_data/GWAS/35379992-GCST90027158-MONDO_0004975-Build38.f.tsv' \
  --out 'Visium_data/GWAS/ALZ' \
  --snp variant_id \
  --a1 effect_allele \
  --a2 other_allele \
  --beta beta \
  --se standard_error \
  --p p_value \
  --frq effect_allele_frequency \
  --chr chromosome \
  --pos base_pair_location \
  --n 301478 #ALZ: 25,392 cases, 276,086 controls
