Name <- "Alex"
Intro <- "There are"
End <- "days left in the semester."
days <- as.integer(as.Date("2021-05-17")-Sys.Date())
days
"Alex" %in% Name
any("Alex"==Name)
is.element("Alex", Name)
cat(Name,Intro,days,End)




