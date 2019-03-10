function [PSNR] = psnr_calculator(raw, new)
%% psnr_calculator 实现PSNR的计算
% 作者：邓浩然
% 学号：516030910401
% 邮箱：dhrd

%% 先计算MSE，再计算PSNR
[row, line]=size(raw);
MSE=sum(sum((raw-new).^2))/(row*line);
PSNR=20*log10(255/sqrt(MSE));
end

