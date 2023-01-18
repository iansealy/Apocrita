#!/usr/bin/env bash

/usr/bin/apptainer run --cleanenv --bind /data --app slidewindow /data/SBBS-BuschLab/containers/bsa-1.sif "$@"
