source("header.R")

## download a sample file (xml) and convert to JSON via list
xmlf <- getURL("https://open-ic.epic.com/FHIR/api/FHIR/DSTU2/Patient/Tbt3KuCY0B5PSrJvCu2j-PlK.aiHsu2xUjUM8bWpetXoB") %>% Xmlparse()

listf <- xmlToList(xmlf)

jsonf <- toJSON(listf)


write(jsonf, "../../data/json1.json")

json1 <- jsonlite::fromJSON(txt="../../data/json1.json")
json2 <- RJSONIO::fromJSON(content="../../data/json1.json")






## patient-level
patid <- dset$mrn[5]
url <- paste0("https://open-ic.epic.com/FHIR/api/FHIR/DSTU2/Patient/", patid)
xmlf <- getURL(url) %>% xmlParse()
(listf <- xmlToList(xmlf))




## download condition
pp <- dset$mrn[22]

get_patient <- function(patid){
    url <- paste0("https://open-ic.epic.com/FHIR/api/FHIR/DSTU2/Condition?patient=", patid,
                  "&category=diagnosis")
    xmlf <- getURL(url) %>% xmlParse()
    listf <- xmlToList(xmlf)

    name <- listf$entry$resource$Condition$patient$display[[1]]
    diagnosis <- listf$entry$resource$Condition$code$coding$display[[1]]
    date <- listf$entry$resource$Condition$onsetDateTime[[1]]
    physician <- listf$entry$resource$Condition$asserter$display[[1]]
    code1 <- listf$entry$resource$Condition$code$coding$code[[1]]
    code2 <- listf$entry$resource$Condition$code[[3]]$code[[1]]

    patient <- data.frame(name, diagnosis=factor(diagnosis), date,
                          physician=factor(physician), code1, code2,
                          stringsAsFactors=FALSE)
    patient
}

get_patient(pp)
