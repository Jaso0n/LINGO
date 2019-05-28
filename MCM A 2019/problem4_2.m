clc
clear
N = floor(2^28);
k = 2^32*rand(1,N);
s =0;
for i =1:N
     if myff(k(i)) <0.58 * 2850
         s = s+1;
     end
end

percent = s/i;
