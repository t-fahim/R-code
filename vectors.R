# variables in R (snake_case)

body_temp <- 37
class_room <- 25
class_room
print(class_room)

# basic data types

growth_rate <- 1.6 #numeric
class(growth_rate)

total_cells <- 20000L #integer(L in last)
class(total_cells)

test_positive <- TRUE # logical value
class(test_positive)

species_name = "Arabidipsis thaliana" # character
class(species_name)
print(species_name)

# vectors in R

gene_exp <- c(5.2, 7.8, 9.0, 4.5)
print(gene_exp)
class(gene_exp)

gene_exp / 2

sum(gene_exp)

mean(gene_exp)

median(gene_exp)

gene_exp < 6
gene_exp == 5.2

gene_exp == 4 & gene_exp == 3 # AND operation

gene_exp == 4 | gene_exp == 3 # OR operation

# division by 0
1 / 0 #Inf

# square root of negative numbers
sqrt(-1) #NaNs produced

# effect on vector operations
sum(c(2.5, 3.3, 2))
sum(c(2.5, 3.2, 2, 1 / 0)) # Inf
sum(c(2.5, 3.2, 2, sqrt(-1))) # NaNs produced
sum(c(2.5, 3.2, NA)) # NA
sum(c(2.3, 3.4, 4.4, 8.3, NA, 4.5), na.rm = TRUE)

gpa <- c(3.4, 4.0, 2.9, 3.3, 3.5)
length(gpa)
sort(gpa)
sort(gpa, decreasing = TRUE)

names(gpa) <- c("Tamim", "Ahmed", "Fahim", "Anis", "Sharif")
names(gpa)
gpa["Fahim"]
gpa[2]
gpa[1:4]
which(gpa > 3)
gpa > 3
ls() # show all variables
rm(gpa) # remove variable
ls()