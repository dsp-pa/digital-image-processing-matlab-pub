A = imread('lab03_a.jpg');
imshow(A)

%% 
B = im2gray(A)
imshow(B)

%% 

C = B + 200;
imshow(C)

max(C, [], "all")


%%

D = im2double(B);
F = D + 0.5
imshow(F)



%%

dicom
A = dicomread('ID_00b115bfe.dcm')
