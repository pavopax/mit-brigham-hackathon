source("header.R")

## download a sample file (xml) and convert to JSON via list
xmlf <- getURL("https://open-ic.epic.com/FHIR/api/FHIR/DSTU2/Patient/Tbt3KuCY0B5PSrJvCu2j-PlK.aiHsu2xUjUM8bWpetXoB") %>% xmlParse()

listf <- xmlToList(xmlf)

jsonf <- toJSON(listf)


write(jsonf, "../../data/json1.json")

json1 <- jsonlite::fromJSON(txt="../../data/json1.json")
json2 <- RJSONIO::fromJSON(content="../../data/json1.json")
