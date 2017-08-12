%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross%
%2-1-2017%
%ENED 1090-004%
%Joni A. Torsella%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Part D%
Frequency = input('What is the Frequency:');
Period = 1/Frequency;
Time = input('What is the Time Played:');
t = 0:Period/10:Time;
PO = input('What is the Pascal:');
Tau = input('What is the Tau Value: ');
y = exp(-t/Tau);
Pssin = sin(2*pi*Frequency*t);
Psin = PO*y.*sin(2*pi*Frequency*t);
subplot(1,2,1);
plot(t,Pssin);
xlabel('Time (s)');
ylabel('Amplitude(N/m^2)');
title('Plotting a simple Sin Wave');
Period = 1/Frequency;
xlim([0  5/Frequency]);
subplot(1,2,2);
plot(t,Psin);
xlabel('Time (s)');
ylabel('Amplitude(N/m^2)');
title('Plotting a simple Dampening sound waves');
xlim([0  0.019]);
sampling_rate = 10/Period;
% create audioplayer object from original signal
output_to_speaker = audioplayer(Psin,sampling_rate);   
% listen to original signal through your speaker
playblocking(output_to_speaker); 
fprintf('Frequency is: %i \n',Frequency);
fprintf('Period is: %i \n',Period);
fprintf('Time Played is: %i \n',Time);
fprintf('sampling_rate is: %i \n',sampling_rate);
fprintf('Pascal is: %i \n',PO);
fprintf('Tau Value is: %i \n',Tau);