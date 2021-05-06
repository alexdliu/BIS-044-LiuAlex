Scorecard <- read.csv("most-recent-cohorts-all-data-elements-1.csv")

if (!require("ggplot2")) install.packages("ggplot2")
library(ggplot2)

Highest_Degree <- data.frame(Scorecard$STABBR, Scorecard$HIGHDEG)

ggplot(data=Highest_Degree) + 
  geom_histogram(binwidth=1, aes(x=Scorecard$HIGHDEG)) + 
  ggtitle("Highest Degree by State") + 
  xlab("Degree") + 
  ylab("Frequency") +
  theme_minimal() +
  xlim(0,5) +
  facet_wrap(~Scorecard$STABBR)
