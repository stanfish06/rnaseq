#!/usr/bin/env bash
module load use.own
module load nextflow/25.04.6
nextflow run stanfish06/rnaseq -profile hpc -params-file ./params.json
