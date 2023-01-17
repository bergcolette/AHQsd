# run populations and only include SNPs that are segregating between T and N parents 

mainDir="/home/colette_berg/YNP/AHQsd_2021"
stacksDir="/home/colette_berg/YNP/AHQsd_2021/gatk_stacks"
genomeDir="/home/colette_berg/YNP/AHQsd_2021/stacks"

#run populations
#populations -P ${stacksDir} \
#  -M ${mainDir}/gatk_bams/bamList.txt \
#  -t 8 \
#  -r .5 \
#  --vcf


#vcftools --vcf ${stacksDir}/populations.snps.vcf --out ${stacksDir}/AHQsd --recode 

# filter the resulting vcf to only segregating sites

vcftools --vcf ${stacksDir}/AHQsd_gatk.recode.vcf --positions ${stacksDir}/NT_forPhasing.012.pos --out ${stacksDir}/AHQsd --recode 

vcftools --vcf ${stacksDir}/AHQsd.recode.vcf \
--minDP 3 \
--max-missing .5 \
--maf .005 \
--out ${stacksDir}/AHQsd_stacks_filtered --012 

# then remake N & T parent vcfs just with these SNPs and output as 012

vcftools --vcf ${genomeDir}/NT.vcf \
 --positions ${stacksDir}/AHQsd_stacks_filtered.012.pos \
 --out ${stacksDir}/NT_forPhasing \
 --012

# take these outputs and run the python script