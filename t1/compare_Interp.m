clear;
clc;

rose = imread('rose.tif');
[row,line]=size(rose);

% down sampling by 16
rose16 = imresize(rose, 1/16); 
rose16_recon = bilin(rose16,16);
rose16_recon_b = imresize(rose16, 16, 'bilinear');

psnr16 = psnr(rose16_recon,rose)
psnr16_b = psnr(rose16_recon_b,rose)

figure(1);
subplot(1,2,1);
imshow(rose16_recon);
subplot(1,2,2);
imshow(rose16_recon_b);

% down sampling by 32
rose32 = imresize(rose, 1/32); 
rose32_recon = bilin(rose32,32);
rose32_recon_b = imresize(rose32, 32, 'bilinear');

psnr32 = psnr(rose32_recon,rose)
psnr32_b = psnr(rose32_recon_b,rose)

figure(2);
subplot(1,2,1);
imshow(rose32_recon);
subplot(1,2,2);
imshow(rose32_recon_b);