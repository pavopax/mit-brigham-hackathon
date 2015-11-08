source("header.R")

mrn <- read.csv("../../data/input/pats.csv", stringsAsFactors=FALSE, header=FALSE)[,1]
nn <- length(mrn)



mydata <- data.frame()

for(i in 1:20){
    cat(i," ")
    pp <- mrn[i]
    row <- get_patient(pp)
    mydata <- bind_rows(mydata,row)
}

pp <- mrn[1]
test_patient(pp)


get_patient(pp)


