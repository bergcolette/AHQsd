# code to run gstacks
mainDir="/home/colette_berg/YNP/AHQsd_2021"

ref_map.pl --samples ${mainDir}/gatk_bams \
--popmap ${mainDir}/gatk_bams/bamList_test.txt -o ${mainDir}/gatk_stacks
