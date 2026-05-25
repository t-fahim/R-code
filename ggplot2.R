library(ggplot2)
getwd()
setwd('./learn_r')
qpcr <- read.csv('./qpcr.csv')
str(qpcr)

# scatter plot
ggplot(qpcr, aes(x = GeneA, y = GeneB)) + geom_point(color = "blue", size = 2) + labs(title = "Scatter Plot of Gene A vs Gene B", x = "Gene A", y = "Gene B") + theme_replace()

# histogram
ggplot(qpcr, aes(x = GeneA)) + geom_histogram(binwidth = .5,
                                              fill = 'blue',
                                              color = 'black') +
    labs(tltle = "Histogram  of Gene A", x = "Gene A", y = "Freduency") +
    theme_minimal()

# box plot
ggplot(qpcr, aes(x = Condition, y = GeneA, fill = Condition)) +
    geom_boxplot() +
    labs(title = "Boxplot of GeneA by Condition", x = "Condition", y = "Gene A") + theme_minimal()

# line plot for geneA over Time
ggplot(qpcr, aes(x = Time, y = GeneA)) +
    geom_line(color = "blue", size = 1) +
    geom_point(color = "red", size = 2) +
    labs(title = "Line Plot of Gene A over Time", x = "Time(minutes)", y =
             "Gene A Expression") + theme_minimal()

# density plot
ggplot(qpcr, aes(x = GeneA)) +
    geom_density(fill = "purple", alpha = .5) +
    labs(title = "Density plot of Gene A", x = "Gene A", y = "Density") +
    theme_minimal()

# bar plot
ggplot(qpcr, aes(x = Condition)) +
    geom_bar(fill = 'orange', color = 'black') +
    labs(title = "Bar plot of Condition Frequencies", x = 'Condition', y = 'Frequency') + theme_minimal()
