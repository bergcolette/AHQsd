maindir=/home/colette_berg/YNP/AHQsd_2021/plates/AHQsd_6.1

	num="AHQsd_6.01A
AHQsd_6.01B
AHQsd_6.01C
AHQsd_6.01D
AHQsd_6.01E
AHQsd_6.01F
AHQsd_6.01G
AHQsd_6.01H
AHQsd_6.02A
AHQsd_6.02B
AHQsd_6.02C
AHQsd_6.02D
AHQsd_6.02E
AHQsd_6.02F
AHQsd_6.02G
AHQsd_6.02H
AHQsd_6.03A
AHQsd_6.03B
AHQsd_6.03C
AHQsd_6.03D
AHQsd_6.03E
AHQsd_6.03F
AHQsd_6.03G
AHQsd_6.03H
AHQsd_6.04A
AHQsd_6.04B
AHQsd_6.04C
AHQsd_6.04D
AHQsd_6.04E
AHQsd_6.04F
AHQsd_6.04G
AHQsd_6.04H
AHQsd_6.05A
AHQsd_6.05B
AHQsd_6.05C
AHQsd_6.05D
AHQsd_6.05E
AHQsd_6.05F
AHQsd_6.05G
AHQsd_6.05H
AHQsd_6.06A
AHQsd_6.06B
AHQsd_6.06C
AHQsd_6.06D
AHQsd_6.06E
AHQsd_6.06F
AHQsd_6.06G
AHQsd_6.06H"

for n in ${num}	 
do echo n; bash /home/colette_berg/PCF2/sequenceData3.2020/3762/raw/fasbam.sh ${maindir}/${n} /home/thom_nelson/resources/Mimulus/guttatus/IM62_v2.0/Mguttatus_V2refmtcp.fa ${maindir}/${n} 12
done

mv ${maindir}/*bam* /home/colette_berg/YNP/AHQsd_2021/bams
