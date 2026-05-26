library(readxl)
library(ggplot2)
getwd()
setwd("./learn_r")

# 1. descriptive analysis with graph
x <- read_excel("./Biostatistical_Analysis_Tests.xlsx", 
                sheet = "Descriptive-Statistics",
                range = "A1:F26")

summary(x)
sd(x$`Height (m)`)
sd(x$`Weight (kg)`)
ggplot(x,aes(x = `Age (Years)`,y=`Weight (kg)`)) +
    geom_point() +
    geom_smooth(method = 'lm') +
    ggtitle("Scatter plot : Age vs Weight")

# 2. T-test with box plot
x <- read_excel("./Biostatistical_Analysis_Tests.xlsx", 
                sheet = "t-Test",
                range = "A1:B7")
t.test(Weight ~ Group, data = x)
ggplot(x,aes(x = Group, y= Weight, fill = Group)) +
    geom_boxplot() +
    ggtitle("Boxplot of weight by Group")

# 3. one-way ANOVA with post HOC test and graph
x <- read_excel("./Biostatistical_Analysis_Tests.xlsx", 
                sheet = "One-Way-ANOVA",
                range = "A1:C7")
anova <- aov(Score ~ Treatment, data = x)
summary(anova)
TukeyHSD(anova)

ggplot(x, aes(x = Treatment, y = Score, fill = Treatment)) +
    geom_bar(stat = "identity") +
    ggtitle("One-way ANOVA : Treatment Vs. Score")

# 4. two-way ANOVA with Interaction plot
x <- read_excel("./Biostatistical_Analysis_Tests.xlsx", 
                sheet = "Two-Way-ANOVA",
                range = "A1:D7")
anova2way <- aov(Score ~ Diet * Exercise, data = x)
summary(anova2way)
TukeyHSD(anova2way)

interaction.plot(x$Diet, x$Exercise, x$Score)

# 5. chi-square test with Mosaic plot
x <- read_excel("./Biostatistical_Analysis_Tests.xlsx", 
                sheet = "Chi-Square-Test",
                range = "A1:C5")
chisq.test(as.matrix(x[,2:3]))
mosaicplot(table(x$Gender, x$Preference_A),
           main = "Mosaic Plot: Gender vs Preference")

# 6. Linear Regression with Prediction Graph
x <- read_excel("./Biostatistical_Analysis_Tests.xlsx", 
                sheet = "Correlation-Regression",
                range = "A1:C7")
model <- lm(Weight ~ Height, data = x)
summary(model)

ggplot(x,aes(x = Height, y= Weight)) +
    geom_point() +
    geom_line(aes(y = Predicted_weight, colour = 'blue')) +
    ggtitle("linear Regression: Height vs Weight")
