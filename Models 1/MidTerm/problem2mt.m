%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross%
%2-22-2017%
%ENED 1090-004%
%Joni A. Torsella%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Year = [1984 1988 1992 1996 2000 2004 2008 2012];
Quantity = [540   640   758   636   508   463   459   387];
plot(Year,Quantity,'r*')
hold on 
pv2 = polyfit(Year,Quantity,5);
yfit1 = polyval(pv2,Year);
plot(Year,yfit1);
title('Violent Crime Rates in the United States');
xlabel('Time in Years');
ylabel('Crime rate per 100,000 people');
disp(pv2);
