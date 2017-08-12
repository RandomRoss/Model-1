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