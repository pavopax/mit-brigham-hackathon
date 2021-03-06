## Minimizing variability in clinical practice to save costs and improve quality

![one](https://raw.githubusercontent.com/pavopax/mit-brigham-hackathon/master/docs/poster.jpg)


Intro
===============================================================================
This project was a component of a submission for the
[MIT/Brigham and Women's Hospital Hacking Medicine Hackathon](http://disruptingmedicine.org/collaboration-series-events/2015-hackathon/).


This repository contains R programs to create a sample EMR dataset, via:

  * downloading OpenEpic/FHIR Electronic Medical Record data, and
  * combining it with some simulated data

The resultant dataset can be analyzed to identify efficiencies and summarize
potential savings.

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
*programs depend on `header.R and functions.R`*  

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
