clear all;
yearg = xlsread('UNdata_TotalElectricity.xlsx','C24:C45');
quantityg = xlsread('UNdata_TotalElectricity.xlsx','E24:E45');
yearg = yearg-1991;
subplot(2,1,1);
plot(yearg,quantityg,'r*');
title('United States Energy Consumption');
xlabel('Year');
ylabel('Quantity,(KWh, million)');
hold on 
yq1g = polyfit(yearg,quantityg,3);
disp(yq1g);
yfit1g = polyval(yq1g,yearg);
plot(yearg,yfit1g);
hold on 
residualsg = quantityg-yfit1g;
subplot(2,1,2);
bar(yearg,residualsg);
xlabel('Year');
ylabel('Residuals');
residual_normg = sqrt(sum(residualsg.^2));
disp(residual_normg);
