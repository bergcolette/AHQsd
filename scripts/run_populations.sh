# run populations and only include SNPs that are segregating between T and N parents 

mainDir="/home/colette_berg/YNP/AHQsd_2021/"
stacksDir="/home/colette_berg/YNP/AHQsd_2021/stacks"

# populations -P ${stacksDir} \
# -M ${mainDir}/bams/bamList.txt \
# --vcf

# filter the resulting vcf to only segregating sites

# vcftools --vcf ${stacksDir}/populations.snps.vcf --positions ${stacksDir}/NT_SNPs.012.pos --out ${stacksDir}/AHQsd_forPhasing --recode 

# look at the results and filter again, only keep one snp per tag

vcftools --vcf ${stacksDir}/AHQsd_forPhasing.recode.vcf \
--min-alleles 2 \
--max-alleles 2 \
--max-missing .4 \
--maf .3 \
--max-maf .7 \
--out ${stacksDir}/AHQsd_forPhasing_filtered --012 

# then remake N & T patent vcfs just with these SNPs and output as 012

vcftools --vcf ${stacksDir}/NT.vcf \
--positions ${stacksDir}/AHQsd_forPhasing_filtered.012.pos \
--out ${stacksDir}/NT_forPhasing \
--012

# take these outputs and run the python script