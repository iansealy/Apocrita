#!/usr/bin/env bash

/usr/bin/apptainer run --cleanenv --bind /data --app cp /data/SBBS-BuschLab/containers/rMATS-4.1.2.sif "$@"
