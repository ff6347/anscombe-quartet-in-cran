# anscombe
# Anscombe's quartet comprises four datasets that have nearly identical simple statistical properties, yet appear very different when graphed. Each dataset consists of eleven (x,y) points. They were constructed in 1973 by the statistician Francis Anscombe to demonstrate both the importance of graphing data before analyzing it and the effect of outliers on statistical properties.[1]
#
install.packages("xtable");
install.packages("ascii");
install.packages("ggplot2");
install.packages("pander");
library(xtable)
library(ascii)
library(pander)
library("ggplot2")
setwd("/Users/icke/Documents/anscombe-quartet-in-cran")
ascii(anscombe)
# |=============================================================================
# 1.1+| h| x1    h| x2    h| x3    h| x4    h| y1    h| y2   h| y3    h| y4
# | 1  | 10.00 | 10.00 | 10.00 | 8.00  | 8.04  | 9.14 | 7.46  | 6.58
# | 2  | 8.00  | 8.00  | 8.00  | 8.00  | 6.95  | 8.14 | 6.77  | 5.76
# | 3  | 13.00 | 13.00 | 13.00 | 8.00  | 7.58  | 8.74 | 12.74 | 7.71
# | 4  | 9.00  | 9.00  | 9.00  | 8.00  | 8.81  | 8.77 | 7.11  | 8.84
# | 5  | 11.00 | 11.00 | 11.00 | 8.00  | 8.33  | 9.26 | 7.81  | 8.47
# | 6  | 14.00 | 14.00 | 14.00 | 8.00  | 9.96  | 8.10 | 8.84  | 7.04
# | 7  | 6.00  | 6.00  | 6.00  | 8.00  | 7.24  | 6.13 | 6.08  | 5.25
# | 8  | 4.00  | 4.00  | 4.00  | 19.00 | 4.26  | 3.10 | 5.39  | 12.50
# | 9  | 12.00 | 12.00 | 12.00 | 8.00  | 10.84 | 9.13 | 8.15  | 5.56
# | 10 | 7.00  | 7.00  | 7.00  | 8.00  | 4.82  | 7.26 | 6.42  | 7.91
# | 11 | 5.00  | 5.00  | 5.00  | 8.00  | 5.68  | 4.74 | 5.73  | 6.89
# |=============================================================================
ansombe.table <- xtable(anscombe)
print(ansombe.table,file="anscombe-table.tex")
# \begin{table}[ht]
# \centering
# \begin{tabular}{rrrrrrrrr}
#   \hline
#  & x1 & x2 & x3 & x4 & y1 & y2 & y3 & y4 \\
#   \hline
# 1 & 10.00 & 10.00 & 10.00 & 8.00 & 8.04 & 9.14 & 7.46 & 6.58 \\
#   2 & 8.00 & 8.00 & 8.00 & 8.00 & 6.95 & 8.14 & 6.77 & 5.76 \\
#   3 & 13.00 & 13.00 & 13.00 & 8.00 & 7.58 & 8.74 & 12.74 & 7.71 \\
#   4 & 9.00 & 9.00 & 9.00 & 8.00 & 8.81 & 8.77 & 7.11 & 8.84 \\
#   5 & 11.00 & 11.00 & 11.00 & 8.00 & 8.33 & 9.26 & 7.81 & 8.47 \\
#   6 & 14.00 & 14.00 & 14.00 & 8.00 & 9.96 & 8.10 & 8.84 & 7.04 \\
#   7 & 6.00 & 6.00 & 6.00 & 8.00 & 7.24 & 6.13 & 6.08 & 5.25 \\
#   8 & 4.00 & 4.00 & 4.00 & 19.00 & 4.26 & 3.10 & 5.39 & 12.50 \\
#   9 & 12.00 & 12.00 & 12.00 & 8.00 & 10.84 & 9.13 & 8.15 & 5.56 \\
#   10 & 7.00 & 7.00 & 7.00 & 8.00 & 4.82 & 7.26 & 6.42 & 7.91 \\
#   11 & 5.00 & 5.00 & 5.00 & 8.00 & 5.68 & 4.74 & 5.73 & 6.89 \\
#    \hline
# \end{tabular}
# \end{table}

pander(anscombe, style="grid")
# +------+------+------+------+-------+------+-------+------+
# |  x1  |  x2  |  x3  |  x4  |  y1   |  y2  |  y3   |  y4  |
# +======+======+======+======+=======+======+=======+======+
# |  10  |  10  |  10  |  8   | 8.04  | 9.14 | 7.46  | 6.58 |
# +------+------+------+------+-------+------+-------+------+
# |  8   |  8   |  8   |  8   | 6.95  | 8.14 | 6.77  | 5.76 |
# +------+------+------+------+-------+------+-------+------+
# |  13  |  13  |  13  |  8   | 7.58  | 8.74 | 12.74 | 7.71 |
# +------+------+------+------+-------+------+-------+------+
# |  9   |  9   |  9   |  8   | 8.81  | 8.77 | 7.11  | 8.84 |
# +------+------+------+------+-------+------+-------+------+
# |  11  |  11  |  11  |  8   | 8.33  | 9.26 | 7.81  | 8.47 |
# +------+------+------+------+-------+------+-------+------+
# |  14  |  14  |  14  |  8   | 9.96  | 8.1  | 8.84  | 7.04 |
# +------+------+------+------+-------+------+-------+------+
# |  6   |  6   |  6   |  8   | 7.24  | 6.13 | 6.08  | 5.25 |
# +------+------+------+------+-------+------+-------+------+
# |  4   |  4   |  4   |  19  | 4.26  | 3.1  | 5.39  | 12.5 |
# +------+------+------+------+-------+------+-------+------+
# |  12  |  12  |  12  |  8   | 10.84 | 9.13 | 8.15  | 5.56 |
# +------+------+------+------+-------+------+-------+------+
# |  7   |  7   |  7   |  8   | 4.82  | 7.26 | 6.42  | 7.91 |
# +------+------+------+------+-------+------+-------+------+
# |  5   |  5   |  5   |  8   | 5.68  | 4.74 | 5.73  | 6.89 |
# +------+------+------+------+-------+------+-------+------+
#
# taken from here
# http://complementarytraining.net/stats-playbook-what-is-anscombes-quartet-and-why-is-it-important/

# Create the interactive table
anscombe.1 <- data.frame(x = anscombe[["x1"]], y = anscombe[["y1"]], Set = "Anscombe Set 1")
anscombe.2 <- data.frame(x = anscombe[["x2"]], y = anscombe[["y2"]], Set = "Anscombe Set 2")
anscombe.3 <- data.frame(x = anscombe[["x3"]], y = anscombe[["y3"]], Set = "Anscombe Set 3")
anscombe.4 <- data.frame(x = anscombe[["x4"]], y = anscombe[["y4"]], Set = "Anscombe Set 4")

anscombe.data <- rbind(anscombe.1, anscombe.2, anscombe.3, anscombe.4)
png(filename="output.png",width=2000,height=2000)

theme_set(theme_bw(base_size=42, base_family="CamingoCode"))
# Scatter plot
gg <- ggplot(anscombe.data, aes(x = x, y = y))
gg <- gg + geom_smooth(lty= "dotted",size=1,color = "#ff908d",formula = y ~ x, method = "lm", se = FALSE, data = anscombe.data)
gg <- gg + geom_point(color = "black", size=13,shape = 21,fill="grey")
gg <- gg + facet_wrap(~Set, ncol = 2)
gg

# boxplot
summary(anscombe.data)
bp <-  ggplot(anscombe.data, aes(x = x, y = y))
bp <- bp + geom_boxplot( formula = y ~ x , method = "lm", se= FALSE)
bp <- bp + facet_grid(~Set)
bp
dev.off()