These terminal commands can be used for calculating permutation matrices on a CPU cluster. It requires the files 'gnum.txt' and 'slurm_gen_null_set.sh' to be in the same folder.

'gnum.txt': file containing numbers in one column for the size of the null gene lists to be created.
'slurm_gen_null_set.sh': shell script for submitting a job. This further requires a singularity container, here called r2u_container_v1.2.sif (size 1,72 GB, can we shared upon request), which needs to contain R, MASS_7.3-58.2, dplyr_1.1.0, STutility_1.1.1, SeuratObject_4.1.3 and Seurat_4.3.0. 

Note: Permutation matrices will be stored in a folder called 'permutation_matrices', with their gene list sizes (selected in 'gnum.txt') named at the end of the file.

To run the script (paste in the below code in the terminal containing the scripts):

```bash
# Count the number of lines in the file
G_FILE=gnum.txt
NUM_LINES=$(wc -l < "$G_FILE")
# Submit the SLURM job array
sbatch --array=1-$NUM_LINES "./slurm_gen_null_set.sh"
```
