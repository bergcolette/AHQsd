dir="/home/colette_berg/YNP/AHQsd_2021/bams"

for i in ${dir}/*.bam; do samtools depth $i > $i.depth; done