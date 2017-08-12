clc;
clear all

x=imread('Garden','jpg');
Pic = 0.299*x(:,:,1) + 0.587*x(:,:,2) + 0.114*x(:,:,3);
[rows cols]=size(Pic);
%Newpic=zeros(cols,rows); 
Pic=uint8(Pic);

for r=1:cols
    
    for c=1:rows
      
        
        Newpic(r,c)=Pic(c,cols-r+1);
    end
end
imshow(Newpic);