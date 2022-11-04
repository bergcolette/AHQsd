# code to run gstacks
mainDir="/home/colette_berg/YNP/AHQsd_2021"

ref_map.pl --samples ${mainDir}/bams \
--popmap ${mainDir}/bams/bamList.txt \
-o ${mainDir}/stacks
