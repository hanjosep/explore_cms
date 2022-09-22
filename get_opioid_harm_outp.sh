# following icd9 codes correspond to opioid related harm 
# source: supplementary appendix for developing prediction algorithm using Pennsylvania Medicaid data, jonassan et al.

# TODO: make it modular depending on the csv file. 

sed -n "1w opioid_harm_pats_outp.csv"  ./cms_download/DE1_0_2008_to_2010_Outpatient_Claims_Sample_1.csv
grep -E ',96500,|,96501,|,96502,|,96509,|,E8500,|,E8501,|,E8502,|,E9350,|,E9351,|,E9352,|,3055,|,3040,|,3047,|,E9350,|,E9351,|,E9352,|,E9401,|,9701,' ./cms_download/DE1_0_2008_to_2010_Outpatient_Claims_Sample_1.csv >> opioid_harm_pats_outp.csv
