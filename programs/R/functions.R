## DOCUMENT THESE WITH TAGS


## tags: download curl one patient
## output: one record, a few vars
fix_null <- function(var){
    ifelse(is.null(var), "", var)
}

get_patient <- function(patid){
    url <- paste0("https://open-ic.epic.com/FHIR/api/FHIR/DSTU2/Condition?patient=", patid,
                  "&category=diagnosis")
    xmlf <- getURL(url) %>% xmlParse()
    listf <- xmlToList(xmlf)

    name <- listf$entry$resource$Condition$patient$display[[1]] %>% fix_null()
    diagnosis <- listf$entry$resource$Condition$code$coding$display[[1]] %>% fix_null()
    date <- listf$entry$resource$Condition$onsetDateTime[[1]] %>% fix_null()
    physician <- listf$entry$resource$Condition$asserter$display[[1]] %>% fix_null()
    code1 <- listf$entry$resource$Condition$code$coding$code[[1]] %>% fix_null()
    code2 <- listf$entry$resource$Condition$code[[3]]$code[[1]] %>% fix_null()

    patient <- data.frame(patid, name,
                          diagnosis=diagnosis,
                          date,
                          physician,
                          code1, code2,
                          stringsAsFactors=FALSE) 
    patient
}


test_patient <- function(patid){
    url <- paste0("https://open-ic.epic.com/FHIR/api/FHIR/DSTU2/Condition?patient=", patid,
                  "&category=diagnosis")
    xmlf <- getURL(url) %>% xmlParse()
    listf <- xmlToList(xmlf)

    print(name <- listf$entry$resource$Condition$patient$display[[1]])
    print(diagnosis <- listf$entry$resource$Condition$code$coding$display[[1]])
    print(date <- listf$entry$resource$Condition$onsetDateTime[[1]])
    print(physician <- listf$entry$resource$Condition$asserter$display[[1]])
    print(code1 <- listf$entry$resource$Condition$code$coding$code[[1]])
    print(code2 <- listf$entry$resource$Condition$code[[3]]$code[[1]])

}
