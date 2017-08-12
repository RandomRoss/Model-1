%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross%
%2-15-2017%
%ENED 1090-004%
%Joni A. Torsella%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%T has units of Celsius (Degrees C)%
%t or time has units of minutes%
%tstart=100-troom in degrees celsius%
%tau (time constant) is 50 and has units of minutes%
Troom = input('What is the Room tempature:');
tau1 = 50;  
Tstart = (100 - Troom) ;
for t = 0:5:3*tau1
    T = Tstart* exp(-t/tau1) + Troom;
    plot(t,T,'rd-');
    xlabel('Time(Minutes)')
    ylabel('Tempature (Celsius)')
    title('Coffee Temperature')
    axis([0 3*tau1 0 100])
    hold on 
    pause(0.5)
end 