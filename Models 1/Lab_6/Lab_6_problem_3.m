%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross%
%2-15-2017%
%ENED 1090-004%
%Joni A. Torsella%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
Sum = 0;
N = input('Enter The Value for N: ');
for k = 0:2:N
    Sum = N(N+1)/2
end 
fprintf('The Sum is: %s \n',Sum);