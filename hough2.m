%% Visión por Computadora 9CM11
% Puga Carbajal Camilla
% Ramírez Luna Gloria Karina
% Ejercicio Hough 1

clear;
clc;
%% I. Utilizando el ambiente de su elección (OpenCV, Octave, Matlab):

% Abra una imagen (en escala de grises)
im=imread("shapes.jpg");
figure()
im2 =rgb2gray(im);
imshow(im2)

% Aplique el algoritmo de Hough para encontrar líneas en la imagen
Borde = edge(im2,'canny');
figure()
imshow(Borde);

% Ilumine las líneas encontradas por el algoritmo, en la imagen original
 [H,T,R] = hough(Borde);
 % Encuentra picos significativos en la transformada de Hough
umbral_picos = 0.5 * max(H(:));
peaks = houghpeaks(H, 10, 'Threshold', umbral_picos);

% Obtiene las coordenadas de las líneas detectadas
lineas = houghlines(Borde, T, R, peaks, 'FillGap', 5, 'MinLength', 7);

% Dibuja las líneas en la imagen original
hold on;
 imshow(im)
for k = 1:length(lineas)
    xy = [lineas(k).point1; lineas(k).point2];
   
    plot(xy(:,1), xy(:,2), 'LineWidth', 2, 'Color', 'Cyan');
end
hold off;

%% II. Utilizando el ambiente de su elección (OpenCV, Octave, Matlab):

% Ilumina los círculos encontrados por el algoritmo en la imagen original
[centros, radios] = imfindcircles(Borde, [10 100]);  % Puedes ajustar estos valores según tus necesidades

% Dibuja los círculos en la imagen original
hold on;
viscircles(centros, radios, 'EdgeColor', 'r');
hold off;