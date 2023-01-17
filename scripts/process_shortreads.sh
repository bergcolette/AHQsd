# script to process/demultiplex rad tags  for AHQsd_1.1

mainDir="/home/colette_berg/YNP/AHQsd_2021/plates"

names="AHQsd_5.1
AHQsd_5.2"
#AHQsd_1.2
#AHQsd_3.1
#AHQsd_3.2
#AHQsd_5.1
#AHQsd_5.2
##AHQsd_6.1
#AHQsd_6.2"

for name in ${names}

do


process_shortreads -1 ${mainDir}/${name}/filtered_forward.fastq -2 \
${mainDir}/${name}/filtered_reverse.fastq \
-b ${mainDir}/${name}/${name}_barcodes.txt \
-o ${mainDir}/${name} \
-i fastq \
-y gzfastq \
-r -c -q -E \
phred33 --inline_null;

done