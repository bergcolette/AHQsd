maindir=/home/colette_berg/YNP/AHQsd_2021/plates/AHQsd_5.2

	num="AHQsd_5.07A
AHQsd_5.07B
AHQsd_5.07C
AHQsd_5.07D
AHQsd_5.07E
AHQsd_5.07F
AHQsd_5.07G
AHQsd_5.07H
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
AHQsd_5.09F
AHQsd_5.09G
AHQsd_5.09H
AHQsd_5.10A
AHQsd_5.10B
AHQsd_5.10C
AHQsd_5.10D
AHQsd_5.10E
AHQsd_5.10F
AHQsd_5.10G
AHQsd_5.10H
AHQsd_5.11A
AHQsd_5.11B
AHQsd_5.11C
AHQsd_5.11D
AHQsd_5.11E
AHQsd_5.11F
AHQsd_5.11G
AHQsd_5.11H
AHQsd_5.12A
AHQsd_5.12B
AHQsd_5.12C
AHQsd_5.12D
AHQsd_5.12E
AHQsd_5.12F
AHQsd_5.12G
AHQsd_5.12H"

for n in ${num}	 
do echo n; bash /home/colette_berg/PCF2/sequenceData3.2020/3762/raw/fasbam.sh ${maindir}/${n} /home/thom_nelson/resources/Mimulus/guttatus/IM62_v2.0/Mguttatus_V2refmtcp.fa ${maindir}/${n} 12
done

mv ${maindir}/*bam* /home/colette_berg/YNP/AHQsd_2021/bams
