genomefa="/home/thom_nelson/resources/Mimulus/guttatus/IM62_v2.0/Mguttatus_V2refmtcp.fa"

bamdir="/home/colette_berg/AHQsd_2021/"
vcfdir="/home/colette_berg/AHQsd_2021/vcfs/"
gvcfdir="/home/colette_berg/AHQsd_2021/gvcfs/"

### CREATE NEEDED DIRECTORIES
###  -p flag will create the full path and will do nothing
###     but exit without error if the path already exists

mkdir -p $vcfdir
mkdir -p $gvcfdir

### CREATE GVCFS FOR EACH SAMPLE

ls $bamdir | grep ".bam" | grep -v "bai" | sed 's/.bam//' | while read bam
do   java -jar /home/thom_nelson/opt/GenomeAnalysisTK.jar -R ${genomefa} \
        -T HaplotypeCaller -I ${bamdir}${bam}.bam \
        --emitRefConfidence GVCF \
        -o ${gvcfdir}${bam}.gvcf \
        -variant_index_type LINEAR -variant_index_parameter 128000
done

