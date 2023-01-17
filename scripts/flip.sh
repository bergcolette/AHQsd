## The purpose of this script is to flip the reads so that the 
## inline barcode is always at the front (single end), which is required by stacks process_radtags. 

mainDir="/home/colette_berg/YNP/AHQsd_2021/plates"

for name in AHQsd_1.1 AHQsd_1.2 AHQsd_3.1 AHQsd_3.2 AHQsd_5.1 AHQsd_5.2 AHQsd_6.1 AHQsd_6.2
         
do        
gunzip ${mainDir}/${name}/${name}.rmdup.1.fastq.gz
gunzip ${mainDir}/${name}/${name}.rmdup.2.fastq.gz
# CTAG GATC
python2.7 /home/thom_nelson/scripts/Flip2BeRAD/Flip2BeRAD/Flip2BeRAD.py \
     -f ${mainDir}/${name}/${name}.rmdup.1.fastq \
     -r ${mainDir}/${name}/${name}.rmdup.2.fastq \
     -b ${mainDir}/barcodes_BestRAD48.txt \
     -c TGCAG \
     -m 1 \
     -o 2
    
mv *.fastq* ${mainDir}/${name}
mv *log* ${mainDir}/${name}
gzip ${mainDir}/${name}/${name}* 

done
