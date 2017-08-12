clear all;
year = xlsread('UNdata_TotalElectricity.xlsx','C46:C67');
quantity = xlsread('UNdata_TotalElectricity.xlsx','E46:E67');
year = year-1991;
subplot(2,1,1);
plot(year,quantity,'r*');
title('United States Energy Consumption');
xlabel('Year');
ylabel('Quantity,(KWh, million)');
hold on 
yq1 = polyfit(year,quantity,1);
disp(yq1);
yfit1 = polyval(yq1,year);
plot(year,yfit1);
hold on 
residuals = quantity-yfit1;
subplot(2,1,2);
bar(year,residuals);
xlabel('Year');
ylabel('Residuals');
residual_norm = sqrt(sum(residuals.^2));
disp(residual_norm);

