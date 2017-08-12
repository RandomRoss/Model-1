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
MF = input('What is the Modulated Frequency:');
PO = input('What is the Pascal:');
Psin = PO*sin(2*pi*MF*t).*sin(2*pi*Frequency*t);
plot(t,Psin);
xlabel('Time (s)');
ylabel('Amplitude(N/m^2)');
title('Plotting a Amplitude Modulation');
xlim([0  0.019]);
Period = 1/Frequency;
plot(t,Psin);
xlim([0  5/Frequency]);
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
fprintf('Moduated Frequency is: %i \n',MF);