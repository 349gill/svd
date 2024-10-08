close all;
clear;

im = imread('lake.tif');

figure;
subplot(1, 4, 1);
imshow(im);
title("Full rank");

R = im2single(im(:, :, 1));
G = im2single(im(:, :, 2));
B = im2single(im(:, :, 3));

[U_R, S_R, V_R] = svd(R);
[U_G, S_G, V_G] = svd(G);
[U_B, S_B, V_B] = svd(B);
 
new_im = zeros(size(im, 1), size(im, 2), size(im, 3));

for i = 1:99
    new_im(:, :, 1) = new_im(:, :, 1) + S_R(i, i) * U_R(:, i) * transpose(V_R(:, i));
    new_im(:, :, 2) = new_im(:, :, 2) + S_G(i, i) * U_G(:, i) * transpose(V_G(:, i));
    new_im(:, :, 3) = new_im(:, :, 3) + S_B(i, i) * U_B(:, i) * transpose(V_B(:, i));

    if (rem(i, 25) == 0)
        subplot(1, 4, (i / 25) + 1);
        imshow(new_im);
        title("Rank = " + i);
    end
end