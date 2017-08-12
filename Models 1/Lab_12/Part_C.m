%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross%
%2-15-2017%
%ENED 1090-004%
%Joni A. Torsella%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
clear all 
load weather
Year = 1974:2010; 
LowestTemp=[];
for i = 1974:1:2010
    Location=find(W.Year== i);
    Temp= W.TMIN(Location);
    LowestTemp(i-1973)=min(Temp);
end
plot(Year,LowestTemp);
title('lowest daily temperature for each year from 1974 to 2010 ')
xlabel('Year (1974-2010)');
ylabel('Temperature in Fahrenheit');
xlim([1974  2010])