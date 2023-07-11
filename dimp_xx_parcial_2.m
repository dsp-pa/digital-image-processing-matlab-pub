
A = [1, 3, 5; 120, 180, 255; 200, 170, 0];

g = log(A + 1);


max_g = max(g,[], 'all');

B = g / max_g;


C = floor(B * 255);

imshow(C)

%%
R = [
    0, 0, 1, 1 ;
    1, 2, 3, 4 ;
    100, 110, 120, 130;
    220, 230, 240, 250
];

S_025 = R .^ 0.25;
S_3 = R .^ 3;

max_g_s3 = max(S_3,[], 'all');
max_g_s025 = max(S_025,[], 'all');

S_025 / max_g_s025;
S_3 / max_g_s3;


floor((S_025 / max_g_s025) * 255)
floor((S_3 / max_g_s3) * 255) 

