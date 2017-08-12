%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross%
%04-19-2017%
%ENED 1090-004%
%Joni A. Torsella%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear; clc; 
M = [1 5 2 1 7; 2 4 4 5 3; 5 2 1 7 4];
R = input('Select the row:');
C = input('Select the column:');
Count = 0;
[rows,cols] = size(M);
if C > cols
fprintf('The Value Entered of %i for rows and %i for column exceeded the matrix dimetions',R,C)
elseif R > rows
elseif R <= rows
    H = M(R:size(M),1:C);
[row,col] = size(H);
for r =1:row
    for c = 1:col 
        if H(r,c) >= 5   
            Count = Count + 1;
        else 
        end
    end 
   
end
fprintf('There are %i values greater than or equal to 5 when R= %i and C= %i',Count,R,C)
else 
    fprintf('The Value Entered of %i for rows and %i for column exceeded the matrix dimetions',R,C)
end
