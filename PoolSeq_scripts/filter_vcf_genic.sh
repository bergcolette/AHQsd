vcftools \
--vcf AHQ_AllPools_filt_chr6.recode.vcf \
--chr Chr_06 \
--maf 0.01 \
--min-alleles 2 \
--minDP 30 \
--bed AHQTv1.bed \
--minQ 29 \
--out AHQ_AllPools_filt_chr6_genic \
--recode