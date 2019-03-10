clc;
clear;

rose = imread('rose.tif');
[row,line]=size(rose);


% down sampling by 2
rose2 = rose(1:2:row, 1:2:line);
rose2_recon = bilin(rose2,2);% bilinear

% down sampling by 4
rose4 = rose(1:4:row, 1:4:line);
rose4_recon = bilin(rose4,4);

% down sampling by 8
rose8 = rose(1:8:row, 1:8:line);
rose8_recon = bilin(rose8,8);

% down sampling by 16
rose16 = rose(1:16:row, 1:16:line);
rose16_recon = bilin(rose16,16);

% down sampling by 32
rose32 = rose(1:32:row, 1:32:line);
rose32_recon = bilin(rose32,32);

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

psnr2 = psnr_calculator(rose, rose2_recon)
psnr4 = psnr_calculator(rose, rose4_recon)
psnr8 = psnr_calculator(rose, rose8_recon)
psnr16 = psnr_calculator(rose, rose16_recon)
psnr32 = psnr_calculator(rose, rose32_recon)

psnr2 = psnr(rose2_recon,rose)
psnr4 = psnr(rose4_recon,rose)
psnr8 = psnr(rose8_recon,rose)
psnr16 = psnr(rose16_recon,rose)
psnr32 = psnr(rose32_recon,rose)
