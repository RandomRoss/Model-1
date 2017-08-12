clear all
fid=fopen('sequence_long.txt','r');
Seq = textscan(fid,'%1s'); 
DNA = Seq{1}; 
DNA(1:15)
DNA(1)
strcmp(DNA(1),'C')
strcmp(DNA(1),'A')
countAAA=0;
countATC=0;
countCGG=0;
LocAAA=0;
LocATC=0;
LocCGG=0;
k=1;
while k <= length(DNA)-2
    if strcmp(DNA(k),'A')&& strcmp(DNA(k+1),'A')&& strcmp(DNA(k+2),'A')
        countAAA=countAAA+1;
        LocAAA(countAAA)=k;
        k=k+2;
    elseif strcmp(DNA(k),'A')&& strcmp(DNA(k+1),'T')&& strcmp(DNA(k+2),'C')
        countATC=countATC+1;
        LocATC(countATC)=k;
        k=k+2;
    elseif strcmp(DNA(k),'C')&& strcmp(DNA(k+1),'G')&& strcmp(DNA(k+2),'G')
         countCGG=countCGG+1;
         LocCGG(countCGG)=k;
         k=k+2;
    else
        k+1;
       
    end
   
 k=k+1; 
end
fclose(fid);
fprintf('There were %i locations of AAA \n', length(LocAAA));
fprintf('There were %i locations of ATC \n', length(LocATC));
fprintf('There were %i locations of CGG \n', length(LocCGG));