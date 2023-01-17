# jan 11 -- hopefully finalizing the linkage map!!!

# get the list of all the variants from the vcf 
#vcftools --gzvcf AHQsd_gatk.vcf.gz --out AHQsd --012

# make an NT file that is only the SNPs included in the RADs.
# remove any sites that are missing or have low depth or low quality. 
# we want only good quality, segregating sites. 
vcftools --vcf NT.vcf \
--positions AHQsd.012.pos \
--minDP 12 \
--max-missing 1 \
--minQ 29 \
--out NT_filtered \
--recode

# get a list of sites
vcftools --vcf NT_filtered.recode.vcf --out NT_filtered --012

# make a matrix that is just the segregating sites (and other appropriate filters)

vcftools --gzvcf AHQsd_gatk.vcf.gz \
--minDP 3 \
--max-missing .5 \
--minQ 29 \
--positions NT_filtered.012.pos \
--maf .05 \
--thin 150 \
--out AHQsd_filtered --012 

vcftools --vcf NT.vcf \
 --positions AHQsd_filtered.012.pos \
 --out NT_forPhasing \
 --012