function [PSNR] = psnr_calculator(raw, new)
%% psnr_calculator ʵ��PSNR�ļ���
% ���ߣ��˺�Ȼ
% ѧ�ţ�516030910401
% ���䣺dhrd

%% �ȼ���MSE���ټ���PSNR
[row, line]=size(raw);
MSE=sum(sum((raw-new).^2))/(row*line);
PSNR=20*log10(255/sqrt(MSE));
end

