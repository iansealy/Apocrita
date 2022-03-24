#!/usr/bin/env bash

/usr/bin/singularity run --bind /data /data/SBBS-BuschLab/containers/GSEA-4.0.3.sif "$@"
