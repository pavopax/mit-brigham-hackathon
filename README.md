## Deriving value from medical records

This project was a component of a submission for the
[MIT/Brigham and Women's Hospital Hacking Medicine Hackathon](http://disruptingmedicine.org/collaboration-series-events/2015-hackathon/)


![one](https://raw.githubusercontent.com/pavopax/mit-brigham-hackathon/master/docs/poster.jpg)


Intro
===============================================================================
This repository contains R programs to:

  * download OpenEpic/FHIR Electronic Medical Record data, and
  * combine it with some simulated data

to create a sample EMR dataset for further analysis.



Quick Start
===============================================================================

*System: Mac OS X with Terminal*

1. Install requirements (R, and the R packages in
   `/programs/R/header.R`).

2. Navigate to `/programs/R`

3. Download data from command line with: `Rscript 0-download.R`

4. Combine downloaded and simulated data with: `Rscript 1-makedata.R`







Contents
===============================================================================
* [Programs](#programs)
* [Requirements](#requirements)
* [Misc](#misc)
* [Sources](#sources)


Programs
===============================================================================
*see /programs/R*  
*depend on `header.R and functions.R`*  

`0-download.R`

Download data from OpenEpic/FHIR for some specified patient IDs
(`/data/input/pats.csv`)

`1-simulate.R`

Simulate some additional data (age, antibiotic [abx] use), and combine
with downloaded data.


`2-analyze.R`

Run some analyses (working).



Requirements
===============================================================================
R, and the R packages in `/programs/R/header.R`



Misc
===============================================================================
`/docs` contains documents and images


Sources 
===============================================================================

[https://open.epic.com/Interface/FHIR](https://open.epic.com/Interface/FHIR)
