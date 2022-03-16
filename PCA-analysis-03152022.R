# @author Sakin Kirti, Rachel Wyetzner
# @date 3/15/22

# PCA Analysis for ATGL mutants

# Import the libraries
library(PerformanceAnalytics)
library(devtools)
library(ggbiplot)

# Importing the data
filename <- "/Users/sakinkirti/Downloads/PCA 3-15-22.csv" # nolint
rgb <- read.csv(file = filename, header = TRUE, sep = ",")

# Covariance and multicolinearity
rel_vars <- rgb[, c(2:8, 15, 16)]
chart.Correlation(rel_vars, histogram = TRUE, method = "pearson")

# PCA with all variables
rgb_pca <- prcomp(rgb[, c(2:8, 15, 16)], center = TRUE, scale. = TRUE)
summary(rgb_pca)

ggbiplot(rgb_pca, ellipse = TRUE, groups = sort(rgb$Treatment), var.axes = TRUE) + theme_bw() # nolint

#---------- filtering features ----------#
