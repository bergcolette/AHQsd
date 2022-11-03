#!/bin/bash
# This script is adapted from Findlay Finseth's processing script
#   originally found at: carnation.dbs.umt.edu:/home/findley_finseth/findley_carnation/Reseq/fastqs_to_bam_PE_mem.sh
# This script takes two fastq files and makes them into bams
# This script takes ZIPPED fastq files
# This script takes PAIRED END fastqs that need to be matched	
# Usage:  bash fastqs_to_bams_mem_MSG_PE.sh <filenames listed (only one file name per read pair)> 

genomefa="/home/thom_nelson/resources/Mimulus/guttatus/IM62_v2.0/Mguttatus_V2refmtcp.fa"

for filename in "$@"			# loops over arguments	
	do echo "Unzipping "$filename
 	gunzip ${filename}.1.fastq.gz
	gunzip ${filename}.2.fastq.gz
	# bunzip2 ${filename}.1.fastq.bz2
	# bunzip2 ${filename}.2.fastq.bz2

	# remove adapters and low quality seq
	echo "Trimming low quality reads and adapters from ${filename}"
	java -jar /home/thom_nelson/opt/Trimmomatic-0.35/trimmomatic-0.35.jar PE \
	     -threads 8 -phred33 ${filename}.1.fastq ${filename}.2.fastq \
	     ${filename}.1.paired.fastq ${filename}.1.unpaired.fastq \
	     ${filename}.2.paired.fastq ${filename}.2.unpaired.fastq \
	     ILLUMINACLIP:/home/thom_nelson/resources/Illumina/Many.TruSeq.PE.fa:2:20:10:4 \
	     LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36  

	### map reads to the genome
	echo "Aligning ${filename} with bwa mem"
	bwa mem -t 8 ${genomefa} ${filename}.1.paired.fastq ${filename}.2.paired.fastq > ${filename}.tmp.sam 

	### quality filter and sort sam, making a bam file
	echo "Making bam, quality filtering, and sorting for ${filename}"
	samtools view -bS  ${filename}.tmp.sam -q 29 > ${filename}.tmp.bam
	samtools sort -o ${filename}.sort.bam ${filename}.tmp.bam
	echo "Getting stats on ${filename}.sort.bam" 
	samtools flagstat ${filename}.sort.bam > ${filename}.sortedbam_flagstats # get some stats on the bam file

	### add read groups
	echo "Adding read groups to ${filename}"
	java -jar /home/thom_nelson/opt/picard.jar AddOrReplaceReadGroups \
	     INPUT=${filename}.sort.bam OUTPUT=${filename}.RG.sort.bam \
	     RGSM=${filename} RGLB=TruSeq RGPL=Illumina RGPU=UNKNOWN VALIDATION_STRINGENCY=LENIENT # adds read groups

	### Index BAM files
	echo "Indexing ${filename}"
	samtools index ${filename}.RG.sort.bam
	
	### Make a targets file for remapping around indels
	echo "Making targets file for ${filename}"
	java -jar /home/thom_nelson/opt/GenomeAnalysisTK.jar \
	     -T RealignerTargetCreator -R ${genomefa} \
	     -I ${filename}.RG.sort.bam -o ${filename}.RG.sort.bam.intervals

	### Use GATK to realign reads around potential indels
	echo "Realigning around indels for ${filename}"
	java -jar /home/thom_nelson/opt/GenomeAnalysisTK.jar \
	     -T IndelRealigner -R ${genomefa} \
	     -I ${filename}.RG.sort.bam -targetIntervals ${filename}.RG.sort.bam.intervals \
	     -o ${filename}.RG.sort.bam.realigned

	### Clean up, round 1
	echo "Renaming, zipping up, indexing, etc. for ${filename}"
	mv ${filename}.RG.sort.bam.realigned ${filename}.unsorted.bam # rename bam file
	samtools sort -o ${filename}_normdup.bam ${filename}.unsorted.bam
	samtools flagstat ${filename}_normdup.bam > ${filename}_normdup.flagstats #get some stats on final bam
	samtools index ${filename}_normdup.bam #index final bam
	gzip -9 ${filename}.1.fastq #zip files
	gzip -9 ${filename}.2.fastq

	### Clean up, round 2
	echo "Removing intermediate files"
        rm ${filename}.sam
	rm ${filename}*paired*
	rm ${filename}.unsorted.bam
	rm ${filename}*.tmp.*
	rm ${filename}.sort.bam
	rm ${filename}.RG.sort.bam
	rm ${filename}.rmdup.RG.sort.bam*
 	rm *rmdup_metrics_fix*

done



	# echo "Matching paired ends"
	# python /home/thom_nelson/scripts/MatchPE.py @HISEQ-KERMIT \
	#        ${filename}.1.fastq ${filename}.2.fastq \
	#        ${filename}.matched.1.fastq ${filename}.matched.2.fastq ${filename}.unpaired.fastq
	# mv ${filename}.R1.fastq ${filename}.matched.1.fastq
	# mv ${filename}.R2.fastq ${filename}.matched.2.fastq
	
	
	
	
	
	
	
	
	
	
