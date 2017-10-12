library(readxl)

#application_raw <- read_excel("DS502/Final Project/Stoplight/1.application.xls")
start_raw <- read_excel("DS502/Final Project/Stoplight/2.start.xls")
follow_up_raw <- read_excel("DS502/Final Project/Stoplight/3.follow-up.xls")

# table(application$anon_id)
# table(start$anon_id)
# table(follow_up$anon_id)

# length(unique(application$anon_id))
# length(unique(start$anon_id))
# length(unique(follow_up$anon_id))

# length(setdiff(unique(application$anon_id), unique(start$anon_id)))
# length(setdiff(unique(application$anon_id), unique(follow_up$anon_id)))
# length(setdiff(unique(start$anon_id), unique(follow_up$anon_id)))

overlappingIDs <- na.omit(intersect(unique(start_raw$anon_id), unique(follow_up_raw$anon_id)))
start <- start_raw[start_raw$anon_id %in% overlappingIDs,]
follow_up <- follow_up_raw[follow_up_raw$anon_id %in% overlappingIDs,]

write.csv(start, file = "start.csv")
write.csv(follow_up, file = "follow_up.csv")
