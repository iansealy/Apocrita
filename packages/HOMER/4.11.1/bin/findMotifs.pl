#!/usr/bin/env bash

/usr/bin/singularity run --bind /data /data/SBBS-BuschLab/containers/HOMER-4.11.1.sif "$@"
