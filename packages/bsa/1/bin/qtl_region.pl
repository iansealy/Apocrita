#!/usr/bin/env bash

/usr/bin/singularity run --bind /data --app qtlregion /data/SBBS-BuschLab/containers/bsa-1.sif "$@"
