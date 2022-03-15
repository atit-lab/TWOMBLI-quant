# @author Sakin Kirti, Rachel Wyetzner
# @date 3/15/22

# PCA Analysis for ATGL mutants

# Import the libraries
library(PerformanceAnalytics)
library(devtools)
library(ggbiplot)

# Importing the data
filename <- "/Users/studentaccount/Documents/Sakin_exp/RGB Trichrome/RGB_all (2)/TWOMBLI_Results_img.csv"
rgb <- read.csv(file=filename, header=TRUE, sep=",")

# Covariance and multicolinearity
rel_vars <- rgb[, c(2:8,19,20,22)]
chart.Correlation(rel_vars, histogram=TRUE, method="pearson")

# PCA with all variables
rgb.pca <- prcomp( rgb[ ,c(2:8,19,20,22) ], center=TRUE, scale.=TRUE )
summary(rgb.pca)

ggbiplot(rgb.pca, ellipse=TRUE, groups=sort(rgb$Treatment), var.axes=FALSE, labels=rgb_resc$Image) + theme_bw()

#---------- filtering features ----------#

