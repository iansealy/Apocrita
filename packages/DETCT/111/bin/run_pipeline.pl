#!/usr/bin/env bash

/usr/bin/apptainer run --cleanenv --bind /data /data/SBBS-BuschLab/containers/DETCT-111.sif "$@"
