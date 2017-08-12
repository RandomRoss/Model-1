%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross%
%04-19-2017%
%ENED 1090-004%
%Joni A. Torsella%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear; clc
V = [1 3 4 -2 6 -8 4 3 -9 2];
N = input('Enter a Value Here: ');
Place = 1;
Sum = 0 ;
for k = 1:length(V)
    if Sum < N
        Sum = Sum + V(Place);
        Place = Place+1; 
    end
end 
if Place <= 10; 
else Place == 11 
    fprintf('The Total summation is %i and the total entries was %i \n',Sum,Place-1)
    fprintf('The total summation did not reach the specified value of %i',N)
end