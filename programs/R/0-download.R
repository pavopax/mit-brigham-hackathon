source("header.R")

mrn <- read.csv("../../data/input/pats.csv", stringsAsFactors=FALSE, header=FALSE)[,1]
nn <- length(mrn)

cat("THIS PROGRAM WILL DOWNLOAD DATA AND CREATE AN OUTPUT DATASET.\n\n")
cat("Downloading data for ", nn, "patids...\n")

mydata <- data.frame()

for(i in 1:nn){
    cat(i," ")
    pp <- mrn[i]
    row <- get_patient(pp)
    mydata <- bind_rows(mydata,row)
}


cat("Writing output...\n")

write.csv(mydata, file="../../data/fhir_out.csv")

cat("DONE\n")


