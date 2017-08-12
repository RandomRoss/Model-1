%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross%
%03-29-2017%
%ENED 1090-004%
%Joni A. Torsella%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
clear all 
A = [ -4 2 -7 6 8; 4 -5 8 -1 0; 0 -4 3 1 10; -8 7 -10 5 -2 ] ;
[rows,cols] = size(A);
count = 0; 
sum = 0;
for r=1:rows
    for c=r+1:cols
        sum=sum+A(r,c);    
    end 
    count=count+1;
end 
fprintf('The Sum of Above the Diagnals are %i',sum);