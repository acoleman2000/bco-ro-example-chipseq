#!/bin/bash -euo pipefail
echo 1.2.1 > v_pipeline.txt
echo 19.10.0 > v_nextflow.txt
fastqc --version > v_fastqc.txt
trim_galore --version > v_trim_galore.txt
echo $(bwa 2>&1) > v_bwa.txt
samtools --version > v_samtools.txt
bedtools --version > v_bedtools.txt
echo $(bamtools --version 2>&1) > v_bamtools.txt
echo $(plotFingerprint --version 2>&1) > v_deeptools.txt || true
picard MarkDuplicates --version &> v_picard.txt  || true
echo $(R --version 2>&1) > v_R.txt
python -c "import pysam; print(pysam.__version__)" > v_pysam.txt
echo $(macs2 --version 2>&1) > v_macs2.txt
touch v_homer.txt
echo $(featureCounts -v 2>&1) > v_featurecounts.txt
preseq &> v_preseq.txt
multiqc --version > v_multiqc.txt
scrape_software_versions.py &> software_versions_mqc.yaml
