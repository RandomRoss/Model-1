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
count2 = 0;
for k= 1:length(V)-1
    if V(k) > V(k+1)
        count = count+1;
    elseif V(k) < V(k+1)
        count1 = count1+1;
    else V(k) = V(k+1)
        count2 = count2+1;
    end 
end
fprintf('The Value Increases a Number of %i times \n ',count);
fprintf('The Value Decreases a Number of %i times \n ',count1);
fprintf('The Value Remains a Number of %i times \n ',count2);