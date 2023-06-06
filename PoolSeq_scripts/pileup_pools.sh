## this is a script to get read counts from the poolseq files. 

# the --annotate parameter indicates what we want bcftools to output. AD stands for allele depth and it will output the counts of each allele, first with ref and then with alt. 
# min-BQ stands for base quality. 

bcftools mpileup \
    --min-BQ 29 \
    --annotate FORMAT/AD,FORMAT/ADF,FORMAT/ADR,FORMAT/DP,FORMAT/SP,INFO/AD,INFO/ADF,INFO/ADR \
    -f /home/colette_berg/resources/reference_genomes/AHQT/Mimulus_guttatus_var_AHQT1.mainGenome.fasta \
    RCNT_pool1_upper.bam RCNT_pool2_lower.bam RCT_pool1_upper.bam  RCT_pool2_lower.bam s6.bam s7.bam| bcftools call -m -Ob -o allPools.bcf