pkg load image;
im = imread('HK.jpg');
grises = rgb2gray(im);
HKCanny = edge(grises,'canny');
figure(1), edge(grises,'canny');
figure(2), imshow(im);
