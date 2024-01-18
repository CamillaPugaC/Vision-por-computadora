
% Puga Carbajal Camilla
im = imread("HK.jpg");

hCannyR = edge(im(:,:,1), 'canny');
hCannyG = edge(im(:,:,2), 'canny');
hCannyB = edge(im(:,:,3), 'canny');

hCanny = hCannyR | hCannyG | hCannyB;
figure()
imshow(im)
figure()
imshow(hCanny)

laplacianFilter = [0, 1, 0; 1, -4, 1; 0, 1, 0];

laplacianResultR = imfilter(double(im(:,:,1)), laplacianFilter);
laplacianResultG = imfilter(double(im(:,:,2)), laplacianFilter);
laplacianResultB = imfilter(double(im(:,:,3)), laplacianFilter);


laplacianResult = laplacianResultR + laplacianResultG + laplacianResultB;


laplacianResultBinary = laplacianResult > 1;

figure()
imshow(laplacianResultBinary)
