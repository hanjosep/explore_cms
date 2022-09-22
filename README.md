# medical research medicaid
 explore the files created by the synthetic medicaid records

## Important notes:
Because of the large file sizes of the SYN_PUF datasets, the cms_downloads folder is on the *.gitignore*. Look below to view instructions on exploring the code on the Jupyter notebook.
## getting started
There are five different script files you can run. The download files are listed here: 

download_cms_all.sh downloads carrier, inpatient/outpuatient, prescription drug events, and the beneficiary summary. If you would like to download them individually, use the following bash file. 

download_cms_carrier.sh
download_cms_patient.sh
download_cms_prescription.sh
download_cms_summary.sh

In terminal, run 
    ```bash download_cms_all.sh intx inty```
where intx, inty is between [1,20] and intx<inty.

Make sure you also unzip all of the files.
    ```unzip ./cms_download/\*.zip ./cms_download/```
should unzip all of the files that were downloaded using the download_cms file. 

