#!/usr/bin/env bash

/usr/bin/singularity run --bind /data --app createDropseqreferencemetadata /data/SBBS-BuschLab/containers/Drop-seq_tools-2.4.0.sif "$@"
