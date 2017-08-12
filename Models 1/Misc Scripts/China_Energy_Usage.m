clear all;
yearc = xlsread('UNdata_TotalElectricity.xlsx','C2:C23');
quantityc = xlsread('UNdata_TotalElectricity.xlsx','E2:E23');
yearc = yearc-1991;
subplot(2,1,1);
plot(yearc,quantityc,'r*');
title('United States Energy Consumption');
xlabel('Year');
ylabel('Quantity,(KWh, million)');
hold on 
yq1c = polyfit(yearc,quantityc,2);
disp(yq1c);
yfit1c = polyval(yq1c,yearc);
plot(yearc,yfit1c);
hold on 
residualsc = quantityc-yfit1c;
subplot(2,1,2);
bar(yearc,residualsc);
xlabel('Year');
ylabel('Residuals');
residual_normc = sqrt(sum(residualsc.^2));
disp(residual_normc);

