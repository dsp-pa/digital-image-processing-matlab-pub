
%% Carga de la imagen y conversión a uint8

A = imread("originales\lab04_a.png");
size(A)

A = im2gray(A);
size(A)


imshow(A)
R = double(A);



%% Generación de un kernel promediador y convolución con la imagen

K = ones(50,50);
S = conv2(R, K, "valid");


G_min = S - min(S, [], "all");
max_G = max(G_min, [], "all");
Gs = 255 .* (G_min ./ max_G);
Gs = uint8(Gs);

figure
imshow(Gs)

%% Generación de un kernel promediador y convolución con la imagen (full)

K = ones(50,50);
S = conv2(R, K, "full");


G_min = S - min(S, [], "all");
max_G = max(G_min, [], "all");
Gs = 255 .* (G_min ./ max_G);
Gs = uint8(Gs);

figure
imshow(Gs)

%% Generación de un kernel promediador y convolución con la imagen (same)

K = ones(50,50);
S = conv2(R, K, "same");


G_min = S - min(S, [], "all");
max_G = max(G_min, [], "all");
Gs = 255 .* (G_min ./ max_G);
Gs = uint8(Gs);

figure
imshow(Gs)

%% Generación de un kernel laplaciano

R = imread("originales\lab04_b.png");
R = im2gray(R);

% 1. Crear el kernel

K = [
  0,  1, 0;
  1, -4, 1;
  0,  1, 0
];


% 2. Convolución
S = conv2(R, K, "same");

figure
imshow(S)
title("Kernel")

% 3. Restarle a la imagen original el kernel generado

S = double(R) - 3*S; 

% 4. Ecualizar los valores de la imagen

G_min = S - min(S, [], "all");
max_G = max(G_min, [], "all");
Gs = 255 .* (G_min ./ max_G);
Gs = uint8(Gs);

figure
imshow(R)
title("Imagen original")

figure
imshow(Gs)
title("Imagen filtrada")

