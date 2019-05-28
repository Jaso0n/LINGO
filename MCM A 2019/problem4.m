function fs = problem4(z)
k=0;
T=uint32(4294967296);
times = 0;
for i = 0 : T / z : T
     f=myff(i);
     if f < 0.67 * 2850
         k = k+1;
     end
     times = times + 1;
end
percent = k/times;
fs =  percent;
end
