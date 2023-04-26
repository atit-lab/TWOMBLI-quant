// Sakin Kirti 9/1/2021
// TWOMBLI Pre-processing for Atit Lab

// This Macro should be used when you have 40x images of RGB trichrome stained
// skin and want to put them through TWOMBLI for collagen matrix quantification

// This macro performs 3 functions:
//	  1. crops to a 470x470 px frame + saves these images
//	  2. deconvolutes image
//    3. saves red channel which is used in TWOMBLI

// ----------

// first get the input and output directories from the user
print("Choose the directory that contains 40x RGB Trichrome Images");
inputDir = getDir("Choose the directory that contains 40x RGB Trichrome Images");
fileList = getFileList(inputDir); // gets the list of files in the input directory

print("Choose the directory where cropped images will be saved");
cropDir = getDir("Where should cropped images be saved?");

print("Choose the directory where deconvoluted images will be saved");
deconDir = getDir("Where should deconvoluted images be saved?");
fileName = "";

// notifies user of number of images to process
print(fileList.length + " images to process");
print("");

// loops through the file list and performs the 2 necessary functions on each
for(i=1; i<=fileList.length; i++){

	fileName = fileList[i-1]; // saves file name in var

	// begins cropping of image
	print("cropping image " + i);
	
	open(inputDir + fileList[i-1]); // opens files in the file list
	makeRectangle(345, 247, 470, 470); // creates rectangular selection
	run("Crop"); // crops image
	saveAs("tiff", cropDir + fileName); // saves image to the cropDir specified by user

	// begins deconvolution of image
	print("deconvoluting image " + i);
	
	run("Colour Deconvolution", "vectors=RGB hide"); // deconvolutes image
	selectWindow(fileName + "-(Colour_1)");
	fileName = fileName + ".red";
	saveAs("tiff", deconDir + fileName); // saves image to the cropDir specified by user

	close("*"); // closes currently open images

	// notifies user of image being processed
	print("Finished Processing image " + i);
	print("");
	
}

print("Files completed");
print("Please check the user-selected directories to ensure files are saved properly");
