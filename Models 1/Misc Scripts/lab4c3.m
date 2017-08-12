%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross%
%2-1-2017%
%ENED 1090-004%
%Joni A. Torsella%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear; 
%  %Part A%
t = 0:0.0004:6;
Psin = sin(2*pi*261.6*t);
plot(t,Psin);
xlabel('Time (s)');
ylabel('Amplitude(N/m^2)');
title('Plotting a simple Sine Wave');
xlim([0  0.019]);
%  %Part B%
sampling_rate = 10/0.0038;
% create audioplayer object from original signal
output_to_speaker = audioplayer(Psin,sampling_rate);   
% listen to original signal through your speaker
playblocking(output_to_speaker);  
%  %Part C%
Frequency = input('What is the Frequency:');
Period = 1/Frequency;
Time = input('What is the Time Played:');
t = 0:Period/10:Time;
Psin = sin(2*pi*Frequency*t);
plot(t,Psin);
xlabel('Time (s)');
ylabel('Amplitude(N/m^2)');
title('Plotting a simple Sine Wave');
xlim([0  0.019]);
Period = 1/Frequency;
plot(t,Psin);
xlim([0  5/Frequency]);
sampling_rate = 10/Period;
% create audioplayer object from original signal
output_to_speaker = audioplayer(Psin,sampling_rate);   
% listen to original signal through your speaker
playblocking(output_to_speaker);  
fprintf('Frequency is: %i Hz \n',Frequency);
fprintf('Period is: %i Sec \n',Period);
fprintf('Time Played is: %i Seconds \n',Time);
fprintf('sampling_rate is: %i Hz \n',sampling_rate);