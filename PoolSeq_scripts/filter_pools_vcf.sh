# filtering the pool vcf using vcftools 

vcftools --vcf allPools.vcf --minQ 29 --minDP 30 --min-alleles 2 --maf .01 --chr Chr_06 --out AHQ_AllPools_filt_chr6 --recode

