# explore barcodes 

#gunzip -c ~/YNP/AHQsd_2021/plates/AHQsd_1.1/AHQsd_1.1.1.fastq.gz | grep "^@K00337" | awk -F: '{print $NF}' | sort -nr > AHQsd_1.1_barcode_count.txt

gunzip -c ~/YNP/AHQsd_2021/plates/AHQsd_1.1/AHQsd_1.1.i7.fastq.gz | grep "^@K00337" | awk -F: '{print $NF}' | sort -nr > AHQsd_1.1_barcode_count.txt
