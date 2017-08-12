%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross%
%3-01-2017%
%ENED 1090-004%
%Joni A. Torsella%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Troom = input('What is the Room tempature:');
tau1 = 50;  
Tstart = (100 - Troom) ;
T = 100;
t = 0;
c = menu('Did you complete the assignment?' , 'Yes' , 'No');
while c == 2
while T > 40
     T = Tstart* exp(-t/tau1) + Troom;
    plot(t,T,'rd-');
    xlabel('Time(Minutes)')
    ylabel('Tempature (Celsius)')
    title('Coffee Temperature')
    axis([0 3*tau1 0 100])
    hold on 
    pause(0.5)
    t=t+5; 
end
c = menu('Did you complete the assignment?' , 'Yes' , 'No');
end
fprintf('it took %.2f for the coffee to cool to 40?',t);