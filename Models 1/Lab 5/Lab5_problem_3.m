%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross%
%2-8-2017%
%ENED 1090-004%
%Joni A. Torsella%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
Flip = randi([0 1],1,1);    %Generating one random integer of 1 or 0
fprintf('%d\n',Flip);
%Let the user know the outcome.
if Flip(1) == 1
    fprintf('The First coin fliped was Heads \n');
    if Flip(1) == 1 
        fprintf('The Second coin fliped was Heads \n');
    elseif Flip(1) == 0 
        fprintf('The second coin fliped was Tails \n');
    end 
elseif Flip(1) == 0
    fprintf('The coin flip was Tails \n');
        if Flip(1) == 1 
        fprintf('The Second coin fliped was Heads \n');
    elseif Flip(1) == 0 
        fprintf('The second coin fliped was Tails \n');
    end 
end
