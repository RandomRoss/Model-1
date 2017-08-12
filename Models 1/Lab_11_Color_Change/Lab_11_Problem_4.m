x=imread('Garden','jpg');
Pic = 0.299*x(:,:,1) + 0.587*x(:,:,2) + 0.114*x(:,:,3);
[rows cols]=size(Pic);
%Newpic=zeros(cols,rows); 
Pic=uint8(Pic);

for r=1:rows
    
    for c=1:cols
      
        
        Newpic(rows-r+1,cols-r+1)=Pic(r,c);
    end
end
imshow(Newpic);