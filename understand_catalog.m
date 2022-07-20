%% UNDERSTANDING EQ CATALOG

%% 1. To find out the no of shallow and deep EQs
% DEEP EQ DEPTH>=70 KM, SHALLOW EQ DEPTH<70 KM

depth=cell2mat(data(3:end,4));
count_depthmore=0;
count_depth=0;

for i=1:length(depth)
    if depth(i)<70
        count_depthmore=count_depthmore+1;
    elseif depth(i)>=70
        count_depth=count_depth+1; 
    end
end
fprintf('NO. OF SHALLOW EARTHQUAKES ARE %d\n',count_depthmore);
fprintf('NO. OF DEEP EARTHQAUKES ARE %d\n',count_depth);

%% 2. To find out the types of EQs

mag=cell2mat(data(3:end,6));
count1=0; count2=0; count3=0;

for i=1:length(mag)
    if mag(i)<=2
        count1=count1+1;
    elseif mag(i)<=4 && mag(i)>2
        count2=count2+1;
    elseif mag(i)>4
        count3=count3+1;
    end
end
fprintf('NO OF SMALL EQs are %d\n',count1);
fprintf('NO. OF EQs b/w Mw 4 and 2 are %d\n',count2);
fprintf('NO. OF MODERATE EQs(Mw>4) are %d\n',count3);

%% 3. Plot between depth and local magnitude

depth=cell2mat(data(3:end,4));
ML=cell2mat(data(3:end,5));
x=plot(depth,ML,'ro');
xlabel('Depth(Km)'); ylabel('ML(Local Magnitude');
title('Depth vs Local Magnitude');

%% 4. 

Mw=cell2mat(data(3:end,5));
for i=1:length(Mw)
    Mo(j)=10^((3*Mw(i)/2)+10.7);   
    j=j+1;
end

%% 5. PLotting and calculating cumulative seismic moment from Mw

j=1;
Mw=cell2mat(data(3:end,5));
for i=1:length(Mw)
    Mo(j)=10^((3*Mw(i)/2)+10.7);   
    j=j+1;
end

%% 6. Calculating and Plotting Cumulative seismic moment Mo vs Time

l=1;
for k=1:length(Mo)
    if k==1
       Mo_cum(l)=Mo(k);
    else
       Mo_cum(l)=Mo_cum(l-1)+Mo(k);
    end
    l=l+1;
end

Time=[1:322]';
y=plot(Time,Mo_cum,'c');
xlabel('Time(Months)');
ylabel('Cumulative Seismic Moment');
title('Cumulative Seismic Moment')