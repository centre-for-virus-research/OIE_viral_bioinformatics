# OIE_viral_bioinformatics
Scripts used on the Annual Training course on Viral Bioinformatics and Genomics

##  contig_length_fasta.pl
Perl script for getting the length of contigs. Column 1 is the sequence identifer, column two of the output is the sequence length.

##  align.sh
Simple bash script to align reads to a reference using bowtie2. Run with:

sh align.sh ref.fasta read_file_1.fq read_file_2.fq
