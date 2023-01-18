#!/usr/bin/env bash

/usr/bin/apptainer run --cleanenv --bind /data --app qtlregion /data/SBBS-BuschLab/containers/bsa-1.sif "$@"
