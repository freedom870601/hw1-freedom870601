args <- commandArgs(trailingOnly = TRUE)
if(length(args) == 0)
{
  stop("USAGE: Rscript hw1_exam.R input", call.=FALSE)
}
if(args[1] %in% "--output"){
  temp <- args[1]
  args[1] <- args[3]
  args[3] <- temp
  temp <- args[2]
  args[2] <- args[4]
  args[4] <- temp
}
inputname <- strsplit(basename(args[2]), split = ".", fixed = TRUE)[[1]][1]
Data <- read.table(args[2], header = T, sep = ",")
maximum_value <- data.frame(
    set = c(inputname),
    weight = c(round(max(Data$weight), digit = 2)),
    height = c(round(max(Data$height), digit = 2))
  )
write.table(maximum_value, file = args[4], row.names = FALSE, sep = ",")





