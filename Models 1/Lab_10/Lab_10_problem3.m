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
Z = zeros(rows,cols);
Sum = 0; 
Count = 0;
for r =1:rows
    for c = 1:cols 
        if A(r,c) <= 4
            Z(r,c) = A(r,c);
        end
         fprintf('%i %i %i',Z(r,c));
    end 
     fprintf('\n');
   
end
