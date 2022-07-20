%% COMPLETENESS IN TIME FOR THE CATALOG BY STEPP(1972)

% INPUT - 1. Magnitude values from deculstered catalog
%         2. Year values from declustered catalog

% BY RASHID SHAMS (29-JAN-2021)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% for 3.5>mag>=2.5

 a(1)=length(mag((mag>=2.5 & mag<3.5) & (yr>=1940 & yr<=2020)));
 a(2)=length(mag((mag>=2.5 & mag<3.5) & (yr>=1950 & yr<=2020)));
 a(3)=length(mag((mag>=2.5 & mag<3.5) & (yr>=1960 & yr<=2020)));
 a(4)=length(mag((mag>=2.5 & mag<3.5) & (yr>=1970 & yr<=2020)));
 a(5)=length(mag((mag>=2.5 & mag<3.5) & (yr>=1980 & yr<=2020)));
 a(6)=length(mag((mag>=2.5 & mag<3.5) & (yr>=1990 & yr<=2020)));
 a(7)=length(mag((mag>=2.5 & mag<3.5) & (yr>=2000 & yr<=2020)));
 a(8)=length(mag((mag>=2.5 & mag<3.5) & (yr>=2005 & yr<=2020)));
 a(9)=length(mag((mag>=2.5 & mag<3.5) & (yr>=2010 & yr<=2020)));
 a(10)=length(mag((mag>=2.5 & mag<3.5) & (yr>=2015 & yr<=2020)));
 
 time_bin=[5,10,15,20,30,40,50,60,70,80];
 j=1;k=1;
 
 for i=1:10
     std_1(j)=[sqrt(((a(i))/(time_bin(i))))/sqrt(time_bin(i))];
     sq_t_1(k)=[sqrt(((a(1))/(time_bin(i))))/sqrt(time_bin(i))];
     j=j+1;
     k=k+1;
 end
 
 p1=loglog(time_bin,std_1,'c*');
 hold on
 loglog(time_bin,sq_t_1,'c-');
 hold on
 grid on


  
% for mag>=3.5 & mag>4.5
    

 b(1)=length(mag((mag>=3.5 & mag<4.5) & (yr>=1940 & yr<=2020)));
 b(2)=length(mag((mag>=3.5 & mag<4.5) & (yr>=1950 & yr<=2020)));
 b(3)=length(mag((mag>=3.5 & mag<4.5) & (yr>=1960 & yr<=2020)));
 b(4)=length(mag((mag>=3.5 & mag<4.5) & (yr>=1970 & yr<=2020)));
 b(5)=length(mag((mag>=3.5 & mag>4.5) & (yr>=1980 & yr<=2020)));
 b(6)=length(mag((mag>=3.5 & mag<4.5) & (yr>=1990 & yr<=2020)));
 b(7)=length(mag((mag>=3.5 & mag<4.5) & (yr>=2000 & yr<=2020)));
 b(8)=length(mag((mag>=3.5 & mag<4.5) & (yr>=2005 & yr<=2020)));
 b(9)=length(mag((mag>=3.5 & mag<4.5) & (yr>=2010 & yr<=2020)));
 b(10)=length(mag((mag>=3.5 & mag<4.5) & (yr>=2015 & yr<=2020))); 
  
 time_bin=[5,10,15,20,30,40,50,60,70,80];
 m=1;n=1;
 
 for ii=1:10
     std_2(m)=[sqrt((b(ii))/(time_bin(ii)))/sqrt(time_bin(ii))];
     sq_t_2(n)=[sqrt((b(1))/(time_bin(ii)))/sqrt(time_bin(ii))];
     m=m+1;
     n=n+1;
 end
 
   
 p2=loglog(time_bin,std_2,'g*');
 hold on
 p2_t=loglog(time_bin,sq_t_2,'g-');  
hold on
   


% for mag>=4.5 & mag>5.5
    

 c(1)=length(mag((mag>=4.5 & mag<5.5) & (yr>=1940 & yr<=2020)));
 c(2)=length(mag((mag>=4.5 & mag<5.5) & (yr>=1950 & yr<=2020)));
 c(3)=length(mag((mag>=4.5 & mag<5.5) & (yr>=1960 & yr<=2020)));
 c(4)=length(mag((mag>=4.5 & mag<5.5) & (yr>=1970 & yr<=2020)));
 c(5)=length(mag((mag>=4.5 & mag<5.5) & (yr>=1980 & yr<=2020)));
 c(6)=length(mag((mag>=4.5 & mag<5.5) & (yr>=1990 & yr<=2020)));
 c(7)=length(mag((mag>=4.5 & mag<5.5) & (yr>=2000 & yr<=2020)));
 c(8)=length(mag((mag>=4.5 & mag<5.5) & (yr>=2005 & yr<=2020)));
 c(9)=length(mag((mag>=4.5 & mag<5.5) & (yr>=2010 & yr<=2020)));
 c(10)=length(mag((mag>=4.5 & mag<5.5) & (yr>=2015 & yr<=2020))); 
  
 time_bin=[5,10,15,20,30,40,50,60,70,80];
 o=1;p=1;
 
 for iii=1:10
     std_3(o)=[sqrt((c(iii))/(time_bin(iii)))/sqrt(time_bin(iii))];
     sq_t_3(p)=[sqrt((c(1))/(time_bin(iii)))/sqrt(time_bin(iii))];
     o=o+1;
     p=p+1;
 end
 
   
 p3=loglog(time_bin,std_3,'m*');
 hold on
 p3_t=loglog(time_bin,sq_t_3,'m-');  
hold on




% for mag>=5.5 & mag>6.5
    

 d(1)=length(mag((mag>=5.5 & mag<6.5) & (yr>=1940 & yr<=2020)));
 d(2)=length(mag((mag>=5.5 & mag<6.5) & (yr>=1950 & yr<=2020)));
 d(3)=length(mag((mag>=5.5 & mag<6.5) & (yr>=1960 & yr<=2020)));
 d(4)=length(mag((mag>=5.5 & mag<6.5) & (yr>=1970 & yr<=2020)));
 d(5)=length(mag((mag>=5.5 & mag<6.5) & (yr>=1980 & yr<=2020)));
 d(6)=length(mag((mag>=5.5 & mag<6.5) & (yr>=1990 & yr<=2020)));
 d(7)=length(mag((mag>=5.5 & mag<6.5) & (yr>=2000 & yr<=2020)));
 d(8)=length(mag((mag>=5.5 & mag<6.5) & (yr>=2005 & yr<=2020)));
 d(9)=length(mag((mag>=5.5 & mag<6.5) & (yr>=2010 & yr<=2020)));
 d(10)=length(mag((mag>=5.5 & mag<6.5) & (yr>=2015 & yr<=2020))); 
  
 time_bin=[5,10,15,20,30,40,50,60,70,80];
 q=1;r=1;
 
 for iiii=1:10
     std_4(q)=[sqrt((d(iiii))/(time_bin(iiii)))/sqrt(time_bin(iiii))];
     sq_t_4(r)=[sqrt((d(1))/(time_bin(iiii)))/sqrt(time_bin(iiii))];
     q=q+1;
     r=r+1;
 end
 
   
 p4=loglog(time_bin,std_4,'b*');
 hold on
 p4_t=loglog(time_bin,sq_t_4,'b-');  
hold on




% for mag>=6.5 & mag<7.5
    

 e(1)=length(mag((mag>=6.5 & mag<7.5) & (yr>=1940 & yr<=2020)));
 e(2)=length(mag((mag>=6.5 & mag<7.5) & (yr>=1950 & yr<=2020)));
 e(3)=length(mag((mag>=6.5 & mag<7.5) & (yr>=1960 & yr<=2020)));
 e(4)=length(mag((mag>=6.5 & mag<7.5) & (yr>=1970 & yr<=2020)));
 e(5)=length(mag((mag>=6.5 & mag<7.5) & (yr>=1980 & yr<=2020)));
 e(6)=length(mag((mag>=6.5 & mag<7.5) & (yr>=1990 & yr<=2020)));
 e(7)=length(mag((mag>=6.5 & mag<7.5) & (yr>=2000 & yr<=2020)));
 e(8)=length(mag((mag>=6.5 & mag<7.5) & (yr>=2005 & yr<=2020)));
 e(9)=length(mag((mag>=6.5 & mag<7.5) & (yr>=2010 & yr<=2020)));
 e(10)=length(mag((mag>=6.5 & mag<7.5) & (yr>=2015 & yr<=2020))); 
  
 time_bin=[5,10,15,20,30,40,50,60,70,80];
 s=1;t=1;
 
 for I=1:10
     std_5(s)=[sqrt((e(I))/(time_bin(I)))/sqrt(time_bin(I))];
     sq_t_5(t)=[sqrt((e(1))/(time_bin(I)))/sqrt(time_bin(I))];
     s=s+1;
     t=t+1;
 end
 
   
 p5=loglog(time_bin,std_5,'r*');
 hold on
 p5_t=loglog(time_bin,sq_t_5,'r-');  
hold on




% for mag>=7.5 & mag<8.5
    

 f(1)=length(mag((mag>=6.5 & mag<=8.5) & (yr>=1940 & yr<=2020)));
 f(2)=length(mag((mag>=6.5 & mag<=8.5) & (yr>=1950 & yr<=2020)));
 f(3)=length(mag((mag>=6.5 & mag<=8.5) & (yr>=1960 & yr<=2020)));
 f(4)=length(mag((mag>=6.5 & mag<=8.5) & (yr>=1970 & yr<=2020)));
 f(5)=length(mag((mag>=6.5 & mag<=8.5) & (yr>=1980 & yr<=2020)));
 f(6)=length(mag((mag>=6.5 & mag<=8.5) & (yr>=1990 & yr<=2020)));
 f(7)=length(mag((mag>=6.5 & mag<=8.5) & (yr>=2000 & yr<=2020)));
 f(8)=length(mag((mag>=6.5 & mag<=8.5) & (yr>=2005 & yr<=2020)));
 f(9)=length(mag((mag>=6.5 & mag<=7.5) & (yr>=2010 & yr<=2020)));
 f(10)=length(mag((mag>=6.5 & mag<=7.5) & (yr>=2015 & yr<=2020))); 
  
 time_bin=[5,10,15,20,30,40,50,60,70,80];
 u=1;v=1;
 
 for II=1:10
     std_6(u)=[sqrt((f(II))/(time_bin(II)))/sqrt(time_bin(II))];
     sq_t_6(v)=[sqrt((f(1))/(time_bin(II)))/sqrt(time_bin(II))];
     u=u+1;
     v=v+1;
 end
 
   
 p6=loglog(time_bin,std_6,'k*');
 hold on
 p6_t=loglog(time_bin,sq_t_6,'k-');  
hold on

legend([p1,p2,p3,p4,p5,p6,p6_t],'2.5=<M<3.5','3.5=<M<4.5','4.5=<M<5.5','5.5=<M<6.5','6.5=<M<7.5','7.5=<M<=8.5','1/sqrt(T)');
xlabel('Time Bins(Years)'); ylabel('Standard Deviation');
title('Completeness of data with respect to time')