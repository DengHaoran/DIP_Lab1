clear;
clc;

rgb = imread('Iris.tif');

hsi = RGBtoHSI(rgb);

imshow(hsi);