# following icd9 codes correspond to opioid overdose diagnoses
# source: supplementary appendix for developing prediction algorithm using Pennsylvania Medicaid data


sed -n "1w opioidsq.csv"  ./cms_download/DE1_0_2008_to_2010_Carrier_Claims_Sample_1A.csv
grep -E ',96500,|,96501,|,96502,|,96509,|,E8500,|,E8501,|,E8502,|,E9350,|,E9351,|,E9352,' ./cms_download/DE1_0_2008_to_2010_Carrier_Claims_Sample_1A.csv >> opioidsq.csv
