pkg load image;
clear; clc;
im = imread('hkg.jpg');
figure;
imshow(im);
media = 0;
desviacion = 25;
[r, c, ~] = size(im);
ruido = media + desviacion * randn(r, c);
ima = double(im) + ruido;
figure;
imshow(uint8(ima));

