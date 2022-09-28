### Datasets

- `cms_download`: downloaded raw data from the CMS website
- `cms_processed`: interim folder for generating cms_processed_full
- `cms_processed_full`: contains patients who experienced opioid related harm
- `cms_random`:  contains smaller sample from dataset for training
- `cms_test`: contains test sample for testing regression algorithms
- `download_cms`: group of bash files for downloading cms dataset
    - options for downloading:
        - all: download all carrier claims, inpatient/outpatient, prescription drug events, and beneficiary summary files
        - carrier, patient, prescription, summary: individual category downloads.
    - Note: creating the training/testing datasets requires all files present.

    In terminal, run 

        ```bash download_cms_all.sh intx inty```

    where intx, inty is between [1,20] and intx<inty.
