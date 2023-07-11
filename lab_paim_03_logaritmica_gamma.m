%% Carga de la imagen y conversión a uint8

A = imread("originales\lab03_a.jpg");
size(A)

A = im2gray(A);
size(A)

histogram(A)

figure 
imshow(A)

%% Conversión a una imagen de formato doble

R = double(A);

%% Tranformación logarítmica

S = log(R + 1);

imshow(S)

%% Ajuste de los valores mínimos y máximos

G_min = S - min(S, [], "all");
max_G = max(G_min, [], "all");
Gs = 255 .* (G_min ./ max_G);
Gs = uint8(Gs);

imshow(Gs)

figure
histogram(Gs)


%% Transformación de gamma < 1


S = R .^ 0.85 ;

G_min = S - min(S, [], "all");
max_G = max(G_min, [], "all");
Gs = 255 .* (G_min ./ max_G);
Gs = uint8(Gs);

imshow(Gs)

figure
histogram(Gs)

%% Transformación de gamma > 1

A = imread("originales\lab03_b.jpg");
A = im2gray(A);

figure
imshow(A)


R = double(A);



S = R .^ 3 ;

G_min = S - min(S, [], "all");
max_G = max(G_min, [], "all");
Gs = 255 .* (G_min ./ max_G);
Gs = uint8(Gs);

figure
imshow(Gs)

figure
histogram(Gs)

