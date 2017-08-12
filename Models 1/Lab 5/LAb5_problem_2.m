%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross%
%2-8-2017%
%ENED 1090-004%
%Joni A. Torsella%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear; 
Phlevel = input('What is the pH value(0 to 14):');
if Phlevel >=0 <7
    fprintf('The pH Value is acidic \n');
elseif Phlevel == 7
    fprintf('The pH Value is neutral \n');
elseif Phlevel <7 >=14
    fprintf('The pH Value is Basic\n');
else Phlevel >14 <0
    fprintf('Error: check your values');
end 
    