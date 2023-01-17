genomefa="/home/thom_nelson/resources/Mimulus/guttatus/IM62_v2.0/Mguttatus_V2refmtcp.fa"

bamdir="/home/colette_berg/YNP/AHQsd_2021/gatk_bams/"
vcfdir="/home/colette_berg/YNP/AHQsd_2021/vcfs/"
gvcfdir="/home/colette_berg/YNP/AHQsd_2021/gvcfs/"

### CREATE NEEDED DIRECTORIES
###  -p flag will create the full path and will do nothing
###     but exit without error if the path already exists

mkdir -p $vcfdir
mkdir -p $gvcfdir

### CREATE GVCFS FOR EACH SAMPLE

ls $bamdir | grep ".bam" | grep -v "bai" | sed 's/.bam//' | while read bam
do java -jar ~/packages/gatk-4.2.6.1/gatk -R ${genomefa} \
        -T HaplotypeCaller -I ${bamdir}${bam}.bam \
        --emitRefConfidence GVCF \
        --heterozygosity .03 \
        -o ${gvcfdir}${bam}.gvcf 
done
