### Data preparation
Contains notebook that generated the processed dataset for training/testing. 

The following methods are in `Data_Preparation.ipynb`

#### method modularize
in a given sample number, generate the dataset, filtered with only patients that received opioid related harm

#### method modularize_random
in a given sample number, generate a sample dataset of random patients within the dataset



### NDC, ICD codes
`filter_list_no_star_linecode.txt`: python list of NDC codes for prescription opiates 

`filter_list_no_star`: pickle loadable file

`icd_cancer_regex_linecode.txt`: snippet of code used to search for ICD terms related to cancer

`icd_opioid_harm_regex_linecode.txt`: snippet of code used to search for ICD terms related to opioid harm

