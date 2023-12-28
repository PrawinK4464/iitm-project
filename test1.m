I = imread("BN.png");
G = rgb2gray(I);
[Gmag, Gdir] = imgradient(G);

radius = 5;
epsilon = 0.01;
F = imguidedfilter(Gmag, G, 'NeighborhoodSize', [radius, radius], 'DegreeOfSmoothing', epsilon);

figure;
subplot(2, 2, 1), imshow(G), title('Grayscale Image');
subplot(2, 2, 2), imshowpair(Gmag, Gdir, 'montage'), title('Gradient Mag and Dir');
subplot(2, 2, 3), imshow(F, []), title('Guided Filter');
