#!/bin/bash -euo pipefail
annotatePeaks.pl \
    SPT5_T0_R1_peaks.broadPeak \
    genome.fa \
    -gid \
    -gtf genes.gtf \
    -cpu 2 \
    > SPT5_T0_R1_peaks.annotatePeaks.txt