clc;

I = imread("Ti_2.png");
G = rgb2gray(I);

F0 = medfilt2(G,[3,3]);
B0 = medfilt2(F0,[3,3]);

[Gmag,Gdir] = imgradient(G);
F = medfilt2(Gmag,[3,3]);
B = medfilt2(F,[3,3]);

[Gmag1,Gdir1] = imgradient(B);
F1 = medfilt2(Gmag1,[3,3]);
B1 = medfilt2(F1,[3,3]);

figure;
subplot(2,3,1),imshow(G),title('Grayscale Image');
subplot(2,3,2),imshowpair(Gmag,Gdir,'montage'),title('Gradient Mag and Dir');
subplot(2,3,3),imshow(B0,[]),title('MF with Median Filtering')
subplot(2,3,4),imshow(B,[]),title('1st der MF with Median Filtering ');
subplot(2,3,5),imshow(B1,[]),title('2nd der MF with Median Filtering');
