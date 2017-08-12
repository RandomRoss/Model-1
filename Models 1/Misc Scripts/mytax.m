%myTax.m%

%Calculation increase tax 1913.

income = input('Enter your income:  ');
 if income <= 50000
     tax = 0.01*income;
 elseif income <= 75000;
      tax = 0.02*income;
 elseif income <=100000
     tax = 0.03*income;
 else 
     tax = 0.06*income;
 end  
 fprintf('Your income tax is $%0.2f on an income of $%0.2f. \n');