%% 

A = [
0, 1, 1;
1, 1, 1;
1, 1, 0;
];

imshow(A)
imwrite(A, "lab_01_01.png")

% histogram(A)

%% 

B = [
0, 128, 1;
128, 255, 1;
1, 500, 0
];

C = uint8(B);

imshow(C)
imwrite(C, "lab_01_02.png")


%% 
C = uint8(B);

imshow(C)
imwrite(C, "lab_01_03.png")

%%

D = uint8([ 
    0, 255, 0; 
    400, 300, 500;
    0, 255, 0
    ]);

imshow(D)
imwrite(D, "lab_01_04.png")

%% 

F = imread("images\a.jpg");
G = im2gray(F);

histogram(G)
%imshow(G)

%% 

H = G + 10;
imshow(H)
imwrite(H, "imagen_mejorada.png")

%% 

imagen_clara = imread("images\b.jpg");
% I = imagen_clara - 100;


%%


A = imread("images\d.jpg");
histogram(A)


%%

histogram(imagen_clara)
% imshow(I)



%% 

A = imread("images\a.jpg");
B = im2gray(A);
C = double(B);

D = log(C  + 1 );

D_min = D - min(D, [], "all");
D_max = max(D_min, [], "all");

F = D_min ./ D_max;

imshow(F)
%%

imshow(J)


J_min = J - min(J, [], "all");

K = 255;

im  =  uint8(K *  (J_min ./ max(J_min, [], "all")));

imshow(im)














%%


A = imread("images\a.jpg");
B = im2gray(A);
C = double(B);

D = C .^ 0.65;

D_min = D - min(D, [], "all");
D_max = max(D_min, [], "all");

F = D_min ./ D_max;

histogram(F)
%imshow(F)