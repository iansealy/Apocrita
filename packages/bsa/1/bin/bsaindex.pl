#!/usr/bin/env bash

/usr/bin/singularity run --cleanenv --bind /data --app bsaindex /data/SBBS-BuschLab/containers/bsa-1.sif "$@"
