%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%myTrig.m%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Ask user for input%
disp('We will calculate the sine of an angle.');
choice = input('Enter 0 for degrees and 1 for readians: ');
angle = input('Enter your angle:  ');

%Calculate sine of angle.
if choice==0
    angle = input('Enter your angle:  ');
    answer = sind(angle);
    fprintf('The sin(%i)= %0.4f \n',angle,answer);
elseif choice==1
    angle = input('Enter your angle in radians:  ');
      answer = sind(angle);
    fprintf('The sin(%0.04f= %0.4f \n',angle,answer);
else 
    disp('You entered an incorrect Value!');
end 