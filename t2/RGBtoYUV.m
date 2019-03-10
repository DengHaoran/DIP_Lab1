function [yuv] = RGBtoYUV(rgb)

R=rgb(:,:,1);
G=rgb(:,:,2);
B=rgb(:,:,3);

Y = 0.299*R + 0.587*G + 0.114*B;
cb = 0.56*(B-Y);
cr = 0.71*(R-Y);

yuv = cat(3, Y, cb, cr);
end