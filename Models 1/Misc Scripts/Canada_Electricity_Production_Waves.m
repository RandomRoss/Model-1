clear all;
year = xlsread('UNdata_Export_Tide.xlsx','C2:C26');
quantity = xlsread('UNdata_Export_Tide.xlsx','E2:E26');
year = year-1990;
subplot(2,1,1);
plot(year,quantity,'r*');
title('United States Energy Consumption');
xlabel('Year');
ylabel('Quantity,(KWh, million)');
hold on 
yq1 = polyfit(year,quantity,2);
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

