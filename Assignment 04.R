library(tidyverse)

survey <- read.csv("city-of-st-louis-survey.csv")
decode <- read.csv("city-of-st-louis-decode.csv")

survey <- merge(survey,decode,by.x="Owner",by.y="Original.Name")

survey <-select(survey,Standardized.Names,Land.Area)

survey$first <-substr(survey$Standardized.Names,1,1)
survey$first

survey_A <-survey[which(survey$first=="A"),]

results <- survey_A %>% group_by(Standardized.Names) %>%
  summarize(Land.Area=sum(Land.Area))

top10 <- results %>% arrange(desc(Land.Area))
view(top10)
head(top10,10)

