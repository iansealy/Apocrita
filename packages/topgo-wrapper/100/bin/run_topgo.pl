#!/usr/bin/env bash

/usr/bin/singularity run --cleanenv --bind /data /data/SBBS-BuschLab/containers/topgo-wrapper-100.sif "$@"
