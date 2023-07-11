A = imread("images/noisy.png");
B = rgb2gray(A);

figure
imshow(B)

kernel = [1 1 1
    1 1 1
    1 1 1] / 9

C = imfilter(B, kernel, "conv")

figure
imshow(C)

D = conv2(B, kernel)

figure
imshow(D)