args <- commandArgs(trailingOnly = TRUE)
uce <- read.table(paste("/Users/David/Grive/Alfaro_Lab/Pelagia/95_percent_complete/", args,
                        sep = ""), stringsAsFactors = FALSE)

halfnrow <- c(seq(1, nrow(uce)/2))
howmany <- ceiling((nchar(uce[2,]))/150) # Choice of row arbitrary; all have the same length
locusname <- strsplit(as.character(args), ".", fixed = TRUE)[[1]][1]

for (i in 1:howmany) {
  a <- matrix(ncol = 1, nrow = nrow(uce), NA)
  a[2*halfnrow - 1,] <- uce[2*halfnrow - 1,]
  aftersplit <- strsplit(uce[2*halfnrow,], "(?<=.{150})", perl = TRUE)
  a[2*halfnrow,] <- lapply(aftersplit, `[[`, i)
  write.table(a, paste("/Users/David/Grive/Alfaro_Lab/Pelagia/Chunks/", locusname, "-chunk-", i, sep = ""),
              row.names = FALSE, col.names = FALSE, quote = FALSE, sep = "\n")
}
