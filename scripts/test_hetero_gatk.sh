mainDir="/home/colette_berg/YNP/AHQsd_2021/gatk_bams/test_adj_heterozygosity"
genome="/home/thom_nelson/resources/Mimulus/guttatus/IM62_v2.0/Mguttatus_V2refmtcp.fa"

for i in ${mainDir}/*bam;
do
gatk HaplotypeCaller \
-R ${genome} \
-I ${i} \
-O ${i}.g.vcf.gz \
--heterozygosity 0.05 \
--ERC GVCF;
done

 gatk CombineGVCFs \
   -R ${genome} \
    --variant ${mainDir}/AHQsd_5.09A.bam.g.vcf.gz \
    --variant ${mainDir}/AHQsd_5.09B.bam.g.vcf.gz \
    --variant ${mainDir}/AHQsd_5.09C.bam.g.vcf.gz \
    --variant ${mainDir}/AHQsd_5.09D.bam.g.vcf.gz \
    --variant ${mainDir}/AHQsd_5.09G.bam.g.vcf.gz \
    --variant ${mainDir}/AHQsd_5.09H.bam.g.vcf.gz \
    --variant ${mainDir}/AHQsd_5.10A.bam.g.vcf.gz \
    --variant ${mainDir}/AHQsd_5.10B.bam.g.vcf.gz \
    --variant ${mainDir}/AHQsd_5.10C.bam.g.vcf.gz \
    --variant ${mainDir}/AHQsd_5.10D.bam.g.vcf.gz \
    --variant ${mainDir}/AHQsd_5.10E.bam.g.vcf.gz \
    --variant ${mainDir}/AHQsd_5.10F.bam.g.vcf.gz \
    --variant ${mainDir}/AHQsd_5.11B.bam.g.vcf.gz \
    --variant ${mainDir}/AHQsd_5.11C.bam.g.vcf.gz \
    --variant ${mainDir}/AHQsd_5.11D.bam.g.vcf.gz \
    --variant ${mainDir}/AHQsd_5.11E.bam.g.vcf.gz \
    --variant ${mainDir}/AHQsd_5.11F.bam.g.vcf.gz \
    --variant ${mainDir}/AHQsd_5.11G.bam.g.vcf.gz \
    --variant ${mainDir}/AHQsd_5.11H.bam.g.vcf.gz \
    --variant ${mainDir}/AHQsd_5.12A.bam.g.vcf.gz \
    --variant ${mainDir}/AHQsd_5.12B.bam.g.vcf.gz \
    --variant ${mainDir}/AHQsd_5.12D.bam.g.vcf.gz \
    --variant ${mainDir}/AHQsd_5.12E.bam.g.vcf.gz \
    --variant ${mainDir}/AHQsd_5.12F.bam.g.vcf.gz \
    --variant ${mainDir}/AHQsd_5.12G.bam.g.vcf.gz \
    --variant ${mainDir}/AHQsd_5.12H.bam.g.vcf.gz \
    -O ${mainDir}/AHQsd_combined_test_het.g.vcf.gz
 

gatk GenotypeGVCFs \
   -R ${genome} \
   -V ${mainDir}/AHQsd_combined_test_het.g.vcf.gz \
   --heterozygosity .05 \
   -O AHQsd_test_het.vcf.gz