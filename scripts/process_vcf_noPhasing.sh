mainDir="/home/colette_berg/YNP/AHQsd_2021/"
stacksDir="/home/colette_berg/YNP/AHQsd_2021/stacks"

vcftools --vcf ${stacksDir}/populations.snps.vcf \
--maf .05 \
--max-missing .65 \
--minDP 8 \
--out ${stacksDir}/AHQsd_genotypes --012 
