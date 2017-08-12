%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross%
%2-8-2017%
%ENED 1090-004%
%Joni A. Torsella%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear; 
%temperature within the nuclear reactor%
temp = input('What is the Temperatue of the nuclear reactor:');
%pressure within nuclear reactor%
pressure = input('What is the Pressure of the nuclear reactor:');
if temp >=374 || pressure >= 164
    fprintf('The Nuclear reactor is in a Melt Down Category');
elseif temp >=365 || pressure >=160
    fprintf('The Nuclear reactor is in a Very Severe Category');
elseif temp >=355 || pressure >=155
    fprintf('The Nuclear reactor is in a Severe Category');
elseif temp >=345 || pressure >=150
    fprintf('The Nuclear reactor is in a Moderate Category');
elseif temp <345 || pressure <150
    fprintf('The Nuclear reactor is in a Normal Category');
end 