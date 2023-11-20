install.packages("remotes")
remotes::install_github("danioreo/fastman")
library(fastman)
library(data.table)
setwd("path to data")
data10 <- fread("aahd.txt")
##black & white manhattan plot##
fastman(data10, chr="CHR", ps = "BP", p="P")
## colored manhattan plot ###
fastman(data10, chr="CHR", ps = "BP", p="P", color = c("coral", "Orchid", "Turquoise","tomato"))
## QQ plot ---give the summary of the data 
par(pty="s")
fastqq(data10)
                                                       
