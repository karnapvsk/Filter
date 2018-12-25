RGB = imread('gingerbread.jpg');
I = rgb2gray(RGB);

%Box filter
I1 = imboxfilt(I,3);
I2 = imboxfilt(I,7);
%Gaussian filter 
Ig1 = imgaussfilt(I, 2);
%Median filter
Noise = imnoise(I,'salt & pepper',0.02);
Median = medfilt2(Noise);

%Show picture
subplot(2,2,1)
imshow(I)
title('Original Image');
subplot(2,2,2)
imshow(I1)
title('Box filtered image, Matrix 3x3')
subplot(2,2,3)
imshow(I2)
title('Box filtered image, Matrix 7x7')
subplot(2,2,4)
imshow(Ig1)
title('Gaussian filtered image, \sigma = 2')

figure

subplot(1,2,1)
imshow(Noise)
title('Image with salt and pepper')
subplot(1,2,2)
imshow(Median)
title('Median filtered image')