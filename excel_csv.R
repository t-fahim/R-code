## working with CSV file

# setwd to set a working directory
getwd()

setwd("/mnt/linux-hdd/R_code/learn_r")
sample1 <- read.csv("./adult-human-skeleton.csv")
str(sample1)

# using absolute path

path = "/mnt/linux-hdd/R_code/learn_r/bird-neck-bones.csv"
sample2 <- read.csv(path)
str(sample2)

## working with EXCEL sheets
library(readxl)

sample3 <- read_excel("./mammal-neck-bones.xlsx")
str(sample3)
