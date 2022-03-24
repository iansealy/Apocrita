#!/usr/bin/env bash

/usr/bin/singularity run --bind /data /data/SBBS-BuschLab/containers/RefGenEdit-0.1.1.sif "$@"
