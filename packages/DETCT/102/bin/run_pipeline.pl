#!/usr/bin/env bash

/usr/bin/singularity run --bind /data /data/SBBS-BuschLab/containers/DETCT-102.sif "$@"
