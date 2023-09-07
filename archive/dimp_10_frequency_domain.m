[x, y] = meshgrid(linspace(0, 500), linspace(0, 500));

A = imread("images/b.jpg");
A = rgb2gray(A);

surf(A, 'EdgeColor','texturemap', 'FaceLighting','gouraud')

F = fft2(A);

F2 =  log(abs(fftshift(F)));

figure()
surf(F2, 'EdgeColor','texturemap', 'FaceLighting','gouraud')