# Description
Given a protein sequence query, the script performs a blast search against a nucleotide subject, filters hits to keep only hits with >30% sequence identity and >90% match length (i.e., 90% of the query sequence length) and prints the number of matches identified.

# Usage
### Create a conda environment
```
conda create -n new_env
conda activate new_env
conda install -c bioconda blast
```
### Run the script
`./find_homologs.sh $QUERY_SEQ $SUBJECT_SEQ $OUTPUT`
