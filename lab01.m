A = ones(3,3)
imshow(A)


%%
B = zeros(3, 3)
imshow(B)


%%
A = [
    0, 1, 1;
    1, 1, 1;
    1, 1, 0;
    ];

imshow(A)
imwrite(A, "lab_01_a.tiff")

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

%%

%%

%%

%%

%%


%%

%%

%%

%%

%%

