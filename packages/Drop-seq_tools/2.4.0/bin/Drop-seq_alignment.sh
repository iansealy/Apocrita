#!/usr/bin/env bash

/usr/bin/singularity run --cleanenv --bind /data --app Dropseqalignment /data/SBBS-BuschLab/containers/Drop-seq_tools-2.4.0.sif "$@"
