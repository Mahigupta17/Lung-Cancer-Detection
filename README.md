Cancer is one of most dangerous disease that causes deaths. Data obtained from Global Burden cancer shows that in 2012 there are 14.1 million cases of cancer in the world, with lung cancer occupies the first position with a percentage of 13%. 
While the number of cancer deaths was recorded 8.2 million deaths, with lung cancer cause of death in first place with a percentage of 19%. Lung cancer is a disease of abnormal cells multiplying and growing into a tumour. Cancer cells can spread 
out from the lungs through the blood stream or lymph fluid that surrounds the lung tissue. Generally, cancer cells often spread toward the center of the chest due to the natural flow of lymph. Metastasis occurs when cancer cells spread to other organs. 
The process of early detection of cancer plays an important role to prevent cancer cells from multiplying and spreading. Previous researches have been conducted for analyzing lung cancer such as using clustering method in microarray data, the detection 
of lung cancer with general image processing techniques in CT scan data with good results and accuracy. In this study we proposed and evaluated additional image segmentation methods in analyzing lung cancer using image processing 
techniques.

1. Image Processing Operations
This project consists of four major stages, the first stage is image acquisition, the second stage is Image Processing Techniques, third stage is consists of Image segmentation operations & the fourth or the last stage
is Feature extraction of any image.

Noise: We have detected Salt & Pepper Noise present in the Gray Level CT Scan Images. Noise tells unwanted information in digital images. Noise produces undesirable effects such as artifacts, unrealistic edges, 
unseen lines, corners, blurred objects and disturbs background scenes.

A) IMAGE ACQUISITION: It starts with the collection of CT Images of lung of different persons from the record or available data base. This CT Images are further used as input to the system. 
After this we can proceed for further operations. 

B) IMAGE ENHANCEMENT: It is a technique which is used to improve the quality of the image & to get the better image than the provided one, it provide clear, better & accurate parameter of the desired region. It improves the image quality 
and remove the noise from the image. For this purpose, noise removal from the images, image filtering techniques are use, which will helpful to detect cancer parameter during processing. CLAHE Method: It is Contrast-limited adaptive histogram 
equalization (CLAHE). It works on small areas of an image called tiles rather than the complete image. The surrounding tiles are blended using bilinear interpolation to remove the false boundaries. This algorithm can be used to improve image contrast.

C) CT Image Segmentation: The main aim of segmentation is to change the representation of an image into something that is easier to analyze. Thresholding: Thresholding is one of the most powerful tools for image segmentation. In this we have a gray scale image given
for a thresholding procedure it converts the RGB image into a Binary image i.e. black and white image which has only two shades ie black and white which represent the level 0 and 1 only the threshold value for this will be lies between 0 and I because it has only 
two levels., after achieving the threshold value; image will be segmented based on it.

D) Feature Extraction: Feature plays a very important role in the area of image processing.
