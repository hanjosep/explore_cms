#!usr/bin/bash
echo "${BASH_VERSION}"
# make sure bash is at least version 4 when running this script.

# this downloads only the summary files of the given samples

# run code as follows:
# bash thisfile x y
# x = first sample
# y = last sample 
# downloads the sample range as provided 
# 

for i in $(eval echo {$1..$2})
# given the following argvs 
# for i in {1..2}
do
    echo "downloading sample ${i}"
    # summary file 08
    wget "https://www.cms.gov/Research-Statistics-Data-and-Systems/Downloadable-Public-Use-Files/SynPUFs/Downloads/DE1_0_2008_Beneficiary_Summary_File_Sample_${i}.zip" -P ./../cms_download/
    # summary file 09
    wget "https://www.cms.gov/Research-Statistics-Data-and-Systems/Downloadable-Public-Use-Files/SynPUFs/Downloads/DE1_0_2009_Beneficiary_Summary_File_Sample_${i}.zip" -P ./../cms_download/
    # summary file 10
    wget "https://www.cms.gov/Research-Statistics-Data-and-Systems/Downloadable-Public-Use-Files/SynPUFs/Downloads/DE1_0_2010_Beneficiary_Summary_File_Sample_${i}.zip" -P ./../cms_download/
done 