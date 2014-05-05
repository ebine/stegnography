clc;
clear all
close all;
a=imread('strr.png');
a=imresize(a,[256 256]);
[r c p]=size(a);
for i=1:r
    for j=1:c
        for k=1:p
            d=dec2bin(a(i,j,k),8);
            f=strcat(d(5:8),d(1:4));
            recimg(i,j,k)=bin2dec(f);
             end
    end
end

figure,imshow(uint8(recimg));
title('reconstructed img');
imwrite(uint8(recimg),'steg.png','png');