%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross%
%03-08-2017%
%ENED 1090-004%
%Joni A. Torsella%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fid = fopen('sequence_long.txt','r'); 
Seq = textscan(fid,'%1s');  

DNA = Seq{1};  %Creates a cell array of nucleotides.
strcmp(DNA(1),'A')
fclose(fid);  %Closes the text file
