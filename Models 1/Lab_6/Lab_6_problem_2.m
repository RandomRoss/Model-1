%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross%
%2-15-2017%
%ENED 1090-004%
%Joni A. Torsella%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
b = input('Enter the Value of b: ');
c = input('Enter the Value of c: ');
a = input('Enter the Value of a: ');
if 5 < b && b < 7 && c == 3
    	value = a+b/c;
fprintf('The calculated value of a+b/c is: %0.1f \n',value);
elseif (a >= -1 && a <=1) || (b < 4 && c == -3)
value = a - b^c;
fprintf('The calculated value of a-b^c is: %0.1f \n',value);
else    
value = a/b*c;
fprintf('The calculated value of a/b*c is: %0.1f \n',value);
end
