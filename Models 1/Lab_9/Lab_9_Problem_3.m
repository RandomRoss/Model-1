%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross%
%03-22-2017%
%ENED 1090-004%
%Joni A. Torsella%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
V = [7  9  -8  9  3  -8  -5  1  10  10  0  -7];
max = V(1);
min = V(1);
for k= 2:length(V)
       if max < V(k)
           max = V(k);    
       elseif min > V(k)
           min = V(k);
       end 
end 
fprintf('The Largest Entry is %i \n ',max);
fprintf('The Smallest Entry is %i \n ',min);
