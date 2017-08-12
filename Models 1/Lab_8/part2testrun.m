%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross%
%03-08-2017%
%ENED 1090-004%
%Joni A. Torsella%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all 
fid = fopen('sequence_long.txt','r');
Seq = textscan(fid,'%1s');  
DNA = Seq{1};  %Creates a cell array of nucleotides.
countAAA = 0;
locAAA = 0;
countATC = 0; 
locATC = 0;
countCGG = 0; 
locCGG = 0; 
k = 1; 
while k <= length(DNA)-2
if strcmp(DNA(k),'A') && strcmp(DNA(k+1),'A') && strcmp(DNA(k+2),'A')
    countAAA=countAAA+1; 
    locAAA(countAAA)=k;
    k=k+2; 
elseif strcmp(DNA(k),'A') && strcmp(DNA(k+1),'T') && strcmp(DNA(k+2),'C')
    countATC=countATC+1;
    locATC(countATC)=k; 
    k=k+2;
elseif strcmp(DNA(k),'C') && strcmp(DNA(k+1),'G') && strcmp(DNA(k+2),'G')
    countCGG=countCGG+1;
    locCGG(countCGG)=k;
    k=k+2;
else
    k+1;
end
k=k+1;
end
fprintf('There was %i locations of AAA \n',length(locAAA));
fprintf('The first 10 locations of AAA are:');
fprintf('%i ',locAAA(1:10));
fprintf('\n There was %i locations of ATC \n',length(locATC));
fprintf('The first 10 locations of ATC are: \n');
fprintf('%i ',locATC(1:10));
fprintf('\n There was %i locations of CGG \n',length(locCGG));
fprintf('The first 10 locations of CGG are: \n');
fprintf('%i ',locCGG(1:10));
fclose(fid);  %Closes the text file

