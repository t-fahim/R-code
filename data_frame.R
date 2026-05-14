# step-1: creating some vectors
names <- c('Tamim', 'Ahmed', 'Fahim')
fruits <- c('mango', 'banana', 'apple')
color <- c('red', 'yellow', 'red')
sweet <- c(TRUE, TRUE, TRUE)

choices <- data.frame(names, fruits, color, sweet)
choices

choices[1, 'fruits']
choices[choices$names == 'Fahim', ]

# add a new column for fruit price
prices <- c(15, 10, 30)
choices$prices <- prices
choices

# filter data
# let's find all the fruits that are sweet
sweet_fruits <- subset(choices, sweet == TRUE)
sweet_fruits

# sort by fruits prices
sort_price <- choices[order(choices$prices), ]
sort_price

student_date <- data.frame(
    name = c('Anis', 'Nur', 'Atik'),
    grade = c(85, 90, 78),
    passed = c(TRUE, TRUE, TRUE)
)

student_date

# properties of data frame
nrow(student_date)
ncol(student_date)
dim(student_date)
rownames(student_date)
colnames(student_date)

class(student_date)
typeof(student_date)

head(student_date)
tail(student_date)
summary(student_date)
str(student_date)


# assigning row names
student_date_rowname <- data.frame(
    row.names = c('Anis', 'Nur', 'Atik'),
    grade = c(85, 90, 78),
    passed = c(TRUE, TRUE, TRUE)
)
student_date_rowname
student_date_rowname["Nur", ]
student_date_rowname[, 'grade']

# modifying a value
student_date_rowname['Nur', 'grade'] <- 95
student_date_rowname

# adding a new student
fahim_data <- data.frame(
    name = c('Fahim'),
    grade = c(88),
    passed = c(TRUE)
)

student_date <- rbind(student_date, fahim_data)
student_date
dim(student_date)


# adding a new column (age)
ages <- c(20, 21, 22, 19)
student_date <- cbind(student_date, age = ages)
student_date


# removing row & columns
# removing third row
student_date <- student_date[-3, ]
student_date

# removing third column
student_date <- student_date[, -2]
student_date

student_date[, 'passed'] <- NULL
student_date
