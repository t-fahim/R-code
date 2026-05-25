# load library
library(dplyr)
getwd()
setwd("./learn_r")
getwd()

# load the data set
qpcr <- read.csv("./qpcr.csv")
str(qpcr)

# basic scatter plot
plot(
    qpcr$GeneA,
    qpcr$GeneB,
    xlab = "GeneA",
    ylab = "GeneB",
    main = "scatter plot ov GeneA vs GeneB",
    col = "red",
    pch = 10
)

# histogram for Gene A
hist(
    qpcr$GeneA,
    xlab = "Gene A",
    main = "histogram of gene A",
    col = "yellow",
    breaks = 10
)

# Box plot for Gene A by condition
boxplot(
    qpcr$GeneC ~ qpcr$Condition,
    xlab = "condition",
    ylab = "Gene C",
    main = "Box plot of gene c by condition",
    col = c("lightblue", "pink")
)

## additional visualization
# scatter plot with custom colors and regration line
plot(
    qpcr$GeneA,
    qpcr$GeneB,
    xlab = "Gene A",
    ylab = "Gene B",
    main = "scatter plot of Gene A vs Gene B",
    col = "green4",
    pch = 16
)

abline(lm(qpcr$GeneB ~ qpcr$GeneA),
       col = "red",
       lwd = 2)

legend("topright",
       legend = "Regration line",
       col = "red",
       lwd = 2)

# density plot of Gene A
plot(
    density(qpcr$GeneA),
    xlab = "Gene A",
    main = "Density plot of gene A",
    col = "purple",
    lwd = 2
)
rug(qpcr$GeneA, col = "black")

# pairwise scatter plots
pairs(qpcr[, c("GeneA", "GeneB", "GeneC")], 
      main = "pairwise scatter plots", 
      col = "darkorange"
)

# box plot for multiple genes
boxplot(
    qpcr[, c("GeneA", "GeneB", "GeneC")],
    names = c("Gene A", "Gene B", "Gene C"),
    col = c("cyan", "lightgreen", "yellow"),
    main = "Boxplot for Gene A, Gene B & Gene C",
    ylab = "Expression Level"
)

# bat plot of condition frequencies
barplot(
    table(qpcr$Condition),
    col = rainbow(3),
    xlab = "Condition",
    ylab = "Frequency",
    main = "Bar plot of Conditions"
)

# heatmap of Expression data
heatmap(
    as.matrix(qpcr[, c("GeneA", "GeneB", "GeneC")]),
    col = heat.colors(256),
    scale = "row",
    main = "Heatmap of Gene Expressions"
)

# boxplot with Notch
boxplot(
    qpcr$GeneB ~ qpcr$Condition,
    notch = TRUE,
    col = c("lightblue", "pink"),
    xlab = "Condition",
    ylab = "Gene B Expression",
    main = "Notched Boxplot of Gene B by Condition"
)
