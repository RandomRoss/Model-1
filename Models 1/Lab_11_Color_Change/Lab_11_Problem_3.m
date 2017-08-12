%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross%
%04-05-2017%
%ENED 1090-004%
%Joni A. Torsella%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
clear all 
N = input('Enter The Name of Your jpg: ','s');
X = imread(N,'jpg');
Pic = 0.299*X(:,:,1) + 0.587*X(:,:,2) + 0.114*X(:,:,3);
[rows,cols] = size(Pic);
%NewPic = zeros(cols,rows); 
Pic=uint8(Pic);
for r=1:rows
    for c=1:cols
      NewPic(rows-r+1,cols-c+1)=Pic(r,c);
    end
end
imshow(Pic); title('Original Gray Scale Image')
figure; 
imshow(NewPic); title('Rotated 180 Degrees Image')
