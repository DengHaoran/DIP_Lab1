function [out] = bilin(in, factor)
%% 灰度图双线性插值函数
% 作者：邓浩然
% 学号：516030910401
% 邮箱：dhrdeng@sjtu.edu.cn

%% 创建新图像。
[row,line] = size(in);
row_new = row*factor; 
line_new = line*factor;
out = zeros(row_new, line_new); 

%% 扩展原图为C
C = zeros(row+2,line+2);
C(2:row+1,2:line+1) = in;
C(1,2:line+1)=in(1,:);
C(row+2,2:line+1)=in(row,:);
C(2:row+1,1)=in(:,1);
C(2:row+1,line+2)=in(:,line);

C(1,1) = in(1,1);
C(1,line+2) = in(1,line);
C(row+2,1) = in(row,1);  
C(row+2,line+2) = in(row,line);

%% 插值
for zj = 1:line_new
    for zi = 1:row_new
        ii = (zi-1)/factor; jj = (zj-1)/factor;
        i = floor(ii); j = floor(jj);
        u = ii - i; v = jj - j;
        i = i + 1; j = j + 1;
        out(zi,zj) = (1-u)*(1-v)*C(i,j)+(1-u)*v*C(i,j+1)+u*(1-v)*C(i+1,j)+u*v*C(i+1,j+1);
    end
end

%% 量化为灰度
out = uint8(out);
end

