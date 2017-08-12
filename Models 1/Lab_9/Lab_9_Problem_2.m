%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross%
%03-22-2017%
%ENED 1090-004%
%Joni A. Torsella%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc 
V = [7  9  -8  9  3  -8  -5  1  10  10  0  -7];
count = 0;
count1 = 0;
for k = 1:length(V)
    if V(k)>= 0
        count = count+V(k);
    else V(k)<= 0 
        count1 = count1+V(k);
    end 
end 
fprintf('The sum of all the Posotive entries in V is %i \n ',count);
fprintf('The sum of all the Negative entries in V is %i',count1);