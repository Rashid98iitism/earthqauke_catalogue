% Standard least squares method regression
% ployfit function fit x and y values to give p1 and p2 coefficients
% model is yy=p1(x)+p2 where p1 is slope and p2 is intercept
% BY RASHID SHAMS

p=polyfit(,xdata,ydata,n);
yy=p(1)+p(2)*xdata; 
p=[p(1) p(2)]
hold on
plot(xdata,ydata'o');
