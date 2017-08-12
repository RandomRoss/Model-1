clear all
 
temp = input ('What is the room temperature: ');
tau = 50;
temp1 = (100 - temp);
T = 100; 
t = 0;
completed = menu('Did you complete the assignment?' , 'Yes' , 'No')
while completed == 2
while T >= 40
    T = temp1*exp(-t/tau)+temp;
    plot (t,T,'r*')
    hold on 
    axis([ 0 3*tau 0 100])
    t = t+5;
end
completed = menu('Did you complete the assignment?', 'Yes' , 'No')
end
xlabel('Minutes') 
ylabel('Temperature of Coffee')
title('Temperature of Cofee Over Time')
fprintf(' The Coffee Cooled to 40 degrees Celsius with in %i minutes. Time to reheat your coffee \n', t);
close all
