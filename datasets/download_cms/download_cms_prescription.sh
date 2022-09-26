#!usr/bin/bash
echo "${BASH_VERSION}"
# make sure bash is at least version 4 when running this script.

# downloads prescription drug events
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
    # Prescription Drug events 
    wget "http://downloads.cms.gov/files/DE1_0_2008_to_2010_Prescription_Drug_Events_Sample_${i}.zip" -P ./cms_download/
done 