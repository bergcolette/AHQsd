dir="/home/colette_berg/YNP/AHQsd_2021/stacks"

vcftools --vcf ${dir}/NT.vcf \
--out ${dir}/NT_filtered \
--minDP 12 \
--min-meanDP 12 \
--minQ 30 \
--012