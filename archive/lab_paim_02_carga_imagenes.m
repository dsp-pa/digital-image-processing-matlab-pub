%% Carga de la imagen y conversión a uint8

A = imread("originales\lab02.jpg");
size(A)

A = im2gray(A);
size(A)

histogram(A)

%% Impresión de valores mínimos y máximos

clc
min(A, [], "all")
max(A, [], "all")

%% Ajuste del valor mínimo

close all
clc
G = double(A);

figure
histogram(G)
title("Histograma antes de ajustar el valor mínimo")

G_min = G - min(G, [], "all");

figure
histogram(G_min)
title("Histograma después de ajustar el valor mínimo")


%% Ajuste del valor máximo

close all
clc

max_G = max(G_min, [], "all");

Gs = 255 .* (G_min ./ max_G);

Gs = uint8(Gs);

figure
histogram(Gs)
title("Histograma después de ajustar el valor máximo")

figure
imshow(Gs)

min(Gs, [], "all")
max(Gs, [], "all")

imwrite(Gs, "resultados\lab02.png")

%% Guardar la imagen original

close all
clc

mkdir("resultados")
delete("resultados\lab02.png")
imwrite(Gs, "resultados\lab02.png")
