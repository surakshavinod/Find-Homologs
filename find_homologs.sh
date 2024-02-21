#!bin/bash

query_seq=$1
genome_assembly=$2
outfile=$3

tblastn \
  -query $query_seq \
	-subject $genome_assembly \
	-outfmt '6 std qlen' \
	-task tblastn-fast \
	| awk '$3>30 && $4>0.9*$13' > $outfile
	
echo "$(wc -l $outfile | cut -d' ' -f1) matches found in $genome_assembly"
