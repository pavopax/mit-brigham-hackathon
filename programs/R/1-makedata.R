source("header.R")

## ============================================================================
## READ IN INPUTS
## ============================================================================
mrn <- read.csv("../../data/input/pats.csv", stringsAsFactors=FALSE,
                header=FALSE)[,1] 
fhir <- read.csv("../../data/fhir_out.csv", stringsAsFactors=FALSE,
                 row.names=1) %>% tbl_df()

## fix up some data :) we wanted more "sinusitis"
fhir$diagnosis <- ifelse(fhir$diagnosis=="Hypertension", "Sinusitis",
                         fhir$diagnosis)
fhir$diagnosis <- ifelse(fhir$diagnosis=="Breast cancer", "Sinusitis",
                         fhir$diagnosis)
fhir$diagnosis <- ifelse(fhir$diagnosis=="Cirrhosis", "Sinusitis",
                         fhir$diagnosis)


## ============================================================================
## DEFINE PARAMETERS for simulation
## ============================================================================
nn <- length(mrn)                       # number of observations
abx.prop <- 0.7                         # proportion that got ABX
age.range <- 18:40                      # patient ages



## ============================================================================
## SIMULATE data
## ============================================================================
abx <- rbinom(n=nn, size=1, prob=abx.prop)
age <- sample(age.range, nn, replace = TRUE)
provider <- runif(nn, 1, 10) %>% floor()

## combine into a dataset
dset <- data.frame(patid=mrn, age, abx, provider, stringsAsFactors=FALSE) %>%
    tbl_df()



## ============================================================================
## MERGE and OUTPUT
## ============================================================================
final <- inner_join(fhir, dset, by="patid")


saveRDS(final,"../../data/final.rds")
write.csv(final, file="../../data/final.csv")


