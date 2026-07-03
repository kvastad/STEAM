import scanpy as sc
import pandas as pd
import squidpy as sq

# Paths
ST_DIR = "Visium_data/ST/liver_human_JBO0018"
OUTPUT_FILE = f"{ST_DIR}/liver_human_JBO0018.h5ad"
METADATA_FILE = f"{ST_DIR}/seurat_clusters.csv"

# Read 10x Visium data
adata = sq.read.visium(path=ST_DIR, counts_file=f"filtered_feature_bc_matrix.h5")

# Add 'count' layer if not present
if "count" not in adata.layers:
    adata.layers["count"] = adata.X.copy()

# Load metadata and clean barcodes
metadata = pd.read_csv(METADATA_FILE,sep=';')

# Remove trailing "_1" from Barcode column
metadata["Barcode"] = metadata["Barcode"].str.replace(r"_1$", "", regex=True)

# Use Barcode as index
metadata = metadata.set_index("Barcode")

# Add cluster annotation
if 'seurat_clusters' in metadata.columns:
    adata.obs = adata.obs.join(metadata['seurat_clusters'])
else:
    raise ValueError("Column 'seurat_clusters' not found in metadata file")

# Save H5AD
adata.write(OUTPUT_FILE)
print(f"Saved H5AD to {OUTPUT_FILE}")


