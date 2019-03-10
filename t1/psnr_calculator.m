function [PSNR] = psnr_calculator(raw, new)
%% psnr_calculator ʵ��PSNR�ļ���
% ���ߣ��˺�Ȼ
% ѧ�ţ�516030910401
% ���䣺dhrd

%% �ȼ���MSE���ټ���PSNR

% convert the input into double format
raw = double(raw);
new = double(new);

[row, line]=size(raw);
MSE=sum(sum((raw-new).^2))/(row*line);
PSNR=20*log10(255/sqrt(MSE));
end

