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
Sum = 0; 
Count = 0;
for r = [1 3]
    for c = 1: cols
        Sum = Sum + A(r,c);
    end 
   
end
fprintf('The Sum of Rows 1 and 3 is %i',Sum);