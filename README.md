## Deriving value from medical records
A project for the MIT/Brigham and Women's Hospital Hackathon


![one](https://raw.githubusercontent.com/pavopax/mit-brigham-hackathon/master/docs/good-bad-icon.png.)


Quick Start
===============================================================================
This project contains R programs to:

  * download OpenEpic/FHIR Electronic Medical Record data, and
  * combine it with some simulated data

to create a sample EMR dataset for further analysis.

This project was a component of a submission at
[the MIT/Brigham and Women's Hospital Hacking Medicine Hackathon](http://disruptingmedicine.org/collaboration-series-events/2015-hackathon/)



1. Install requirements (R, and the R packages in
   `/programs/R/header.R`).

> System: Mac OS X with Terminal

2. Navigate to `/programs/R`

3. Download data from command line with: `Rscript 0-download.R`

4. Combine downloaded and simulated data with: `Rscript 1-makedata.R`


**inputs:**  
dataset of patient IDs from `/data/inputs/pats.csv`

**output:**  
`/data/dset.csv` [or `.rds`]



`/data/[/input]`

* contains input/output datasets


`/docs`

* documents and images




Contents
===============================================================================
* [Programs](#programs)
* [Requirements](#requirements))
* [Details](#details)
* [Sources](#sources)


Programs
===============================================================================
> see /programs/R
> depend on `header.R and functions.R`

`0-download.R`

Download data from OpenEpic/FHIR for some specified patient IDs
(`/data/input/pats.csv`)

`1-simulate.R`

Simulate some additional data (age, antibiotic [abx] use) and combine
with downloaded data.


`2-analyze.R`

Run some analyses (working).



Requirements
===============================================================================
R, and the R packages in `/programs/R/header.R`



Details
===============================================================================
n/a


Sources 
===============================================================================

[https://open.epic.com/Interface/FHIR](https://open.epic.com/Interface/FHIR)
