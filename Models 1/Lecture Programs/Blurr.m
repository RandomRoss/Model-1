%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross%
%03-22-2017%
%ENED 1090-004%
%Joni A. Torsella%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Pic = imread('Tree_Grayscale','jpg');
imshow (Pic);
title('Original');
Pic = double(Pic); 
NewPic = zeros(size(Pic));
[rows cols] = size(Pic);
for r = 3:rows-2
    for c = 3:cols-2
        NewPic(r,c) = mean(mean(Pic(r-2:r+2,c-2:c+2)))
    end
end
