mainDir="/home/colette_berg/YNP/AHQsd_2021/vcfs"

for i in ${mainDir}/*plusDiversity*; do vcftools --gzvcf $i --out $i --keep AHQT_AHQN.txt --recode; done
