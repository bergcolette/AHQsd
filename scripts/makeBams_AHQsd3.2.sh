maindir=/home/colette_berg/YNP/AHQsd_2021/plates/AHQsd_3.2

	num="AHQsd_3.07A
AHQsd_3.07B
AHQsd_3.07C
AHQsd_3.07D
AHQsd_3.07E
AHQsd_3.07F
AHQsd_3.07G
AHQsd_3.07H
AHQsd_3.08A
AHQsd_3.08B
AHQsd_3.08C
AHQsd_3.08D
AHQsd_3.08E
AHQsd_3.08F
AHQsd_3.08G
AHQsd_3.08H
AHQsd_3.09A
AHQsd_3.09B
AHQsd_3.09C
AHQsd_3.09D
AHQsd_3.09E
AHQsd_3.09F
AHQsd_3.09G
AHQsd_3.09H
AHQsd_3.10A
AHQsd_3.10B
AHQsd_3.10C
AHQsd_3.10D
AHQsd_3.10E
AHQsd_3.10F
AHQsd_3.10G
AHQsd_3.10H
AHQsd_3.11A
AHQsd_3.11B
AHQsd_3.11C
AHQsd_3.11D
AHQsd_3.11E
AHQsd_3.11F
AHQsd_3.11G
AHQsd_3.11H
AHQsd_3.12A
AHQsd_3.12B
AHQsd_3.12C
AHQsd_3.12D
AHQsd_3.12E
AHQsd_3.12F
AHQsd_3.12G
AHQsd_3.12H"

for n in ${num}	 
do echo n; bash /home/colette_berg/PCF2/sequenceData3.2020/3762/raw/fasbam.sh ${maindir}/${n} /home/thom_nelson/resources/Mimulus/guttatus/IM62_v2.0/Mguttatus_V2refmtcp.fa ${maindir}/${n} 12
done

mv ${maindir}/*bam* /home/colette_berg/YNP/AHQsd_2021/bams
