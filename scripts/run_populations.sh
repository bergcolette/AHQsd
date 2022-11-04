# run populations and only include SNPs that are segregating between T and N parents 

mainDir="/home/colette_berg/YNP/AHQsd_2021/"
stacksDir="/home/colette_berg/YNP/AHQsd_2021/stacks"

populations -P ${stacksDir} \
-W ${stacksDir}NT_SNPs.012.pos \
-M ${mainDir}/bams/bamList.txt \
--vcf

# filter the resulting vcf

vcftools --vcf populations.snps.vcf \
--maf .1 \
--min-alleles 2 \
--max-alleles 2 \ 
--minDP 3 \
--minQ 40 \
--out AHQsd_forPhasing \
--recode 

# look at the results and filter again, only keep one snp per tag

vcftools --vcf AHQsd_forPhasing.recode.vcf \
--thin 150 \ 
--out AHQsd_forPhasing_thinned \
--012

# then remake N & T patent vcfs just with these SNPs and output as 012

vcftools --vcf NT.vcf \
--positions AHQsd_forPhasing_thinned.012.pos \
--out NT_forPhasing \
--012

# take these outputs and run the python script