maindir=/home/colette_berg/YNP/AHQsd_2021/plates/AHQsd_6.2

	num="AHQsd_6.07A
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
AHQsd_6.08E
AHQsd_6.08F
AHQsd_6.08G
AHQsd_6.08H
AHQsd_6.09A
AHQsd_6.09B
AHQsd_6.09C
AHQsd_6.09D
AHQsd_6.09E
AHQsd_6.09F
AHQsd_6.09G
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
AHQsd_6.11C
AHQsd_6.11D
AHQsd_6.11E
AHQsd_6.11F
AHQsd_6.11G
AHQsd_6.11H
AHQsd_6.12A
AHQsd_6.12B
AHQsd_6.12C
AHQsd_6.12D
AHQsd_6.12E
AHQsd_6.12F
AHQsd_6.12G
AHQsd_6.12H"

for n in ${num}	 
do echo n; bash /home/colette_berg/PCF2/sequenceData3.2020/3762/raw/fasbam.sh ${maindir}/${n} /home/thom_nelson/resources/Mimulus/guttatus/IM62_v2.0/Mguttatus_V2refmtcp.fa ${maindir}/${n} 12
done

mv ${maindir}/*bam* /home/colette_berg/YNP/AHQsd_2021/bams
