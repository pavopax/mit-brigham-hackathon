source("header.R")

## ============================================================================
## READ IN INPUTS
## ============================================================================
mrn <- read.csv("../data/pats.csv", stringsAsFactors=FALSE, header=FALSE)[,1]



## ============================================================================
## DEFINE PARAMETERS
## ============================================================================
nn <- length(mrn)                       # number of observations
abx.prop <- 0.7                         # proportion that got ABX
age.range <- 18:40                      # patient ages



## ============================================================================
## SIMULATE data
## ============================================================================
abx <- rbinom(n=nn, size=1, prob=abx.prop)
age <- sample(age.range, nn, replace = TRUE)


## combine into a dataset
dset <- data.frame(mrn, age, abx, stringsAsFactors=FALSE)



## ============================================================================
## OUTPUT
## ============================================================================
saveRDS(dset,"../data/dset.rds")
write.csv(dset, file="../data/dset.csv")


