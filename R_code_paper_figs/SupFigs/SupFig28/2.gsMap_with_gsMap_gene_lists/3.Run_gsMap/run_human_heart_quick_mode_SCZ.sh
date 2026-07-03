#!/bin/bash

gsmap quick_mode \
    --workdir './Visium_data_quick_mode_human_heart_SCZ' \
    --sample_name 'human_heart' \
    --gsMap_resource_dir 'gsMap_resource' \
    --hdf5_path 'Visium_data/ST/heart_human_ACH003/heart_human_ACH003.h5ad' \
    --annotation 'seurat_clusters' \
    --data_layer 'count' \
    --sumstats_file 'Visium_data/GWAS/SCZ.sumstats.gz' \
    --trait_name 'SCZ' \
    --max_processes 2

