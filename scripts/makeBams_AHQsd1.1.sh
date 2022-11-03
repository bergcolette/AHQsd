maindir=/home/colette_berg/YNP/AHQsd_2021/plates/AHQsd_1.1

	num="AHQsd_1.01A
AHQsd_1.01B
AHQsd_1.01C
AHQsd_1.01D
AHQsd_1.01E
AHQsd_1.01F
AHQsd_1.01G
AHQsd_1.01H
AHQsd_1.02A
AHQsd_1.02B
AHQsd_1.02C
AHQsd_1.02D
AHQsd_1.02E
AHQsd_1.02F
AHQsd_1.02G
AHQsd_1.02H
AHQsd_1.03A
AHQsd_1.03B
AHQsd_1.03C
AHQsd_1.03D
AHQsd_1.03E
AHQsd_1.03F
AHQsd_1.03G
AHQsd_1.03H
AHQsd_1.04A
AHQsd_1.04B
AHQsd_1.04C
AHQsd_1.04D
AHQsd_1.04E
AHQsd_1.04F
AHQsd_1.04G
AHQsd_1.04H
AHQsd_1.05A
AHQsd_1.05B
AHQsd_1.05C
AHQsd_1.05D
AHQsd_1.05E
AHQsd_1.05F
AHQsd_1.05G
AHQsd_1.05H
AHQsd_1.06A
AHQsd_1.06B
AHQsd_1.06C
AHQsd_1.06D
AHQsd_1.06E
AHQsd_1.06F
AHQsd_1.06G
AHQsd_1.06H"

for n in ${num}	 
do echo n; bash /home/colette_berg/PCF2/sequenceData3.2020/3762/raw/fasbam.sh ${maindir}/${n} /home/thom_nelson/resources/Mimulus/guttatus/IM62_v2.0/Mguttatus_V2refmtcp.fa ${maindir}/${n} 12
done

mv ${maindir}/*bam* /home/colette_berg/YNP/AHQsd_2021/bams
