clc;
clear all;
close all;
msg=imread('Tulips.jpg');
cvr=imread('Koala.jpg');
msg=imresize(msg,[256 256]);
cvr=imresize(cvr,[256 256]);
figure,imshow(msg),title('msg img');
figure,imshow(cvr),title('cvr img');
[r c p]=size(msg);
for i=1:p
    for j=1:r
        for k=1:c
            rm=dec2bin(msg(j,k,i),8);
                        rc=dec2bin(cvr(j,k,i),8);
                        st=strcat(rc(1:4),rm(1:4));
                        stimg(j,k,i)=bin2dec(st);
        end
    end
end

figure,imshow(uint8(stimg));
title('stegimg');
imwrite(uint8(stimg),'strr.png','png');