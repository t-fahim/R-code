# factors in R

gpa <- c('low', 'medium', 'medium', 'medium', 'high')

factor_gpa <- factor(gpa)
factor_gpa

# there are two types of categorical variable
#     1) nominal categorical variable -- without order
#     2) ordinal categorical variable -- with order

#------- nominal categorical variable -------
animals <- c('cat', 'dog', 'donkey', 'horse')
f_animals <- factor(animals)
f_animals

#------- ordinal categorical variable -------
temp <- c('high', 'low', 'high', 'low', 'medium')
# ordered = TRUE --> low to high
f_temp <- factor(temp,
                 ordered = TRUE,
                 levels = c('low', 'medium', 'high'))
f_temp

#-----------------------------------------------------------------

# build survey
gender <- c('M', 'F', 'F', 'M', 'M')
f_gender <- factor(gender)

# specify the levels
levels(f_gender) <- c("Female", "Male")
f_gender

summary(gender)
summary(f_gender)

# In R, indexing is 1-based
male <- f_gender[1]
female <- f_gender[2]
male
female
male > female

# ordered factors
speed <- c('medium', 'slow', 'slow', 'medium', 'fast')
levels <- c('slow', 'medium', 'fast')
f_speed <- factor(speed, ordered = TRUE, levels = levels)
speed
f_speed
summary(speed)
summary(f_speed)
person2 <- f_speed[2]
person5 <- f_speed[5]

person2 < person5
person2 > person5
