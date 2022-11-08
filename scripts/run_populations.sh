# run populations and only include SNPs that are segregating between T and N parents 

mainDir="/home/colette_berg/YNP/AHQsd_2021/"
stacksDir="/home/colette_berg/YNP/AHQsd_2021/stacks"

# run populations
#populations -P ${stacksDir} \
#  -M ${mainDir}/bams/bamList.txt \
#  --vcf

# in the resulting vcf, only keep individuals that are well covered
# vcftools --vcf ${stacksDir}/populations.snps.vcf --keep ${stacksDir}/indvs.txt --out ${stacksDir}/AHQsd --recode 

# filter the resulting vcf to only segregating sites

vcftools --vcf AHQsd.recode.vcf --positions ${stacksDir}/NT.012.pos --out ${stacksDir}/AHQsd_forPhasing --recode 

vcftools --vcf ${stacksDir}/AHQsd_forPhasing.recode.vcf \
--maf .05 \
--out ${stacksDir}/AHQsd_forPhasing_filtered --012 

# then remake N & T parent vcfs just with these SNPs and output as 012

vcftools --vcf ${stacksDir}/NT.vcf \
 --positions ${stacksDir}/AHQsd_forPhasing_filtered.012.pos \
 --out ${stacksDir}/NT_forPhasing \
 --012

# take these outputs and run the python script