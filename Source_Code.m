clc; clear; close all;

% Step 1: Load and Display Image
[filename, pathname] = uigetfile({'.png;.jpg;.bmp;.tif', 'Image Files'});
if isequal(filename, 0)
    disp('No file selected');
    return;
end
img = imread(fullfile(pathname, filename));
figure, imshow(img), title('Original Image');

% Step 2: Preprocessing
if size(img, 3) == 3
    imgGray = rgb2gray(img); % Convert to grayscale if RGB
else
    imgGray = img;
end
imgEnhanced = imadjust(imgGray); % Enhance contrast
figure, imshow(imgEnhanced), title('Enhanced Image');

% Step 3: Lung Segmentation (Example: Thresholding)
level = graythresh(imgEnhanced); % Otsu's threshold
bw = imbinarize(imgEnhanced, level);
bw = imfill(bw, 'holes'); % Fill holes in binary image
bw = bwareaopen(bw, 500); % Remove small objects
figure, imshow(bw), title('Segmented Lungs');

% Step 4: Extract Region Properties
stats = regionprops(bw, 'Area', 'Centroid', 'Eccentricity');
disp('Region Properties:');
disp(stats);

% Step 5: Mark Potential Cancerous Regions
cancerMask = bw .* (imgEnhanced > 200); % Example threshold for suspicious regions
cancerRegions = bwareaopen(cancerMask, 100); % Keep large suspicious regions
figure, imshow(cancerRegions), title('Potential Cancerous Regions');

% Step 6: Overlay Results
result = imoverlay(imgGray, bwperim(cancerRegions), [1 0 0]); % Highlight regions in red
figure, imshow(result), title('Detected Regions Highlighted');

disp('Lung cancer detection complete.');
