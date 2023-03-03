#!/usr/bin/env bash

/usr/bin/apptainer run --cleanenv --bind /data /data/SBBS-BuschLab/containers/topgo-wrapper-109.sif "$@"
