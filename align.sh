
bowtie2-build $1 $1

#bowtie2 -p 5 --local -x $1 -1 CSF_S1_R1_val_1.fq -2 CSF_S1_R2_val_2.fq -S ${1}.sam
bowtie2 -p 5 --local -x $1 -1 $2 -2 $3 -S ${1}.sam

samtools view -@ 5 -bS ${1}.sam > ${1}.bam
rm -f ${1}.sam
samtools sort -@ 5 ${1}.bam -o ${1}_sort.bam
mv ${1}_sort.bam ${1}.bam
samtools index ${1}.bam

weeSAMv1.4 -b ${1}.bam -out ${1}_stats.txt -plot ${1}_coverage.pdf
