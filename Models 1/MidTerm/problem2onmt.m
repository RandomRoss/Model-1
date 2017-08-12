%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross%
%2-8-2017%
%ENED 1090-004%
%Joni A. Torsella%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear; 
HR = input('What is the Patients Heart Rate (HR):');
BSL = input('What is the Patients Blood Sugar level(BSL):');
if HR <=0 || BSL < 0 
    fprintf('Something is Wrong here');
elseif HR >=130 || BSL <= 80 
    fprintf('The Patient is categorized as: At Risk');
elseif HR >=110 || BSL <=100
    fprintf('The Patient is categorized as: Borderline');
elseif HR >=0 || BSL >=100
    fprintf('The Patient is categorized as: Normal');

end 