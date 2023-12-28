clc;

I = imread('Ti_2.png');
G = rgb2gray(I); 
B = medfilt2(G,[3,3]);
[Gmag, Gdir] = imgradient(G);
F = medfilt2(Gmag, [3, 3]); 

figure;
subplot(2, 3, 1), imshow(G), title('Grayscale Image');
subplot(2, 3, 2), imshowpair(Gmag, Gdir, 'montage'), title('Gradient Magnitude and Direction');
subplot(2, 3, 3), imshow(B,[]), title('Median Filtering');
subplot(2, 3, 4), imshow(F,[]), title('1st der Median Filter');

[Gmag1, Gdir1] = imgradient(F);
B1 = medfilt2(Gmag1,[3,3]);
subplot(2, 3, 5), imshow(B1, []), title('2nd der Median Filter ');

% [Gmag2, Gdir2] = imgradient(B);
% C = medfilt2(Gmag2,[3,3]);
% subplot(2, 3, 5), imshow(C, []), title('Third Gradient ');
% 
% [Gmag3, Gdir3] = imgradient(C);
% D = medfilt2(Gmag3,[3,3]);
% subplot(2, 3, 6), imshow(D, []), title('Fourth Gradient ');