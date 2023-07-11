%% Carga de la imagen y conversión a uint8

A = imread("originales\skel3.png");
A = im2gray(A);

figure
imshow(A)

%% 1. Cálculo del espectro

Fi = fft2(A);
logFi = 20 * log10(2 + Fi);

G_min = logFi - min(logFi, [], "all");
max_G = max(G_min, [], "all");
Gs = 255 .* (G_min ./ max_G);
Gs = uint8(Gs);

figure
imshow(Gs)

%% 2. Inversión del espectro
F = fftshift(Fi);
logF = 20 * log10(1 + F);

G_min = logF - min(logF, [], "all");
max_G = max(G_min, [], "all");
Gs = 255 .* (G_min ./ max_G);
Gs = uint8(Gs);

figure
imshow(Gs)
