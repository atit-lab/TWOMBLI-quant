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
