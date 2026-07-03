#!/bin/bash

gsmap quick_mode \
    --workdir './Visium_data_quick_mode_human_liver_ALZ' \
    --sample_name 'human_liver' \
    --gsMap_resource_dir 'gsMap_resource' \
    --hdf5_path 'Visium_data/ST/liver_human_JBO0018/liver_human_JBO0018.h5ad' \
    --annotation 'seurat_clusters' \
    --data_layer 'count' \
    --sumstats_file 'Visium_data/GWAS/ALZ.sumstats.gz' \
    --trait_name 'ALZ' \
    --max_processes 2

