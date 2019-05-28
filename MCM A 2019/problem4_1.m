clc
clear
T = 4294967296;
n = 25;
maxnum = 0;
i=1;
k = 0;
percent =0;
jd = rand+0.1;
j = 1;
for M = 1:jd:6
    delta = T/10^M;
    for i = 0: delta :T
        if myff(i)< 0.58 * 2850
            k = k+1;
        end
        maxnum = maxnum+1;
    end
    percent(j) = k/maxnum;
    j = j+1;
end
mean(percent);