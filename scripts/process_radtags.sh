# script to process/demultiplex rad tags  for AHQsd_1.1

mainDir="/home/colette_berg/YNP/AHQsd_2021/plates"

names="AHQsd_1.1
AHQsd_1.2
AHQsd_3.1
AHQsd_3.2
AHQsd_5.1
AHQsd_5.2
AHQsd_6.1
AHQsd_6.2"

for name in ${names}

do

process_radtags -1 ${mainDir}/${name}/filtered_forward.fastq \
-2 ${mainDir}/${name}/filtered_reverse.fastq \
-o ${mainDir}/${name} \
-b ${mainDir}/${name}/${name}_barcodes.txt \
--disable_rad_check \
--renz_1 pstI --renz_2 bfaI -r -c -q 
done
