%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross%
%2-8-2017%
%ENED 1090-004%
%Joni A. Torsella%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear; 
% Calculation of Slugs or Pounds from Kilograms%
Kg = input('Enter The mass in Kilograms(Kg): ');
%lbm or Slugs%
lbm = 1;
slugs = 2;
x = menu('Do you want to convert to "lbm" or "Slugs":','lbm','slugs');
switch x
    case 1
        pounds = Kg/0.45359237;
        fprintf('This Converted into Pounds from Kg would be: %0.3f \n',pounds);
    case 2
        slugconvert = Kg/14.5939;
          fprintf('This Converted into Slugs from Kg would be: %0.3f \n',slugconvert);
    otherwise 
        disp('Error:You did something wrong');
end 
