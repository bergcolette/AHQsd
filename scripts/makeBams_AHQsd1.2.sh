maindir=/home/colette_berg/YNP/AHQsd_2021/plates/AHQsd_1.2

num="AHQsd_1.07A
AHQsd_1.07B
AHQsd_1.07C
AHQsd_1.07D
AHQsd_1.07E
AHQsd_1.07F
AHQsd_1.07G
AHQsd_1.07H
AHQsd_1.08A
AHQsd_1.08B
AHQsd_1.08C
AHQsd_1.08D
AHQsd_1.08E
AHQsd_1.08F
AHQsd_1.08G
AHQsd_1.08H
AHQsd_1.09A
AHQsd_1.09B
AHQsd_1.09C
AHQsd_1.09D
AHQsd_1.09E
AHQsd_1.09F
AHQsd_1.09G
AHQsd_1.09H
AHQsd_1.10A
AHQsd_1.10B
AHQsd_1.10C
AHQsd_1.10D
AHQsd_1.10E
AHQsd_1.10F
AHQsd_1.10G
AHQsd_1.10H
AHQsd_1.11A
AHQsd_1.11B
AHQsd_1.11C
AHQsd_1.11D
AHQsd_1.11E
AHQsd_1.11F
AHQsd_1.11G
AHQsd_1.11H
AHQsd_1.12A
AHQsd_1.12B
AHQsd_1.12C
AHQsd_1.12D
AHQsd_1.12E
AHQsd_1.12F
AHQsd_1.12G
AHQsd_1.12H"

for n in ${num}	 
do echo n; bash /home/colette_berg/PCF2/sequenceData3.2020/3762/raw/fasbam.sh ${maindir}/${n} /home/thom_nelson/resources/Mimulus/guttatus/IM62_v2.0/Mguttatus_V2refmtcp.fa ${maindir}/${n} 12
done

mv ${maindir}/*bam* /home/colette_berg/YNP/AHQsd_2021/bams
