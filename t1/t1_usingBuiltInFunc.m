clc;
clear;

rose = imread('rose.tif');
[row,line]=size(rose);


% down sampling by 2
rose2 = imresize(rose, 1/2); 
rose2_recon = imresize(rose2, 2, 'bilinear');

% down sampling by 4
rose4 = imresize(rose, 1/4); 
rose4_recon = imresize(rose4, 4, 'bilinear');

% down sampling by 8
rose8 = imresize(rose, 1/8); 
rose8_recon = imresize(rose8, 8, 'bilinear');

% down sampling by 16
rose16 = imresize(rose, 1/16); 
rose16_recon = imresize(rose16, 16, 'bilinear');

% down sampling by 32
rose32 = imresize(rose, 1/32); 
rose32_recon = imresize(rose32, 32, 'bilinear');

figure(1);
subplot(1,2,1); imshow(rose);
subplot(1,2,2); imshow(rose);
figure(2);
subplot(1,2,1); imshow(rose2);
subplot(1,2,2); imshow(rose2_recon);
figure(3);
subplot(1,2,1); imshow(rose4);
subplot(1,2,2); imshow(rose4_recon);
figure(4);
subplot(1,2,1); imshow(rose8);
subplot(1,2,2); imshow(rose8_recon);
figure(5);
subplot(1,2,1); imshow(rose16);
subplot(1,2,2); imshow(rose16_recon);
figure(6);
subplot(1,2,1); imshow(rose32);
subplot(1,2,2); imshow(rose32_recon);

psnr2 = psnr(rose2_recon,rose)
psnr4 = psnr(rose4_recon,rose)
psnr8 = psnr(rose8_recon,rose)
psnr16 = psnr(rose16_recon,rose)
psnr32 = psnr(rose32_recon,rose)

psnr2 = psnr_calculator(rose, rose2_recon)
psnr4 = psnr_calculator(rose, rose4_recon)
psnr8 = psnr_calculator(rose, rose8_recon)
psnr16 = psnr_calculator(rose, rose16_recon)
psnr32 = psnr_calculator(rose, rose32_recon)
