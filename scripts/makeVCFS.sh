#bin/bash

genomefa="/home/thom_nelson/resources/Mimulus/guttatus/IM62_v2.0/Mguttatus_V2refmtcp.fa"

### MOVE SCAFFOLD BY SCAFFOLD
bamdir="/home/colette_berg/AHQsd_2021/bams/"
vcfdir="/home/colette_berg/AHQsd_2021/vcfs/"
gvcfdir="/home/colette_berg/AHQsd_2021/gvcfs/"

### CREATE NEEDED DIRECTORIES
###  -p flag will create the full path and will do nothing
###     but exit without error if the path already exists

mkdir -p $vcfdir
mkdir -p $gvcfdir

### MAKE VCF FOR EACH CHROMOSOME, INCLUDING ALL SITES ON THE CHROMOSOME
gatk  -R $genomefa -T GenotypeGVCFs \
	$(ls $gvcfdir*.gvcf | while read v ; do echo -n " --variant $v "; done) \
	-o ${vcfdir}.allsites.vcf
   bgzip ${vcfdir}scaffold.allsites.vcf
   tabix -p vcf VCF/scaffold.allsites.vcf.gz


### FILTER VCF TO SITES WITH MINIMAL MISSING DATA
### ('vcftools --max-missing 0.9' allows 10% missing data)

### FILTER TO GENIC REGIONS USING A BED FILE (vcftools --bed))

### USE VCFTOOLS --min-alleles 2 --max-alleles 2 TO FILTER TO BIALLELIC SITES

### PHASE GENOTYPES
