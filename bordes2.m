pkg load image;
imagen = imread('fig2.jpg');
figure();
imshow(imagen);
title('Imagen Original');
im = rgb2gray(imagen);

[gx gy] = imgradientxy(im,'sobel');
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






