%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Lecture 4 Jan 29 2017
% Problem 1
% Solve for roots of quadratic Eq.
% x= (-b +- sqrt(b^2 -4ac))/(2a)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
disp('This Program solves for the solutions to a quadratic equation');
a = input('Enter Coefficent a:  ');
b = input('Enter Coefficent b:  ');
c = input('Enter Coefficent c:  ');

X1 = (-b - sqrt(b^2-4*a*c))/(2*a);
X2 = (-b + sqrt(b^2-4*a*c))/(2*a);

fprintf('Root 1 is %i. \n',X1);
%fprintf('Root 2 is %i. \n',X2);
    