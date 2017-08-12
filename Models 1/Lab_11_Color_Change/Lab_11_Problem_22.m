%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross%
%04-05-2017%
%ENED 1090-004%
%Joni A. Torsella%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
clear all 
X = imread('Garden','jpg');
Pic = 0.299*X(:,:,1) + 0.587*X(:,:,2) + 0.114*X(:,:,3);
[rows cols] = size(Pic);
%NewPic = zeros(cols,rows); 
Pic=uint8(Pic);
for r=1:cols
    
    for c=1:rows
        
      NewPic(r,c)=Pic(c,cols-r+1);
    end
    
end
imshow(NewPic);
