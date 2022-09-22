#!usr/bin/bash
echo "${BASH_VERSION}"
# make sure bash is at least version 4 when running this script.

# downloads carrier claims; this is the biggest filesize. can balloon up to 4gb per unzipped file
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
    # carrier claims 1
    wget "http://downloads.cms.gov/files/DE1_0_2008_to_2010_Carrier_Claims_Sample_${i}A.zip" -P ./cms_download/
    # carrier claims 2
    wget "http://downloads.cms.gov/files/DE1_0_2008_to_2010_Carrier_Claims_Sample_${i}B.zip"  -P ./cms_download/
done 