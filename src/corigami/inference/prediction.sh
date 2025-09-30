module purge
module load condaenvs/new/n-origami

chr_name="chr11"
path="/gpfs/data/abl/home/cather01/tsirigos-dir/corigami-conf/data/mm10/"
cellline="MEF"

python prediction.py \
	    --chr $chr_name \
		--celltype "MEF" \
	    --model "../training/models_output/runs/CORIGAMI-hic/c-origami-example/2024-09-23/16-39-58-262132/models/epoch=42-step=11222.ckpt" \
	    --seq "$path/dna_sequence" \
        --start 34500000 \
	    --ctcf "$path/$cellline/genomic_features/ctcf_log2fc.bw" \
        --atac "$path/$cellline/genomic_features/atac.bw" \
        --out "output-inference"
