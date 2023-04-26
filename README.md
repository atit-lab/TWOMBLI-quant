# TWOMBLI-PCA
Sakin Kirti 9/20/2021

Developed for and used in: Jussila AR, Zhang B, Caves E, Kirti S, Steele M, Hamburg-Shields E, Lydon J, Ying Y, Lafyatis R, Rajagopalan S, Horsley V, Atit RP. Skin Fibrosis and Recovery Is Dependent on Wnt Activation via DPP4. J Invest Dermatol. 2022 Jun;142(6):1597-1606.e9. doi: 10.1016/j.jid.2021.10.025. Epub 2021 Nov 20. PMID: 34808238; PMCID: PMC9120259.

code for...
- TWOMBLI preprocessing steps (converting RGB trichrome images for use in TWOMBLI)
- PCA analysis of TWOMBLI outputs in R

## TWOMBLI Preprocessing
This is a short script for the preprocessing of RGB-Trichrome images. This should be used with 40x images to create deconvoluted images to use in the TWOMBLI script

This Macro should be used when you have 40x images of RGB trichrome stained skin and want to put them through TWOMBLI for collagen matrix quantification

This macro performs 3 functions:
- crops to a 470x470 px frame + saves these images
- deconvolutes image
- saves red channel which is used in TWOMBLI

## TWOMBLI PCA
R markdown file containing code for dimensionality reduction (PCA) for TWOMBLI outputs
