#!/usr/bin/env bash

/usr/bin/singularity run --cleanenv --bind /data /data/SBBS-BuschLab/containers/DETCT-104.sif "$@"
