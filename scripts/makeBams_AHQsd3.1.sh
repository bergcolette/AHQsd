maindir=/home/colette_berg/YNP/AHQsd_2021/plates/AHQsd_3.1

	num="AHQsd_3.01A
AHQsd_3.01B
AHQsd_3.01C
AHQsd_3.01D
AHQsd_3.01E
AHQsd_3.01F
AHQsd_3.01G
AHQsd_3.01H
AHQsd_3.02A
AHQsd_3.02B
AHQsd_3.02C
AHQsd_3.02D
AHQsd_3.02E
AHQsd_3.02F
AHQsd_3.02G
AHQsd_3.02H
AHQsd_3.03A
AHQsd_3.03B
AHQsd_3.03C
AHQsd_3.03D
AHQsd_3.03E
AHQsd_3.03F
AHQsd_3.03G
AHQsd_3.03H
AHQsd_3.04A
AHQsd_3.04B
AHQsd_3.04C
AHQsd_3.04D
AHQsd_3.04E
AHQsd_3.04F
AHQsd_3.04G
AHQsd_3.04H
AHQsd_3.05A
AHQsd_3.05B
AHQsd_3.05C
AHQsd_3.05D
AHQsd_3.05E
AHQsd_3.05F
AHQsd_3.05G
AHQsd_3.05H
AHQsd_3.06A
AHQsd_3.06B
AHQsd_3.06C
AHQsd_3.06D
AHQsd_3.06E
AHQsd_3.06F
AHQsd_3.06G
AHQsd_3.06H"

for n in ${num}	 
do echo n; bash /home/colette_berg/PCF2/sequenceData3.2020/3762/raw/fasbam.sh ${maindir}/${n} /home/thom_nelson/resources/Mimulus/guttatus/IM62_v2.0/Mguttatus_V2refmtcp.fa ${maindir}/${n} 12
done

mv ${maindir}/*bam* /home/colette_berg/YNP/AHQsd_2021/bams
