#!/usr/bin/env bash

/usr/bin/singularity run --bind /data --app gvmapsh /data/SBBS-BuschLab/containers/Graphviz-2.49.3.sif "$@"
