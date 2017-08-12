%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross%
%03-22-2017%
%ENED 1090-004%
%Joni A. Torsella%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc 
V = [7  9  -8  9  3  -8  -5  1  10  10  0  -7];
N1 = input('Specific Value:');
count = 0; 
for k = 1:length(V)
    if V(k)>N1
        count = count+1;
    end 
end 
fprintf('The number of entries larger than %i is:%i',N1,count); 