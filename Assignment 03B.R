results <- read.csv("PRESIDENT_precinct_primary.csv")
bvotes <- 0
tvotes <- 0
other <- 0
end <- length(results$date)
for (i in 1:end){
if (results$candidate[i] == "JOSEPH R BIDEN") {
  bvotes <-bvotes+results$votes[i]
}
else if (results$candidate[i] == "DONALD J TRUMP"){
  tvotes <-tvotes+results$votes[i]
}
else {
  other <-other+results$votes[i]
}
}

cat("Biden Votes are", bvotes)
cat("Trump Votes are", tvotes)