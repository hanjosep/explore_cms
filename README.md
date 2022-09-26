# medical research medicaid
 explore the files created by the synthetic medicaid records

The work I did to create the training dataset is in analyze_harm.ipynb. It should run without the additional 70GB worth of CMS download files.

Filtering down the opioid harm patients is in Data_Preparation.ipynb. Make sure the cms files are downloaded and unzipped. More info below.



## Important notes:
The repo is currently going under restructuring. 

Here is the new structure:

-`data analysis/` -contains the Notebook file to run the analysis of the generated CSV files
-`data preparation/` -contains the Notebook file for generating CSVs for logistic regression training
-`datasets/` -contains the various folders:


*data analysis/* -contains the Notebook files to run the analysis of the generated CSV files
*data analysis/* -contains the Notebook files to run the analysis of the generated CSV files

Because of the large file sizes of the SYN_PUF datasets, the cms_downloads folder is on the *.gitignore*. Look below to view instructions on exploring the code on the Jupyter notebook.

## Before running Data Preparation notebook
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

