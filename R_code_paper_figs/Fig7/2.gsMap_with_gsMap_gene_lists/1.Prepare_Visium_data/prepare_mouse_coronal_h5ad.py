import scanpy as sc
import pandas as pd
import squidpy as sq

# Paths
ST_DIR = "Visium_data/ST"
OUTPUT_FILE = f"{ST_DIR}/mouse_coronal.h5ad"
METADATA_FILE = f"{ST_DIR}/spatial/metadata.csv"

# Read 10x Visium data
adata = sq.read.visium(path=ST_DIR, counts_file="filtered_feature_bc_matrix.h5")

# Add 'count' layer if not present
if "count" not in adata.layers:
    adata.layers["count"] = adata.X.copy()

# Load metadata and add cluster annotation
metadata = pd.read_csv(METADATA_FILE, index_col=0)  # barcode column as index
if 'cluster_anno' in metadata.columns:
    # Align with adata.obs
    adata.obs = adata.obs.join(metadata['cluster_anno'])
else:
    raise ValueError("Column 'cluster_anno' not found in metadata file")

# Save H5AD
adata.write(OUTPUT_FILE)
print(f"Saved H5AD to {OUTPUT_FILE}")

