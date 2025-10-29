#!/bin/bash

gsmap quick_mode \
    --workdir './Visium_data_quick_mode_ASD' \
    --homolog_file 'gsMap_resource/homologs/mouse_human_homologs.txt' \
    --sample_name 'mouse_coronal' \
    --gsMap_resource_dir 'gsMap_resource' \
    --hdf5_path 'Visium_data/ST/mouse_coronal.h5ad' \
    --annotation 'cluster_anno' \
    --data_layer 'count' \
    --sumstats_file 'Visium_data/GWAS/ASD.sumstats.gz' \
    --trait_name 'ASD' \
    --max_processes 2

