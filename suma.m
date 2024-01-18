pkg load image;
clear; clc;
im = imread('Cisco1g.jpg');
figure;
imshow(im);
im2 = imread('cisco2g.jpg');
figure;
imshow(im2);
disp('Tamaño de im ');
disp(size(im));
disp('Tamaño de im2 ');
disp(size(im2));
im3 = imresize(im2, size(im)(1:2));
suma = im + im3;
figure;
imshow(suma);

