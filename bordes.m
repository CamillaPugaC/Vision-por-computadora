
imagen = imread('down_4.jpg');


imagen_gris = rgb2gray(imagen);


[dx, dy] = gradient(double(imagen_gris));


magnitud_gradiente = sqrt(dx.^2 + dy.^2);


magnitud_gradiente = magnitud_gradiente / max(magnitud_gradiente(:));


figure();
imshow(imagen);
title('Imagen Original');

figure();
imshow(magnitud_gradiente);
title('Detección de Bordes');

