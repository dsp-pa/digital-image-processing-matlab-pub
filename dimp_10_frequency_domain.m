[x, y] = meshgrid(linspace(0, 500), linspace(0, 500));

A = imread("skel.png");
A = im2gray(A);

surf(A, 'EdgeColor', 'none', 'FaceLighting','gouraud', 'FaceColor', [0.5 0.5 0.5])

F = fft2(A);

F2 =  log(abs(fftshift(F)));

figure()
surf(F2, 'EdgeColor','texturemap', 'FaceLighting','gouraud')