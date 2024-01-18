#Camilla Puga Carbajal 9CM11
pkg load image;
im = imread('HK.jpg');
figure();
imshow(im);
[dx, dy] = gradient(double(im));


magnitud_gradiente = sqrt(dx.^2 + dy.^2);


magnitud_gradiente = magnitud_gradiente / max(magnitud_gradiente(:));
figure();
imshow(magnitud_gradiente);
title('Detección de Bordes');
ima = rgb2gray(im);
[gx gy] = imgradientxy(ima,'sobel');
[gmag gdir] = imgradient(gx, gy);
figure();
imshow(gmag/(4*sqrt(2)));
figure();
imshow((gdir + 180)/360);
figure();
imshow((gx + 2)/2);
figure();
imshow((gy + 3)/2);
magnitud_gradiente = sqrt(dx.^2 + dy.^2);
