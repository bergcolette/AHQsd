maindir=/home/colette_berg/YNP/AHQsd_2021/plates/AHQsd_5.1

	num="AHQsd_5.01A
AHQsd_5.01B
AHQsd_5.01C
AHQsd_5.01D
AHQsd_5.01E
AHQsd_5.01F
AHQsd_5.01G
AHQsd_5.01H
AHQsd_5.02A
AHQsd_5.02B
AHQsd_5.02C
AHQsd_5.02D
AHQsd_5.02E
AHQsd_5.02F
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
AHQsd_5.04A
AHQsd_5.04B
AHQsd_5.04C
AHQsd_5.04D
AHQsd_5.04E
AHQsd_5.04F
AHQsd_5.04G
AHQsd_5.04H
AHQsd_5.05A
AHQsd_5.05B
AHQsd_5.05C
AHQsd_5.05D
AHQsd_5.05E
AHQsd_5.05F
AHQsd_5.05G
AHQsd_5.05H
AHQsd_5.06A
AHQsd_5.06B
AHQsd_5.06C
AHQsd_5.06D
AHQsd_5.06E
AHQsd_5.06F
AHQsd_5.06G
AHQsd_5.06H"

for n in ${num}	 
do echo n; bash /home/colette_berg/PCF2/sequenceData3.2020/3762/raw/fasbam.sh ${maindir}/${n} /home/thom_nelson/resources/Mimulus/guttatus/IM62_v2.0/Mguttatus_V2refmtcp.fa ${maindir}/${n} 12
done

mv ${maindir}/*bam* /home/colette_berg/YNP/AHQsd_2021/bams
