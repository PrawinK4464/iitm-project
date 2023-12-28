I = imread("BN.png");
G = rgb2gray(I);
[Gmag, Gdir] = imgradient(G);

SE = strel('disk', 3); 
F = imdilate(Gmag, SE);

figure;
subplot(2, 2, 1), imshow(G), title('Grayscale Image');
subplot(2, 2, 2), imshowpair(Gmag, Gdir, 'montage'), title('Gradient Mag and Dir');
subplot(2, 2, 3), imshow(F, []), title('Morphological Dilation Filter');
