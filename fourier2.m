% Puga Carbajal Camilla
x = linspace(0, 8 * pi, 256);
y = sin(x);
matrix = repmat(y, 256, 1);
figure();
imshow(matrix, []);
fourier = fft2(matrix);
figure()
imshow(log(1 + abs(fftshift(fourier))), []);
x = linspace(0, 8 * pi, 256);
y = sin(x);
matrix = repmat(y, 256, 1);
figure();
imshow(matrix, []);
fourier = fft2(matrix);
figure();
imshow(log(1 + abs(fftshift(fourier))), []);


