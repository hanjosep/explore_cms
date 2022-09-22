#!usr/bin/bash
echo "${BASH_VERSION}"
# make sure bash is at least version 4 when running this script.

# gets the inpatient/outpatient data.
# 
# run code as follows:
# bash download_cms.sh x y
# x = first sample
# y = last sample 
# downloads the sample range as provided 
# 

for i in $(eval echo {$1..$2})
# given the following argvs 
# for i in {1..2}
do
    echo "downloading sample ${i}"
    # inpatient claims
    wget "https://www.cms.gov/Research-Statistics-Data-and-Systems/Downloadable-Public-Use-Files/SynPUFs/Downloads/DE1_0_2008_to_2010_Inpatient_Claims_Sample_${i}.zip" -P ./cms_download/
    # outpatient claims
    wget "https://www.cms.gov/Research-Statistics-Data-and-Systems/Downloadable-Public-Use-Files/SynPUFs/Downloads/DE1_0_2008_to_2010_Outpatient_Claims_Sample_${i}.zip" -P ./cms_download/
done 