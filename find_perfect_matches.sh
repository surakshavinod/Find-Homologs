#!/usr/bin/bash
blastn -query "$1" -subject "$2" -task blastn-short -outfmt "6 qseq sseq pident length" | awk '$3==100 && $4==28' > "$3"
echo "Number of perfect matches: $(wc -l < "$3")" >> $3 
cat "$3"

