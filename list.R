abc <- list(3.2, 'Fahim', TRUE)
abc

# naming the list
abc <- list(gpa = 3.2, name = "Fahim", pass = TRUE)
abc

# accessing elements in a list
# using [[]] by position
abc[[2]]
abc[[1]]
# using $ by name
abc$gpa
abc$name

# nested list
nested <- list(name = "bob",
               age = 22,
               result = list(math = 95, biology = 87))
nested
nested$result$biology
nested$age

# adding element to a list
nested$hobby <- "photography"
nested

# removing an element
nested$age <- NULL
nested

# combining list
list1 <- list(a = 5, b = 10)
list2 <- list(c = 'xyz', d = 'wut')
combine <- c(list1, list2)
combine
typeof(combine)
str(combine)

# converting a list to a vector (if all elements arre of same type)
x <- list(2, 3, 5, 7)
vector <- unlist(list(x))
vector

# list of multiple data type
mixed_list <- list(
    number = c(2, 3, 4),
    names = c('tamim', 'ahmed', 'fahim'),
    logical = c(TRUE, FALSE)
)
mixed_list

cell_counts <- c(50, 120, 80, 95, 110)
gene_expression <- matrix(c(
    2.5,
    3.1,
    2.8,
    3.0,
    3.3,
    1.2,
    1.8,
    1.5,
    1.6,
    1.9,
    2.0,
    2.2,
    2.4,
    2.1,
    2.6
),
ncol = 5)

patients <- data.frame(
    patient_id = c("p1", "p2", "p3", "p4", "p5"),
    age = c(45, 38, 50, 29, 34),
    sample_type = c('blood', 'tissue', 'blood', 'tissue', 'blood')
)

boilogy_list <- list(cell_counts, gene_expression, patients)
boilogy_list

boilogy_list <- list(cell = cell_counts,
                     gene = gene_expression,
                     persons = patients)
boilogy_list
