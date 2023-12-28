clc;

I = imread('ATH_un.PNG');
G = rgb2gray(I); 

lambda = 1600; 
[G_trend, G_cycle] = hpfilter(double(G), lambda);

% Display original image and filtered results
figure;
subplot(2, 2, 1), imshow(G), title('Grayscale Image');
subplot(2, 2, 2), plot(G), title('Original Signal');
subplot(2, 2, 3), plot(G_trend), title('Hodrick-Prescott Trend Component');
subplot(2, 2, 4), plot(G_cycle), title('Hodrick-Prescott Cyclical Component');
