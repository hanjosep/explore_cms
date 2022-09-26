#!usr/bin/bash
echo "${BASH_VERSION}"
# make sure bash is at least version 4 when running this script.

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
    # summary file 08
    wget "https://www.cms.gov/Research-Statistics-Data-and-Systems/Downloadable-Public-Use-Files/SynPUFs/Downloads/DE1_0_2008_Beneficiary_Summary_File_Sample_${i}.zip" -P ./../cms_download/
    # carrier claims 1
    wget "http://downloads.cms.gov/files/DE1_0_2008_to_2010_Carrier_Claims_Sample_${i}A.zip" -P ./../cms_download/
    # carrier claims 2
    wget "http://downloads.cms.gov/files/DE1_0_2008_to_2010_Carrier_Claims_Sample_${i}B.zip"  -P ./../cms_download/
    # inpatient claims
    wget "https://www.cms.gov/Research-Statistics-Data-and-Systems/Downloadable-Public-Use-Files/SynPUFs/Downloads/DE1_0_2008_to_2010_Inpatient_Claims_Sample_${i}.zip" -P ./../cms_download/
    # outpatient claims
    wget "https://www.cms.gov/Research-Statistics-Data-and-Systems/Downloadable-Public-Use-Files/SynPUFs/Downloads/DE1_0_2008_to_2010_Outpatient_Claims_Sample_${i}.zip" -P ./../cms_download/
    # Prescription Drug events 
    wget "http://downloads.cms.gov/files/DE1_0_2008_to_2010_Prescription_Drug_Events_Sample_${i}.zip" -P ./../cms_download/
    # summary file 09
    wget "https://www.cms.gov/Research-Statistics-Data-and-Systems/Downloadable-Public-Use-Files/SynPUFs/Downloads/DE1_0_2009_Beneficiary_Summary_File_Sample_${i}.zip" -P ./../cms_download/
    # summary file 10
    wget "https://www.cms.gov/Research-Statistics-Data-and-Systems/Downloadable-Public-Use-Files/SynPUFs/Downloads/DE1_0_2010_Beneficiary_Summary_File_Sample_${i}.zip" -P ./../cms_download/
done 