
% Code for CONVERTING MAGNITUDE(Ms,mb,ML) TO Mw(moment magntiude)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% INPUTS
  % magnitude values in a array(column)
  % mag_types where mag_type=1 is Ms, maf_type=2 is mb, mag_type=3 is ML...
  % mag_type=4 is Mw
% Ms to Mw by Scoridilus(2004)
% mb  to Mw by Scoridilus(2004)
%  ML to Mw  self developed relation using OR

% Written BY RASHID SHAMS (on 21-jan-2021)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Mw=magnitude_conversion

j=1;
[~,~,data]=xlsread('historical_catalog_kishanganj.xlsx');
mag_type=cell2mat(data(:,11));
mag=cell2mat(data(:,6));
Mw=[];
[m n]=size(mag);

for i=1:m
    
    if mag_type(i)==1
        
        if mag(i)<=6.1 & mag(i)>=3.0
            Mw(j)=0.67*mag(i)+2.07;
        else
            Mw(j)=0.99*mag(i)+0.08;   
        end
        
    elseif mag_type(i)==2
           Mw(j)=0.85*mag(i)+1.03;
     
    elseif mag(i)==3
           Mw(j)=0.9857*mag(i)+0.0096;   % self developed relation using OR
    
    else
        Mw(j)=mag(i);
    end
    j=j+1;
end
