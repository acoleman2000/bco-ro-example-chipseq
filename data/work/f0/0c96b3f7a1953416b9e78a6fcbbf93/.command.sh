#!/bin/bash -euo pipefail
[ ! -f  SPT5_INPUT_R2_T1_1.fastq.gz ] && ln -s SRR5204810_Spt5-ChIP_Input2_SacCer_ChIP-Seq_ss100k_R1.fastq.gz SPT5_INPUT_R2_T1_1.fastq.gz
[ ! -f  SPT5_INPUT_R2_T1_2.fastq.gz ] && ln -s SRR5204810_Spt5-ChIP_Input2_SacCer_ChIP-Seq_ss100k_R2.fastq.gz SPT5_INPUT_R2_T1_2.fastq.gz
fastqc -q -t 2 SPT5_INPUT_R2_T1_1.fastq.gz
fastqc -q -t 2 SPT5_INPUT_R2_T1_2.fastq.gz
