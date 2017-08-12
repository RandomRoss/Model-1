%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross%
%2-8-2017%
%ENED 1090-004%
%Joni A. Torsella%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear; 
Phlevel = input('What is the pH value(0 to 14):');
if Phlevel >=0 && Phlevel <7
    fprintf('The pH Value is acidic \n');
elseif Phlevel == 7
    fprintf('The pH Value is neutral \n');
elseif Phlevel >7 && Phlevel <=14
    fprintf('The pH Value is Basic \n');
elseif Phlevel >0 || Phlevel <14
    fprintf('Error: Check your pH Value');
end 