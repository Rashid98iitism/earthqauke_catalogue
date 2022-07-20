cum_N=[];
j=1;k=1;
for i=1:length(mag)
    N(j)=10.^(4.7-0.2511*mag(i));
    if i==1
        cum_N(k)=N(j);
    else
        cum_N(k)=N(j)+cum_N(k-1);
    end
    j=j+1;k=k+1;
end

plot(mag,N,'ro');


%%

j=1; x=2.5:0.1:8.5;
for i=1:length(x)
     no(j)=sum(mag==x(i));
     j=j+1;
end
plot(x,no,'ro');
