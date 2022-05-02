# TWOMBLI-preprocessing
Sakin Kirti 9/20/2021
pipeline for twombli preprocessing

This is a short script for the preprocessing of RGB-Trichrome images. This should be used with 40x images to create deconvoluted images to use in the TWOMBLI script

This Macro should be used when you have 40x images of RGB trichrome stained
skin and want to put them through TWOMBLI for collagen matrix quantification

This macro performs 3 functions:  
1. crops to a 470x470 px frame + saves these images  
2. deconvolutes image
3. saves red channel which is used in TWOMBLI

# Proteoglycan-processing
Rachel Wyetzner and Sakin Kirti, 10/13/2021
Proteoglycan Quantification for the Atit Lab 

This macro should be used when you have pre-cropped images that exclude hair follicles of RGB Trichrome
stained skin and want to put them through ImajeJ for quantification of proteoglycan area and ECM area.

This macro can be used with 10x images only. If trying to run other magnification images through, 
you must change the scale value located in the for loop

This macro performs 2 functions
1. thresholds area of the ECM
2. exports results as a csv. file
