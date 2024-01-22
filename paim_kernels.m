%% Carga de la imagen y conversión a uint8

A = imread("originales\lab03_b.jpg");
A = im2gray(A);

%% Generación de un kernel promediador y convolución con la imagen

K = ones(21,1);
S = conv2(A, K, "full");


G_min = S - min(S, [], "all");
max_G = max(G_min, [], "all");
Gs = 255 .* (G_min ./ max_G);
Gs = uint8(Gs);

figure
imshow(Gs)

%% Generación de un kernel gaussiano

H = fspecial("gaussian", 15, 2.5);
S = conv2(A, H, "full");

G_min = S - min(S, [], "all");
max_G = max(G_min, [], "all");
Gs = 255 .* (G_min ./ max_G);
Gs = uint8(Gs);

figure
imshow(Gs)


%%

figure
imshow(B)


%% 


R = imread("originales\laplacian.png");
R = im2gray(R);

K = [0, 1, 0;
    1, -4, 1;
    0, 1, 0
    ];


S = conv2(R, K, "same");

figure
imshow(S)

S = double(R) - S; 

G_min = S - min(S, [], "all");
max_G = max(G_min, [], "all");
Gs = 255 .* (G_min ./ max_G);
Gs = uint8(Gs);

figure
imshow(Gs)

figure
imshow(R)