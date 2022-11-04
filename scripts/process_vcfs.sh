dataDir="/home/colette_berg/YNP/AHQsd_2021/stacks"

# first take the populations file and only keep sites segregating between N and T
vcftools --vcf ${dataDir}/populations.snps.vcf \
--positions ~/YNP/AHQsd_2021/stacks/NT_SNPs.012.pos \
--out ${dataDir}/AHQsd_segregating_sites --recode
