samtools mpileup -g -f /home/thom_nelson/resources/Mimulus/guttatus/IM62_v2.0/Mguttatus_V2refmtcp.fa \
 /home/colette_berg/YNP/AHQsd_2021/gatk_bams/AHQsd_5.01A.bam \
 /home/colette_berg/YNP/AHQsd_2021/gatk_bams/AHQsd_5.01B.bam \
 /home/colette_berg/YNP/AHQsd_2021/gatk_bams/AHQsd_5.01C.bam \
 /home/colette_berg/YNP/AHQsd_2021/gatk_bams/AHQsd_5.01D.bam \
 /home/colette_berg/YNP/AHQsd_2021/gatk_bams/AHQsd_5.01E.bam \
 /home/colette_berg/YNP/AHQsd_2021/gatk_bams/AHQsd_5.01F.bam \
 /home/colette_berg/YNP/AHQsd_2021/gatk_bams/AHQsd_5.01G.bam \
 /home/colette_berg/YNP/AHQsd_2021/gatk_bams/AHQsd_5.01H.bam \
 /home/colette_berg/YNP/AHQsd_2021/gatk_bams/AHQsd_5.02A.bam \
 /home/colette_berg/YNP/AHQsd_2021/gatk_bams/AHQsd_5.02B.bam \
 /home/colette_berg/YNP/AHQsd_2021/gatk_bams/AHQsd_5.02C.bam \
 /home/colette_berg/YNP/AHQsd_2021/gatk_bams/AHQsd_5.02D.bam \
 /home/colette_berg/YNP/AHQsd_2021/gatk_bams/AHQsd_5.02E.bam \
 /home/colette_berg/YNP/AHQsd_2021/gatk_bams/AHQsd_5.02F.bam \
 /home/colette_berg/YNP/AHQsd_2021/gatk_bams/AHQsd_5.02G.bam \
 /home/colette_berg/YNP/AHQsd_2021/gatk_bams/AHQsd_5.02H.bam \
 /home/colette_berg/YNP/AHQsd_2021/gatk_bams/AHQsd_5.03A.bam \
 /home/colette_berg/YNP/AHQsd_2021/gatk_bams/AHQsd_5.03B.bam \
 /home/colette_berg/YNP/AHQsd_2021/gatk_bams/AHQsd_5.03C.bam \
 /home/colette_berg/YNP/AHQsd_2021/gatk_bams/AHQsd_5.03D.bam \
 /home/colette_berg/YNP/AHQsd_2021/gatk_bams/AHQsd_5.03E.bam \
 /home/colette_berg/YNP/AHQsd_2021/gatk_bams/AHQsd_5.03F.bam \
 /home/colette_berg/YNP/AHQsd_2021/gatk_bams/AHQsd_5.03G.bam \
 /home/colette_berg/YNP/AHQsd_2021/gatk_bams/AHQsd_5.03H.bam \
 /home/colette_berg/YNP/AHQsd_2021/gatk_bams/AHQsd_5.04A.bam \
 /home/colette_berg/YNP/AHQsd_2021/gatk_bams/AHQsd_5.04B.bam \
 /home/colette_berg/YNP/AHQsd_2021/gatk_bams/AHQsd_5.04C.bam \
 /home/colette_berg/YNP/AHQsd_2021/gatk_bams/AHQsd_5.04D.bam > AHQsd_test_samtools.bcf

bcftools view -bvcg AHQsd_test_samtools.bcf > AHQsd_test_bcf.bcf