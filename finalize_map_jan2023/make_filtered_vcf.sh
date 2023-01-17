vcftools --gzvcf AHQsd_gatk.vcf.gz \
        --maf 0.05 \
        --minDP 3 \
        --thin 150 \
        --minQ 29 \
        --max-missing 0.5 \
        --out AHQsd_filtered \
        --positions positions.txt \
        --keep keep.txt \
        --recode