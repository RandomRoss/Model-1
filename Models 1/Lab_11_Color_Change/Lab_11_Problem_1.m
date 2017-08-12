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
NewPic = zeros(rows,cols); NewPic=uint8(NewPic);
Threshold = input('Enter A Threshold Value between 0 and 255: ');
while Threshold <=0 || Threshold >=255  
Threshold = input('Enter A Threshold Value between 0 and 255, Try Again: ');
end 
if Threshold >0 && Threshold <=255
for r=1:rows
    for c=1:cols
        if Pic(r,c) >= Threshold
            NewPic(r,c) = 255;
        elseif Pic(r,c) < Threshold
            NewPic(r,c) = 0;
        end
    end
end
else disp('Error, Please enter a correct Threshold Value');
end
imshow(Pic); title('Original Gray Scale Image')
figure; 
imshow(NewPic); title('Black and White Image')
