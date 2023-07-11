clc
clear
close all

% Carga de la imagen y conversión a uint8

A = imread("originales/lab05.png");
A = im2gray(A);
R = double(A);

% Calculo de FFT

R_fft  = fft2(R);
R_fft_shift = fftshift(R_fft);

% Cálculo de la magnitud del espectro
S_abs = abs(R_fft_shift);

figure

subplot(122)
imshow(20*log10(S_abs+1), []);
title("Espectro");

subplot(121)
imshow(R, []);
title("Imagen original");


G = 20*log10(S_abs+1);

% figure
% surf(G, 'EdgeColor', 'none')


G_min = G - min(G, [], "all");
max_G = max(G_min, [], "all");
Gs = 255 .* (G_min ./ max_G);
Gs = uint8(Gs);

imwrite(Gs, "espectro.png")
saveas(gcf, "imagen_espectro.png")

%% Filtrado de la imagen

filtro = imread("ejemplo_filtro_prueba.png");
filtro = im2gray(filtro);
filtro = im2double(filtro);


S_fft_shift = R_fft_shift .* filtro;
S_fft = ifftshift(S_fft_shift);
S = ifft2(S_fft);
S_mog = abs(S);


S_gamma  = S_mog .^ 1.5;

figure

subplot (121)
imshow(S_gamma, []);
title("Imagen filtrada")

subplot (122)
imshow(filtro, []);
title("Filtro")

a = strcat("imagen_espectro_filtrado_", datestr(now,'HH_MM_SS'), ".png");
saveas(gcf, a)




