#!/bin/bash

gsmap quick_mode \
    --workdir './Visium_data_quick_mode_mouse_liver_SCZ' \
    --homolog_file 'gsMap_resource/homologs/mouse_human_homologs.txt' \
    --sample_name 'mouse_liver' \
    --gsMap_resource_dir 'gsMap_resource' \
    --hdf5_path 'Visium_data/ST/liver_mouse_JBO002/liver_mouse_JBO002.h5ad' \
    --annotation 'seurat_clusters' \
    --data_layer 'count' \
    --sumstats_file 'Visium_data/GWAS/SCZ.sumstats.gz' \
    --trait_name 'SCZ' \
    --max_processes 2

