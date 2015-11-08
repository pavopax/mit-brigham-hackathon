## Deriving value from medical records
A project for the MIT/Brigham and Women's Hospital Hackathon


Quick Start
===============================================================================
This project contains programs to simulate a medical dataset.

1. Install requirements (see below).

2. Download data with:
`Rscript /programs/R/0-download.R`

3. Combine downloaded with simulated data with:
`Rscript /programs/R/1-makedata.R`


**input:** dataset of patient IDs from `/data/inputs/pats.csv`

**output:** `/data/dset.csv` [or `.rds`]



`/data/`

* contains output datasets

`/data/inputs/` 

* contains input datasets

For additonal documentation and references see `/docs`.




Contents
===============================================================================
* [Programs](#programs)
* [Requirements](#requirements))
* [Details](#details)
* [Sources](#sources)


Programs
===============================================================================
`1-simulate.R`

simulate data


`2-analyze.R`

analyze the data



Requirements
===============================================================================
R, and the R packages in `/programs/R/header.R`



Details
===============================================================================

Sources 
===============================================================================
n/a
