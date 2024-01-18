% Puga Carbajal Camilla
x = linspace(0, 8*pi, 256);

seno_x = sin(x);


matriz = repmat(seno_x, 256, 1);


imshow(matriz, [], 'InitialMagnification', 'fit');
title('Matriz de seno(x)');

