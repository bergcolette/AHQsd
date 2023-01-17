mainDir="/home/colette_berg/YNP/AHQsd_2021/gatk_bams"
genome="/home/thom_nelson/resources/Mimulus/guttatus/IM62_v2.0/Mguttatus_V2refmtcp.fa"

list="AHQsd_1.02C
AHQsd_1.02E
AHQsd_1.02F
AHQsd_1.03G
AHQsd_1.04A
AHQsd_1.04C
AHQsd_1.05A
AHQsd_1.05D
AHQsd_1.07B
AHQsd_1.07G
AHQsd_1.08B
AHQsd_1.08C
AHQsd_1.09C
AHQsd_1.09D
AHQsd_1.09G
AHQsd_1.10B
AHQsd_1.10C
AHQsd_1.10E
AHQsd_1.11A
AHQsd_1.11C
AHQsd_1.11D
AHQsd_1.11G
AHQsd_1.11H
AHQsd_3.07B
AHQsd_3.07C
AHQsd_3.07D
AHQsd_3.07E
AHQsd_3.07F
AHQsd_3.07G
AHQsd_3.07H
AHQsd_3.08B
AHQsd_3.08C
AHQsd_3.08D
AHQsd_3.08E
AHQsd_3.08F
AHQsd_3.08G
AHQsd_3.08H
AHQsd_3.09C
AHQsd_3.09D
AHQsd_3.09E
AHQsd_3.09F
AHQsd_3.10B
AHQsd_3.10C
AHQsd_3.10D
AHQsd_3.10E
AHQsd_3.10G
AHQsd_3.10H
AHQsd_3.11B
AHQsd_3.11C
AHQsd_3.11D
AHQsd_3.11E
AHQsd_3.11G
AHQsd_5.01B
AHQsd_5.01C
AHQsd_5.01D
AHQsd_5.01F
AHQsd_5.01G
AHQsd_5.01H
AHQsd_5.02A
AHQsd_5.02B
AHQsd_5.02C
AHQsd_5.02E
AHQsd_5.02G
AHQsd_5.02H
AHQsd_5.03A
AHQsd_5.03B
AHQsd_5.03C
AHQsd_5.03D
AHQsd_5.03E
AHQsd_5.03F
AHQsd_5.03G
AHQsd_5.03H
AHQsd_5.04C
AHQsd_5.04G
AHQsd_5.04H
AHQsd_5.05A
AHQsd_5.05C
AHQsd_5.05E
AHQsd_5.05F
AHQsd_5.05G
AHQsd_5.05H
AHQsd_5.06B
AHQsd_5.06D
AHQsd_5.06E
AHQsd_5.06F
AHQsd_5.06G
AHQsd_5.06H
AHQsd_5.07A
AHQsd_5.07B
AHQsd_5.07D
AHQsd_5.07E
AHQsd_5.07G
AHQsd_5.08A
AHQsd_5.08B
AHQsd_5.08C
AHQsd_5.08D
AHQsd_5.08E
AHQsd_5.08F
AHQsd_5.08G
AHQsd_5.08H
AHQsd_5.09A
AHQsd_5.09B
AHQsd_5.09C
AHQsd_5.09D
AHQsd_5.09E
AHQsd_5.09G
AHQsd_5.09H
AHQsd_5.10A
AHQsd_5.10B
AHQsd_5.10C
AHQsd_5.10D
AHQsd_5.10E
AHQsd_5.10F
AHQsd_5.11B
AHQsd_5.11C
AHQsd_5.11D
AHQsd_5.11E
AHQsd_5.11F
AHQsd_5.11G
AHQsd_5.11H
AHQsd_5.12A
AHQsd_5.12B
AHQsd_5.12D
AHQsd_5.12E
AHQsd_5.12F
AHQsd_5.12G
AHQsd_5.12H
AHQsd_6.01A
AHQsd_6.01B
AHQsd_6.01C
AHQsd_6.01D
AHQsd_6.01F
AHQsd_6.01H
AHQsd_6.02A
AHQsd_6.02B
AHQsd_6.02C
AHQsd_6.02G
AHQsd_6.02H
AHQsd_6.03B
AHQsd_6.03D
AHQsd_6.03F
AHQsd_6.03G
AHQsd_6.03H
AHQsd_6.04A
AHQsd_6.04B
AHQsd_6.04C
AHQsd_6.04E
AHQsd_6.04H
AHQsd_6.05A
AHQsd_6.05B
AHQsd_6.05D
AHQsd_6.05E
AHQsd_6.05F
AHQsd_6.05G
AHQsd_6.05H
AHQsd_6.06H
AHQsd_6.07A
AHQsd_6.07B
AHQsd_6.07C
AHQsd_6.07D
AHQsd_6.07E
AHQsd_6.07F
AHQsd_6.07G
AHQsd_6.07H
AHQsd_6.08A
AHQsd_6.08B
AHQsd_6.08C
AHQsd_6.08D
AHQsd_6.08F
AHQsd_6.08G
AHQsd_6.08H
AHQsd_6.09A
AHQsd_6.09B
AHQsd_6.09C
AHQsd_6.09E
AHQsd_6.09F
AHQsd_6.09H
AHQsd_6.10A
AHQsd_6.10B
AHQsd_6.10C
AHQsd_6.10D
AHQsd_6.10E
AHQsd_6.10F
AHQsd_6.10G
AHQsd_6.10H
AHQsd_6.11A
AHQsd_6.11B
AHQsd_6.11E
AHQsd_6.11G
AHQsd_6.11H
AHQsd_6.12D
AHQsd_6.12E
AHQsd_6.12F
AHQsd_6.12G
AHQsd_6.12H"

for i in ${list}
do ~/packages/gatk-4.2.6.1/gatk HaplotypeCaller \
   -R ${genome} \
   -I ${mainDir}/${i}.bam \
   -O ${mainDir}/${i}.vcf.gz \
   #-bamout ${mainDir}/${i}_gatk.bam;
done
