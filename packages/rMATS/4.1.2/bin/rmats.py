#!/usr/bin/env bash

/usr/bin/singularity run --cleanenv --bind /data /data/SBBS-BuschLab/containers/rMATS-4.1.2.sif "$@"
