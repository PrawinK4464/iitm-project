clc;

I = imread('vir_30.png');
G = im2gray(I);
B = imgaussfilt(G,3.3);
[Gmag, Gdir] = imgradient(G);
F = imgaussfilt(Gmag, 3.3);

figure;
subplot(2, 3, 1), imshow(G), title('Image');
subplot(2, 3, 2), imshowpair(Gmag, Gdir, 'montage'), title('Gradient Magnitude and Direction');
subplot(2, 3, 3), imshow(B,[]), title('Gaussian Filtering')
subplot(2, 3, 4), imshow(F, []), title('1st der Gaussian Filtering');

[Gmag1, Gdir1] = imgradient(F);
B1 = imgaussfilt(Gmag1, 3.3);
subplot(2, 3, 5), imshow(B1, []), title('2nd der Gaussian Filtering');
 
% [Gmag2, Gdir2] = imgradient(B);
% C = imgaussfilt(Gmag2, 3.3);
% subplot(2, 3, 5), imshow(C, []), title('4th der');
% 
% [Gmag3, Gdir3] = imgradient(C);
% D = imgaussfilt(Gmag3, 3.3);
% subplot(2, 3, 6), imshow(D, []), title('6th der');
